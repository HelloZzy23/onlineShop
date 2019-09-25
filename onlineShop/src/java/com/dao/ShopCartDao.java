package com.dao;

import com.pojo.ShopCart;

import java.util.List;

public interface ShopCartDao {

    int deleteCommodityById(int id);
    List<ShopCart> queryByName(String memName);

    int addCommodity(ShopCart shopCart);
}

