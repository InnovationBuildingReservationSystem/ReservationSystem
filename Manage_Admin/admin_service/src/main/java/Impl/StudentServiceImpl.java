package Impl;

import mapper.StudentItemMapper;
import mapper.StudentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import pojo.Classroom;
import pojo.PageBean;
import pojo.Student;
import service.StudentService;

import java.util.ArrayList;
import java.util.List;

@Service
public class StudentServiceImpl implements StudentService
{
    @Autowired
    private StudentItemMapper studentItemMapper;
    @Autowired
    private StudentMapper studentMapper;
    @Override
    public PageBean getStudentPageBean(String sid,Integer pageSize,Integer currentPage)
    {
        PageBean pageBean;
        if(sid!=null&&(!StringUtils.isEmpty(sid)))
        {
            Student student = studentMapper.selectByPrimaryKey(sid);
            List<Student> studentList=new ArrayList<>();
            studentList.add(student);
            pageBean=new PageBean(pageSize,1,1);
            pageBean.setPageList(studentList);
        }
        else
        {
            Integer totalCount=studentItemMapper.getStudentTotalCount();
            pageBean=new PageBean(pageSize,currentPage,totalCount);
            Integer start=(pageBean.getCurrentPage()-1)*pageBean.getPageSize();
            pageBean.setStart(start);
            List<Student> studentList = studentItemMapper.getPageBean(pageBean);
            pageBean.setPageList(studentList);
        }
        return  pageBean;
    }
}
