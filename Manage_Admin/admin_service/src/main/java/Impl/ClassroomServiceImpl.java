package Impl;

import mapper.ClassroomMapper;
import mapper.OrdercrMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import pojo.Classroom;
import pojo.Ordercr;
import pojo.OrdercrExample;
import pojo.PageBean;
import service.ClassroomService;

import java.util.ArrayList;
import java.util.List;
@Service
public class ClassroomServiceImpl implements ClassroomService
{
    @Autowired
    private ClassroomMapper classroomMapper;
    @Autowired
    private OrdercrMapper ordercrMapper;


    @Override
    public void deleteClassroom(String cid)
    {
        /*

         * @Author: shize duan

         * @paranm : cid 教室号

         * @return :

         * @Description:

         * 删除教室

         */
        int check = getClassroomById(cid);
        if(check==1)
        {
            return;
        }
        classroomMapper.deleteByPrimaryKey(cid);
    }

    @Override
    public Integer addClassroom(Classroom classroom)
    {
        /*

         * @Author: shize duan

         * @param : classroom 教室信息

         * @return : 整数值表示

         * @Description:

         *

         */
         return classroomMapper.insertSelective(classroom);
    }

    @Override
    public PageBean getPageBean(Integer pageSize,Integer currentPage, String cid)
    {
        /*

         * @Author: shize duan

         * @param : pageSize 页面显示条数 currentPage 当前页码 cid 教室编号

         * @return :    pageBean 包含页面所需要的信息

         * @Description:

         * 获取页面所需要的信息封装到pageBean

         */
        PageBean pageBean;
        if(cid!=null&&(!StringUtils.isEmpty(cid)))
        {
            Classroom classroom = classroomMapper.selectByPrimaryKey(cid);
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

    @Override
    public int getClassroomById(String cid)
    {
        /*
        
         * @Author: shize duan
        
         * @param : cid 教室号
           
         * @return : ordercr中是否含有此教室号
         *  0 不包含
         *  1 包含 (包含情况下不能删除此教师)
            
         * @Description:
        
         * 查看预约列表中是否关联此教室
        
         */
        OrdercrExample ordercrExample=new OrdercrExample();
        OrdercrExample.Criteria criteria = ordercrExample.createCriteria();
        criteria.andCidEqualTo(cid);
        List<Ordercr> ordercrs = ordercrMapper.selectByExample(ordercrExample);
        if(ordercrs!=null&&ordercrs.size()!=0)
        {
            return  1;
        }
        return  0;
    }
}
