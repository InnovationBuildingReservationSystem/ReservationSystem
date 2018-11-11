package service;



import pojo.OrderItem;

import java.util.List;

public interface OrderService
{
    List<OrderItem> getOrderList();
    void  changeOption(Integer oid,Integer option);
}
