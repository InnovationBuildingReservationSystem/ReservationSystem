package service;

import pojo.Classroom;
import pojo.Ordercr;
import pojo.Student;

import java.util.List;

public interface OrderService {

    public List<Ordercr> getOrderList();

    public void addOrder(Ordercr ordercr);

    public void updateOrderById(Ordercr ordercr);

    public void deleteOrderById(Integer orderId);

    public List<String> getFacultyList();

    public List<Classroom> getClassroomList();

}
