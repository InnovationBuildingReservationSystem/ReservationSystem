package service;

import pojo.*;

import java.util.List;

public interface ReservationService
{
    List<OrderTimeTable> getOrderTimeTableList(Integer pageSize,Integer currentPage,String cid ,String itemDate);

    List<ItemDate> getItemDateList(OrderTimeTable orderTimeTable, String cid, String orderDate);

    List<ItemTime> getItemTimeList(ItemDate itemDate, List<Ordercr> ordercrs);
}
