package mapper;

import pojo.Classroom;
import pojo.Ordercr;

import java.util.List;

public interface OrderItemMapper {
    List<Ordercr> getOrderItemList();
    List<String> getFacultyItemList();
    List<Classroom> getClassroomItemList();
}
