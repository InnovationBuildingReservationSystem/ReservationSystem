package mapper;


import org.apache.ibatis.annotations.Param;
import pojo.Classroom;
import pojo.Ordercr;

import java.util.List;

public interface OrderItemMapper {
    List<Ordercr> getOrderList();

    List getOrderItemList(@Param("snum") String snum);

    List<String> getFacultyItemList();

//    List<Classroom> getClassroomItemList(@Param("cid") String cid, @Param("startdate") String startdate);

    void updateOrderStatus(Ordercr ordercr);

    List selectByExample(@Param("snum") String snum, @Param("cid") String cid, @Param("startdate") String startdate);

    List<Ordercr> selectOrderByCid(@Param("cid") String cid);

    Integer hasOrderedToday(@Param("createtime") String createtime, @Param("snum") String snum);

    Integer messageCounter(@Param("snum") String snum);

}
