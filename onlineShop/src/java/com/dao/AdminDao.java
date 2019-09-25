package com.dao;

import com.pojo.Admin;

public interface AdminDao {
    int deleteById(int adminId);



    Admin queryByName(String name);
}
