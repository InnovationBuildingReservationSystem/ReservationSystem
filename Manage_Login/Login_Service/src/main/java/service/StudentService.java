package service;

import pojo.Student;

public interface StudentService {
    Student getStudentInfo(String snum);

    void updatePassword(Student student);

    boolean stuInfoValidate(String snum, String sname, String originalPwd);//更改密码验证

    boolean validateStudent(String snum, String spwd);//登录验证

}
