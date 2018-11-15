package Impl;

import mapper.OrderItemMapper;
import mapper.OrdercrMapper;
import mapper.StudentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pojo.Classroom;
import pojo.Ordercr;
import pojo.Student;
import service.OrderService;

import java.util.List;

@Service
@Transactional
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrdercrMapper ordercrMapper;
    @Autowired
    private OrderItemMapper orderItemMapper;

    @Override
    public List<Ordercr> getOrderList() {
        List<Ordercr> ordercrList = orderItemMapper.getOrderItemList();
        return ordercrList;
    }

    @Override
    public void addOrder(Ordercr ordercr) {
        ordercrMapper.insert(ordercr);
    }

    @Override
    public void updateOrderById(Ordercr ordercr) {
        ordercrMapper.updateByPrimaryKey(ordercr);
    }

    @Override
    public void deleteOrderById(Integer orderId) {
        ordercrMapper.deleteByPrimaryKey(orderId);
    }

    @Override
    public List<String> getFacultyList() {
        List<String> facultyList = orderItemMapper.getFacultyItemList();
        return facultyList;
    }

    @Override
    public List<Classroom> getClassroomList() {
        List<Classroom> classroomList = orderItemMapper.getClassroomItemList();
        return classroomList;
    }

}
