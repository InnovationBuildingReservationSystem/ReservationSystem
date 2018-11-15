package Impl;

import mapper.ClassroomMapper;
import mapper.OrderItemMapper;
import mapper.OrdercrMapper;
import org.apache.taglibs.standard.tei.ImportTEI;
import org.omg.CORBA.ORB;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import pojo.*;
import service.ReservationService;

import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class ReservationImpl implements ReservationService
{
    @Autowired
    private OrdercrMapper ordercrMapper;
    @Autowired
    private ClassroomMapper classroomMapper;
    @Override
    public List<OrderTimeTable> getOrderTimeTableList(Integer pageSize,Integer currentPage,String cid ,String orderDate)
    {
        //初始orderItemTimeTable
        List<OrderTimeTable> orderTimeTableList=new ArrayList<>();

        //借助pageBean关于信息的验证获取教室编号列表
        PageBean pageBean;
        //初始化教室列表
        List<Classroom> classroomIdList=new ArrayList<>();
        //判断前端传递的cid 是否为空
        // 如果为空 即条件中不包含教室编号
        if(cid!=null&&(!StringUtils.isEmpty(cid)))
        {
            Classroom classroom = classroomMapper.selectByPrimaryKey(cid);
            classroomIdList.add(classroom);
        }
        else
        {
            Integer totalCount=classroomMapper.getTotalCount();
            pageBean=new PageBean(pageSize,currentPage,totalCount);
            Integer start=(pageBean.getCurrentPage()-1)*pageBean.getPageSize();
            pageBean.setStart(start);
            classroomIdList = classroomMapper.selectPageBean(pageBean);
        }
        //借助教室编号列表获取OrderTimeTable

        for (Classroom classroom:classroomIdList)
        {
            OrderTimeTable orderTimeTable=new OrderTimeTable();
            //设置教室编号
            orderTimeTable.setCid(classroom.getCid());
            //获取itemDataList集合
            List<ItemDate> itemDateList = getItemDateList(orderTimeTable, cid, orderDate);
            orderTimeTable.setItemDateList(itemDateList);
        }
        return  orderTimeTableList;
    }

    @Override
    public List<ItemDate> getItemDateList(OrderTimeTable orderTimeTable, String cid, String orderDate)
    {
        OrdercrExample ordercrExample=new OrdercrExample();
        OrdercrExample.Criteria criteria = ordercrExample.createCriteria();
        //初始化itemDataList
        List<ItemDate> itemDateList=new ArrayList<>();
        //得到教室编号
        criteria.andCidEqualTo(cid);
        //判断orderDate
        if(orderDate!=null&&StringUtils.isEmpty(orderDate))
        {
            //当条件搜索的日期不为空时
            criteria.andStarttimeLike(orderDate);
        }
        //得到与教室编号相等的预约信息或者得到与教室及其日期所对应的预约信息
        List<Ordercr> ordercrs = ordercrMapper.selectByExample(ordercrExample);
        for (Ordercr orderItem : ordercrs)
        {
            //初始化itemDateList
            ItemDate itemDate = new ItemDate();
            String startTime = orderItem.getStarttime();
            String endTime = orderItem.getEndtime();
            //获取当天年月日(不要小时)
            //itemDate.orderDate中
            itemDate.setOrderDate(startTime.substring(0, 10));
            ItemTime itemTime = new ItemTime();
            itemTime.setStartTime(startTime);
            itemTime.setEndTime(endTime);
            ordercrs.remove(orderItem);
            List<ItemTime> itemTimeList = getItemTimeList(itemDate, ordercrs);
            itemTimeList.add(itemTime);
            itemDate.setOrderTimeList(itemTimeList);
            itemDateList.add(itemDate);
        }
        return itemDateList;
    }

    @Override
    public List<ItemTime> getItemTimeList(ItemDate itemDate, List<Ordercr> ordercrs)
    {
        //初始化 itemTimeList
        List<ItemTime> itemTimeList=new ArrayList<>();
        for(Ordercr orderItem:ordercrs)
        {
            String orderStartTime = orderItem.getStarttime();
            //如果当前的orderItemTime与itemDate中的日期不相同continue;
            if(!(orderStartTime.substring(0,10).equals(itemDate.getOrderDate())))
            {
                continue;
            }
            ItemTime orderItemTime=new ItemTime();
            orderItemTime.setStartTime(orderItem.getStarttime());
            orderItemTime.setEndTime(orderItem.getEndtime());
            //添加当前orderItem的时间信息
            itemTimeList.add(orderItemTime);
            //从ordercrs中删除已经添加到 itemTimeList的中的orderItem 避免重复判断
            ordercrs.remove(orderItem);
        }
        return  itemTimeList;
    }
}
