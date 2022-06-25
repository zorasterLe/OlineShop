package com.jiang.ssmschoolshop.service;


import com.jiang.ssmschoolshop.entity.Admin;
import com.jiang.ssmschoolshop.entity.AdminExample;


import java.util.List;

public interface AdminService {
    public Admin selectByName(Admin admin);

    public List<Admin> selectByExample(AdminExample adminExample);

    public void insertSelective(Admin admin);
}
