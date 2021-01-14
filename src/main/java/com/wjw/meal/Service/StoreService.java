package com.wjw.meal.Service;

import com.wjw.meal.Pojo.Store;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;

public interface StoreService {

    void addStore(Store store);

    void importStoresByExcel(MultipartFile file);

    void delStoreByid(String id);

    void delStoresByIds(List<String> ids);

    void updateStrore(Store store);

    List<Store> getAllStrores();

    Store getStoreByName(String name);

    Map<String, String> getStoreNames();

    void initMenuByStore();
}
