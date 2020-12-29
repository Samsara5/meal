package com.wjw.meal.Service.impl;

import com.wjw.meal.Dao.StoreMapper;
import com.wjw.meal.Pojo.Store;
import com.wjw.meal.Pojo.StoreExample;
import com.wjw.meal.Service.EmployeeService;
import com.wjw.meal.Service.StoreService;
import com.wjw.meal.Utils.ExcelUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import org.springframework.web.multipart.MultipartFile;

import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class StroeServiceImpl implements StoreService {

    @Autowired
    StoreMapper storeMapper;

    @Autowired
    EmployeeService employeeService;

    @Override
    public void addStore(Store store) {
        store.setStroeid(UUID.randomUUID().toString());
        store.setStroetime(new Date());
        store.setStroestate(1);
        storeMapper.insert(store);
    }

    @Override
    public void importStoresByExcel(MultipartFile file) {
        List<String> storetype = new ArrayList<>();
        storetype.add("meat");
        storetype.add("vegetable");
        storetype.add("drink");
        ExcelUtils sheet;
        for (String sheetname : storetype) {
            sheet = new ExcelUtils(file, sheetname);
            if (sheetname.equals("meat")) {
                Map<String, List<String>> meatinfo = sheet.readExcelData();
                for (int i = 1; i < meatinfo.size(); i++) {
                    List<String> cloumdatameat = meatinfo.get(String.valueOf(i));
                    try {
                        Store store = new Store();
                        //生成ID
                        store.setStroeid(UUID.randomUUID().toString());
                        //材料名称
                        store.setStroename(cloumdatameat.get(0));
                        //数量
                        store.setStroenumber(cloumdatameat.get(1));
                        //单位
                        store.setUnit(cloumdatameat.get(2));
                        //入库时间
                        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");//定义一个formate
                        Date date = simpleDateFormat.parse(cloumdatameat.get(3));//将formate型转化成Date数据类型
                        store.setStroetime(date);
                        //所属类型
                        store.setStroestate(Integer.valueOf(cloumdatameat.get(4)));
                        //剩余数量
                        store.setStoreman(cloumdatameat.get(5));
                        //入库人
                        store.setStoreman(employeeService.getEmployeeByName(cloumdatameat.get(6)).getEid());
                        storeMapper.insert(store);
                    } catch (Exception e) {
                        e.printStackTrace();
                        Assert.isTrue(false, meatinfo.get("erro").get(0));
                    }
                }
            }
            if (sheetname.equals("vegetable")) {
                Map<String, List<String>> vegetableinfo = sheet.readExcelData();
                for (int i = 1; i < vegetableinfo.size(); i++) {
                    List<String> cloumdatameat = vegetableinfo.get(String.valueOf(i));
                    try {
                        Store store = new Store();
                        //生成ID
                        store.setStroeid(UUID.randomUUID().toString());
                        //材料名称
                        store.setStroename(cloumdatameat.get(0));
                        //数量
                        store.setStroenumber(cloumdatameat.get(1));
                        //单位
                        store.setUnit(cloumdatameat.get(2));
                        //入库时间
                        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");//定义一个formate
                        Date date = simpleDateFormat.parse(cloumdatameat.get(3));//将formate型转化成Date数据类型
                        store.setStroetime(date);
                        //所属类型
                        store.setStroestate(Integer.valueOf(cloumdatameat.get(4)));
                        //剩余数量
                        store.setStoreman(cloumdatameat.get(5));
                        //入库人
                        store.setStoreman(employeeService.getEmployeeByName(cloumdatameat.get(6)).getEid());
                        storeMapper.insert(store);
                    } catch (Exception e) {
                        e.printStackTrace();
                        Assert.isTrue(false, vegetableinfo.get("erro").get(0));
                    }
                }
            }
            if (sheetname.equals("drink")) {
                Map<String, List<String>> drinkinfo = sheet.readExcelData();
                for (int i = 1; i < drinkinfo.size(); i++) {
                    List<String> cloumdatameat = drinkinfo.get(String.valueOf(i));
                    try {
                        Store store = new Store();
                        //生成ID
                        store.setStroeid(UUID.randomUUID().toString());
                        //材料名称
                        store.setStroename(cloumdatameat.get(0));
                        //数量
                        store.setStroenumber(cloumdatameat.get(1));
                        //单位
                        store.setUnit(cloumdatameat.get(2));
                        //入库时间
                        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");//定义一个formate
                        Date date = simpleDateFormat.parse(cloumdatameat.get(3));//将formate型转化成Date数据类型
                        store.setStroetime(date);
                        //所属类型
                        store.setStroestate(Integer.valueOf(cloumdatameat.get(4)));
                        //剩余数量
                        store.setStoreman(cloumdatameat.get(5));
                        //入库人
                        store.setStoreman(employeeService.getEmployeeByName(cloumdatameat.get(6)).getEid());
                        storeMapper.insert(store);
                    } catch (Exception e) {
                        e.printStackTrace();
                        Assert.isTrue(false, drinkinfo.get("erro").get(0));
                    }
                }
            }
        }

    }

    @Override
    public void delStoreByid(String id) {
        storeMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void delStoresByIds(List<String> ids) {
        StoreExample example = new StoreExample();
        example.createCriteria().andStroeidIn(ids);
        storeMapper.deleteByExample(example);
    }

    @Override
    public void updateStrore(Store store) {
        StoreExample example = new StoreExample();
        example.createCriteria().andStroeidEqualTo(store.getStroeid());
        storeMapper.updateByExampleSelective(store, example);
    }

    @Override
    public List<Store> getAllStrores() {
        return storeMapper.selectByExample(null);
    }

    //通过store去更新菜单 传入Excel
    @Override
    public void initMenuByStore() {

    }
}
