package com.wjw.meal.Utils;


import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.web.multipart.MultipartFile;

import java.io.ByteArrayInputStream;

import java.io.InputStream;
import java.text.DecimalFormat;
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

    public String transferToString(String originString){
        String regex="^((\\d+.?\\d+)[Ee]{1}(\\d+))$";
        Pattern pattern = Pattern.compile(regex);
        Matcher m = pattern.matcher(originString);
        DecimalFormat df = new DecimalFormat("#.##");
        originString = df.format(Double.parseDouble(originString));
        return originString;
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
                    String cell = row.getCell(j).toString();
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