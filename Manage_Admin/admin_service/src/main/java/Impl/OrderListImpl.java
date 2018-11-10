package Impl;

        import mapper.ClassroomMapper;
        import mapper.ClassroomorderMapper;
        import mapper.OrderItemMapper;
        import org.springframework.beans.factory.annotation.Autowired;
        import org.springframework.stereotype.Service;
        import org.springframework.transaction.annotation.Transactional;
        import pojo.Classroomorder;
        import service.OrderService;

        import java.util.List;

@Service
@Transactional
public class OrderListImpl implements OrderService
{
    @Autowired
    private OrderItemMapper orderItemMapper;
    @Autowired
    private ClassroomorderMapper classroomorderMapper;
    @Override
    public List<Classroomorder> getOrderList()
    {
        List<Classroomorder> orderItemList = orderItemMapper.getOrderItemList();
        return orderItemList;
    }

    @Override
    public void changeOption(Integer oid, Integer option)
    {
        Classroomorder classroomorder = classroomorderMapper.selectByPrimaryKey(oid);
        classroomorder.setStatus(option);
    }
}
