package service;

import pojo.Ordercr;

import java.util.List;

public interface OrderService {
    public List<Ordercr> getOrderList();
    public void addOrder(Ordercr ordercr);
    public void updateOrderById(Ordercr ordercr);
    public void deleteOrderById(Integer orderId);
}
