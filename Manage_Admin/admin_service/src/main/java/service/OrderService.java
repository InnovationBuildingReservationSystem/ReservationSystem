package service;

import pojo.Order;

import java.util.List;

public interface OrderService
{
    List<Order> getOrderList();
    void  changeOption(Integer oid,Integer option);
}
