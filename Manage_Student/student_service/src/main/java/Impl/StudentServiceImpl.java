package Impl;

import mapper.StudentItemMapper;
import mapper.StudentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pojo.Student;
import service.StudentService;

@Service
@Transactional
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentMapper studentMapper;

    @Autowired
    private StudentItemMapper studentItemMapper;

    @Override
    public Student getStudentInfo(String snum) {
        Student student = studentMapper.selectByPrimaryKey(snum);
        return student;
    }

    @Override
    public void updatePassword(Student student) {
        studentItemMapper.updateSpwdBySnum(student);
    }
}
