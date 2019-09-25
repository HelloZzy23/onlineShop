package com.dao;

import com.pojo.Commodity;

import java.util.List;

public interface CommodityDao {
   int delete(int comId);
   List<Commodity> queryAllCommodity();
//   模糊查询
   List<Commodity> searchCommodity(String introduce);
   //根据商品id查找商品
   Commodity queryById(int comId);

   //修改商品信息
   int updateCommodity(Commodity commodity);

   //添加商品
   int addCommodity(Commodity commodity);
}
