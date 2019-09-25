package com.service.impl;

import com.dao.CommodityDao;
import com.pojo.Commodity;
import com.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommodityServiceImpl implements CommodityService {
    //将CommodityDao作为ComodityServiceImpl的私有变量，并装配置beamFactory
    @Autowired
    private CommodityDao commodityDao;

    public int delete(int comId){return commodityDao.delete(comId); }
    //重载CommodityService的抽象方法
    public List<Commodity>queryAllCommodity(){ return commodityDao.queryAllCommodity(); }
    //重载CommodityService的抽象方法
    public List<Commodity> searchCommodity(String introduce) { return commodityDao.searchCommodity(introduce); }

    public Commodity queryById(int comId) {return commodityDao.queryById(comId); }

    public int updateCommodity(Commodity commodity) {return commodityDao.updateCommodity(commodity); }

    public int addCommodity(Commodity commodity)  { return commodityDao.addCommodity(commodity); }

}
