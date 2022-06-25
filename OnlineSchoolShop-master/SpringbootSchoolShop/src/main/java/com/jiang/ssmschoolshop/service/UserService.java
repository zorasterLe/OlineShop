package com.jiang.ssmschoolshop.service;


import com.jiang.ssmschoolshop.entity.User;
import com.jiang.ssmschoolshop.entity.UserExample;

import java.util.List;

public interface UserService {
    public User selectByPrimaryKey(int userId);

    public List<User> selectByExample(UserExample userExample);

    public void insertSelective(User user);

    public void deleteUserById(Integer userid);

    public void updateByPrimaryKeySelective(User user);

}
