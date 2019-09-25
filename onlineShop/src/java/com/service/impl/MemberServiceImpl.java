package com.service.impl;

import com.dao.MemberDao;
import com.pojo.Member;
import com.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberDao memberDao;

    @Override
   public int addMember(Member member){
        return memberDao.addMember(member);
    }

    @Override
    public int deleteMemberById(int memId){ return memberDao.deleteMemberById(memId); }

    @Override
    public int updateMember(Member member){ return memberDao.updateMember(member); }
    @Override
    public Member queryById(int memId)  { return memberDao.queryById(memId); }

    @Override
    public List<Member> queryAllMember()  { return memberDao.queryAllMember();  }

    @Override
    public Member checkLogin(String memName,String password) {
        Member member=memberDao.queryByName(memName);
        if(member!=null && member.getPassword().equals(password)){
            return member;
        }
        else return null;
    }

    @Override
    public int shopCartCount(String memName){
        return memberDao.countInShopCart(memName);
    }


}
