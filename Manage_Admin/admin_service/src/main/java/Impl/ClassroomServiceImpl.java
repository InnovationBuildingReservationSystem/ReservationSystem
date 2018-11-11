package Impl;

import mapper.ClassroomMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import pojo.Classroom;
import pojo.PageBean;
import service.ClassroomService;

import java.util.ArrayList;
import java.util.List;
@Service
public class ClassroomServiceImpl implements ClassroomService
{
    @Autowired
    private ClassroomMapper classroomMapper;



    @Override
    public void deleteClassroom(String cid)
    {
        classroomMapper.deleteByPrimaryKey(cid);
    }

    @Override
    public Integer addClassroom(Classroom classroom)
    {
         return classroomMapper.insertSelective(classroom);
    }

    @Override
    public PageBean getPageBean(Integer pageSize,Integer currentPage, String cid)
    {
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
}
