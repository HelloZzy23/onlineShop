package com.service.impl;

import com.dao.AdminDao;
import com.pojo.Admin;
import com.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {

    //启用自动装配
    @Autowired
    private AdminDao adminDao;

    public int deleteById(int adminId){
        return adminDao.deleteById(adminId);
    }

    @Override
    public Admin checkLogin(String name,String password){
        Admin admin=adminDao.queryByName(name);
        if (admin != null && admin.getPassword().equals(password)) {
            return admin;
        }else return null;
    }
}
