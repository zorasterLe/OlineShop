package com.jiang.ssmschoolshop.service;

import com.jiang.ssmschoolshop.entity.Address;
import com.jiang.ssmschoolshop.entity.AddressExample;

import java.util.List;

public interface AddressService {
    public List<Address> getAllAddressByExample(AddressExample addressExample);

    public void updateByPrimaryKeySelective(Address address);

    public void deleteByPrimaryKey(Integer addressid);

    public void insert(Address address);

    public void  insertSelective(Address address);

    public Address selectByPrimaryKey(Integer addressid);
}
