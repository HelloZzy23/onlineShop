package com.service;

import com.pojo.Commodity;

import java.util.List;

public interface CommodityService {
    int delete(int comId);
    List<Commodity>queryAllCommodity();
    List<Commodity> searchCommodity(String introduce);

    Commodity queryById(int comId);

    int updateCommodity(Commodity commodity);

    int addCommodity(Commodity commodity);
}
