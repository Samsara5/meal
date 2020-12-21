package com.wjw.meal.Utils;


import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.web.multipart.MultipartFile;

import java.io.ByteArrayInputStream;

import java.io.InputStream;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Author: 灵枢
 * Date: 2018/12/05
 * Time: 17:21
 * Description:读取Excel数据
 */
public class ExcelUtils {
    private XSSFSheet sheet;

    public ExcelUtils(MultipartFile file, String sheetName){
        InputStream inputStream = null;
        try {
            byte[] bytes = file.getBytes();
            inputStream = new ByteArrayInputStream(bytes);
            XSSFWorkbook sheets = new XSSFWorkbook(inputStream);
            //获取sheet
            sheet = sheets.getSheet(sheetName);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 根据行和列的索引获取单元格的数据
     * @param row
     * @param column
     * @return
     */
    public String getExcelDateByIndex(int row,int column){
        XSSFRow row1 = sheet.getRow(row);
        String cell = row1.getCell(column).toString();
        return cell;
    }

    /**
     * 根据某一列值为“******”的这一行，来获取该行第x列的值
     * @param caseName
     * @param currentColumn 当前单元格列的索引
     * @param targetColumn 目标单元格列的索引
     * @return
     */
    public String getCellByCaseName(String caseName,int currentColumn,int targetColumn){
        String operateSteps="";
        //获取行数
        int rows = sheet.getPhysicalNumberOfRows();
        for(int i=0;i<rows;i++){
            XSSFRow row = sheet.getRow(i);
            String cell = row.getCell(currentColumn).toString();
            if(cell.equals(caseName)){
                operateSteps = row.getCell(targetColumn).toString();
                break;
            }
        }
        return operateSteps;
    }

    public String verifyCells(Cell cell){
        if (cell == null) {
            return null;
        }
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String value = "";
        switch (cell.getCellType()) {
            case 0:// 表示数字型和日期类型
                //如果为时间格式的内容
                if (HSSFDateUtil.isCellDateFormatted(cell)) {
                    //注：format格式 yyyy-MM-dd hh:mm:ss 中小时为12小时制，若要24小时制，则把小h变为H即可，yyyy-MM-dd HH:mm:ss
                    value = sdf.format(HSSFDateUtil.getJavaDate(cell.getNumericCellValue())).toString();
                    break;
                } else {
                    value = String.valueOf(cell.getNumericCellValue());
                }
                break;
            case 1:// 字符串类型
                value = cell.getStringCellValue();
                break;
            case 2:// 公式型
                try {
                    value = String.valueOf(cell.getNumericCellValue());
                } catch (IllegalStateException e) {
                    value = String.valueOf(cell.getRichStringCellValue());
                }
                //value = cell.getCellFormula() + "";
                break;
            case 3:// 空值
                value = "";
                break;
            case 4:// 布尔型
                value = cell.getBooleanCellValue() + "";
                break;
            case 5:// 错误
                value = "非法字符";
                break;
            default:
                value = "未知类型";
                break;
        }
        return value;
    }
    //打印excel数据
    public Map<String,List<String>> readExcelData(){
        //获取行数
        int errorow = 0;
        int errocoloumn = 0;
        Map<String,List<String>> res = new HashMap<>();
        List<String> rowInfo;
        int rows = sheet.getPhysicalNumberOfRows();
        try {
            for(int i=0;i<rows;i++){
                errorow = i+1;
                //获取列数
                rowInfo = new ArrayList<>();
                XSSFRow row = sheet.getRow(i);
                int columns = row.getPhysicalNumberOfCells();
                for(int j=0;j<columns;j++){
                    errocoloumn = j+1;
                    String cell = verifyCells(row.getCell(j));
                    rowInfo.add(cell);
                }
                res.put(String.valueOf(i),rowInfo);
            }
        }catch (Exception e){
            e.printStackTrace();
            String erroMessage = "导入失败，发生于：第"+errorow+"行"+"第"+errocoloumn+"列,请检查数据";
            List<String> erro = new ArrayList<>();
            erro.add(erroMessage);
            res.put("erro",erro);
            return res;
        }
        return res;
    }

}