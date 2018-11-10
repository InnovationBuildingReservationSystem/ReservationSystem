package service;

import pojo.Classroomorder;

import java.util.List;

public interface OrderService
{
    List<Classroomorder> getOrderList();
    void  changeOption(Integer oid,Integer option);
}
