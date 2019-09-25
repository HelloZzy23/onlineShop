package com.dao;

import com.pojo.Member;

import java.util.HashMap;
import java.util.List;

public interface MemberDao {
    //增加用户
    int addMember(Member member);

    int deleteMemberById(int memId);

    int updateMember(Member member);

    Member queryById(int memId);

    Member queryByName(String memName);



    int countInShopCart(String memName);

    List<Member>queryAllMember();

    //查询shopcart购物车的信息




}
