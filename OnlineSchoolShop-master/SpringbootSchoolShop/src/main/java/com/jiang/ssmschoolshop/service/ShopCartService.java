package com.jiang.ssmschoolshop.service;


import com.jiang.ssmschoolshop.entity.ShopCart;
import com.jiang.ssmschoolshop.entity.ShopCartExample;
import com.jiang.ssmschoolshop.entity.ShopCartKey;

import java.util.List;

public interface ShopCartService {
    public void addShopCart(ShopCart shopCart);

    public List<ShopCart> selectByExample(ShopCartExample shopCartExample);

    public void deleteByKey(ShopCartKey shopCartKey);

    public void updateCartByKey(ShopCart shopCart);

    public ShopCart selectCartByKey(ShopCartKey shopCartKey);
}
