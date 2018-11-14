package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pojo.Classroom;
import pojo.Ordercr;
import pojo.Student;
import service.ClassroomService;
import service.OrderService;
import service.StudentService;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@Transactional
public class OrdercrController {
    @Autowired
    private OrderService orderService;

    @Autowired
    private StudentService studentService;

    @Autowired
    private ClassroomService classroomService;

    @RequestMapping("/student/tables")
    public String getOrderTable(@RequestParam(defaultValue = "16427024")String snum, @RequestParam(defaultValue = "2018-11-15")String startdate, Model model) throws ParseException {
        List<Ordercr> orderList = orderService.getOrderList();
        model.addAttribute("orderList",orderList);
        model.addAttribute("startdate",startdate);
        model.addAttribute("snum",snum);
        return "tables";
    }

    /*
    
     * @Author: Zhancheng Liang
    
     * @param :  snum学号
       
     * @return :    application.html申请界面
        
     * @Description: 获得学院表，返回到申请界面
    
     *
    
     */
    @RequestMapping("/student/application")
    public String getFaculty(Model model, @RequestParam(value = "snum",required = false,defaultValue = "16427024")String snum) throws ParseException {
        List<String> facultyList = orderService.getFacultyList();
        List<Classroom> classroomList = classroomService.getClassroomList();
        Student student = studentService.getStudentInfo(snum);
        model.addAttribute("facultyList",facultyList);
        model.addAttribute("student",student);
        model.addAttribute("classroomList",classroomList);
        return "application";
    }

    @RequestMapping("/student/ClassroomInfo")
    public String getClassroomInfo(Model model, @RequestParam(value = "snum",required = false,defaultValue = "16427024")String snum, @RequestParam(defaultValue = "2018-11-15")String startdate) throws ParseException {
        List<Classroom> classrommList = orderService.getClassroomList();
        Student student = studentService.getStudentInfo(snum);
        model.addAttribute("classroomList",classrommList);
        model.addAttribute("startdate",startdate);
        model.addAttribute("student",student);
        return "ClassroomInfo";
    }

    @RequestMapping("/student/applicationClassroom")
    public String handleApplication(Model model, Ordercr ordercr, @RequestParam("startdate")String startdate){
        String starttime = startdate + " " + ordercr.getStarttime() + ":00";
        String endtime = startdate + " " + ordercr.getEndtime() + ":00";
        ordercr.setStarttime(starttime);
        ordercr.setEndtime(endtime);
        Date date = new Date();
        DateFormat bf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        ordercr.setOrderstatus(0); // 订单状态默认是0-申请中
        ordercr.setCreatetime(bf.format(date));
        orderService.addOrder(ordercr);
        return "tables";
    }

}
