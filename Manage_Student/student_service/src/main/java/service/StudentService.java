package service;

import pojo.Student;

public interface StudentService {
    public Student getStudentInfo(String snum);
    public void updatePassword(Student student);
}
