package service;

import org.apache.ibatis.annotations.Param;
import pojo.Classroom;
import pojo.Ordercr;
import pojo.Student;

import java.util.Date;
import java.util.List;

public interface OrderService {

    public void addOrder(Ordercr ordercr);

    public void updateOrderById(Ordercr ordercr);

    public void deleteOrderById(Integer orderId);

    public List<String> getFacultyList();

    public List<Ordercr> getOrderList();

    public List<Ordercr> getOrderList(String snum);

    public boolean withdrawApplication(Integer orderid);

    public void updateApplication(List<Ordercr> ordercrs);

    public List<Ordercr> getOrderList(String snum, String cid, String startdate);

    public boolean isOrdered(String cid, String starttime, String endtime);

    boolean isBeforeTime(Date date, String starttime, String endtime);

    //今天是否已预订过一次教室
    boolean hasOrderedToday(String snum);

    Integer orderCount(String snum);
}
