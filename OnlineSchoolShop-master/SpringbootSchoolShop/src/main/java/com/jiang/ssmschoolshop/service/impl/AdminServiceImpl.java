package com.jiang.ssmschoolshop.service.impl;


import com.jiang.ssmschoolshop.dao.AdminMapper;
import com.jiang.ssmschoolshop.entity.Admin;
import com.jiang.ssmschoolshop.entity.AdminExample;
import com.jiang.ssmschoolshop.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

    @Autowired(required = false)
    private AdminMapper adminMapper;

    @Override
    public Admin selectByName(Admin admin) {
        return adminMapper.selectByName(admin);
    }

    //
    @Override
    public List<Admin> selectByExample(AdminExample adminExample) {
        return adminMapper.selectByExample(adminExample);
    }

    @Override
    public void insertSelective(Admin admin) {
        adminMapper.insertSelective(admin);
    }


}
