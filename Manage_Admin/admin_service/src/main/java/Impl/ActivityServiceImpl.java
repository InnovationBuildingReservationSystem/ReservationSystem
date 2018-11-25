package Impl;

import mapper.OrderItemMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import pojo.ActivityPageBean;
import pojo.Classroom;
import pojo.OrderItem;
import pojo.PageBean;
import service.ActivityService;

import java.util.ArrayList;
import java.util.List;
@Service
public class ActivityServiceImpl implements ActivityService
{
    @Autowired
    private OrderItemMapper orderItemMapper;

    @Override
    public PageBean getActivityPageBean(Integer pageSize, Integer currentPage, String nowDate)
    {

        orderItemMapper.getActivityTotalCount()
        ActivityPageBean activityPageBean;
        if(nowDate!=null&&(!StringUtils.isEmpty(nowDate)))
        {
            orderItemMapper.getActivityPageBean(pageBean);
            List<Classroom> classroomList=new ArrayList<>();
            classroomList.add(classroom);
            pageBean=new PageBean(pageSize,1,1);
            pageBean.setPageList(classroomList);
        }
        else
        {
            Integer totalCount=classroomMapper.getTotalCount();
            pageBean=new PageBean(pageSize,currentPage,totalCount);
            Integer start=(pageBean.getCurrentPage()-1)*pageBean.getPageSize();
            pageBean.setStart(start);
            List<Classroom> classroomList=classroomMapper.selectPageBean(pageBean);
            pageBean.setPageList(classroomList);
        }
        return  pageBean;
    }
}
