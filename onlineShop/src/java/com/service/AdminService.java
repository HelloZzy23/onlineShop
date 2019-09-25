package com.service;

import com.pojo.Admin;

public interface AdminService {
    int deleteById(int adminId);
    Admin checkLogin(String name,String password);
}
