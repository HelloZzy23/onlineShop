package com.service;

import com.pojo.ShopCart;

import java.util.List;

public interface ShopCartService {

    int deleteCommodityById(int id);
    List<ShopCart> queryByName(String memName);
    int addCommodity(ShopCart shopCart);
}
