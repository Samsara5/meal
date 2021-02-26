package com.wjw.meal.Service;

import com.github.pagehelper.PageInfo;
import com.wjw.meal.Pojo.Store;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;

public interface StoreService {

    void addStore(Store store);

    void importStoresByExcel(MultipartFile file);

    void delStoreById(String id);

    void delStoresByIds(List<String> ids);

    void updateStore(Store store);

    PageInfo getAllStores(Integer pn, Integer pageSize);

    Store getStoreByName(String name);

    Map<String, String> getStoreNames();

    PageInfo getStoreByType(Integer typeId,Integer pn,Integer pageSize);

    void initMenuByStore();
}
