package Impl;


import mapper.OrderItemMapper;
import mapper.OrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pojo.Order;
import service.OrderService;

import java.util.List;

@Service
@Transactional
public class OrderListImpl implements OrderService
{
    @Autowired
    private OrderItemMapper orderItemMapper;
    @Autowired
    private OrderMapper orderMapper;
    @Override
    public List<Order> getOrderList()
    {
        List<Order> orderItemList = orderItemMapper.getOrderItemList();
        return orderItemList;
    }

    @Override
    public void changeOption(Integer oid, Integer option)
    {
        Order item = orderMapper.selectByPrimaryKey(oid);
        item.setOrderstatus(option);
    }
}
