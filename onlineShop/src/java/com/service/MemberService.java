package com.service;

import com.pojo.Member;

import java.util.HashMap;
import java.util.List;

public interface MemberService {

    int addMember(Member member);

    int deleteMemberById(int memId);

    int updateMember(Member member);

    Member queryById(int memId);

    List<Member> queryAllMember();

    Member checkLogin(String memName,String password);

    int shopCartCount(String memName);



    //查询购物车的信息

}
