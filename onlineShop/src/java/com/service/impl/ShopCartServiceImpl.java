package com.service.impl;

import com.dao.ShopCartDao;
import com.pojo.ShopCart;
import com.service.ShopCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ShopCartServiceImpl implements ShopCartService {

    @Autowired
    private ShopCartDao shopCartDao;
    //重载ShopCartService的抽象方法

    @Override
    public int deleteCommodityById(int id){
        return shopCartDao.deleteCommodityById(id);
    }


    @Override
    public List<ShopCart> queryByName(String memName) {
        return (List<ShopCart>) shopCartDao.queryByName(memName);
    }

    @Override
    public int addCommodity(ShopCart shopCart) {return shopCartDao.addCommodity(shopCart); }
}
