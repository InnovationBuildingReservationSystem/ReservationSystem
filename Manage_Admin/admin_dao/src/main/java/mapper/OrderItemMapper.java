package mapper;

import pojo.OrderItem;
import pojo.Ordercr;

import java.util.List;

public interface OrderItemMapper
{
    List<Ordercr> getOrderList();
    List<OrderItem> getOrderItemList();
    void  updateOrderStatus(Integer orderId, Integer orderStatus);
    List<OrderItem> getOrderItemTimeList();
    List<OrderItem> getOrderItemByCidAndStartDate(String cid,String startDate);
}
