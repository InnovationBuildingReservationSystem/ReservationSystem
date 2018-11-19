package controller;

import org.aspectj.weaver.ast.Or;
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

import java.lang.reflect.Field;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Controller
@Transactional
public class OrdercrController {
    @Autowired
    private OrderService orderService;

    @Autowired
    private StudentService studentService;

    @Autowired
    private ClassroomService classroomService;

    /*

     * @Author: Zhancheng Liang

     * @param : 学号

     * @return :    个人订单页面

     * @Description:    查询个人全部订单

     *

     */
    @RequestMapping("/student/personalOrder")
    public String getOrderTableBySnum(@RequestParam(defaultValue = "16427024") String snum, Model model) throws ParseException {
        List<Ordercr> orderList = orderService.getOrderList(snum);
        List<Classroom> classroomList = classroomService.getClassroomList();
        Integer orderCount = orderService.orderCount(snum);

        model.addAttribute("orderCount", orderCount);
        model.addAttribute("orderList", orderList);
        model.addAttribute("snum", snum);
        model.addAttribute("classroomList", classroomList);

        orderService.updateApplication(orderList);

        return "personalOrder";
    }

    /*

     * @Author: Zhancheng Liang

     * @param :  snum学号

     * @return :    application.html申请界面

     * @Description: 获得学院表，返回到申请界面

     *

     */
    @RequestMapping("/student/application")
    public String getFaculty(Model model, @RequestParam(value = "snum", required = false, defaultValue = "16427024") String snum, String cid, String startdate, String starttime, String endtime) throws ParseException {
        List<String> facultyList = orderService.getFacultyList();
        List<Classroom> classroomList = classroomService.getClassroomList();
        Student student = studentService.getStudentInfo(snum);

        model.addAttribute("cid", cid);
        model.addAttribute("startdate", startdate);
        model.addAttribute("facultyList", facultyList);
        model.addAttribute("student", student);
        model.addAttribute("classroomList", classroomList);
        model.addAttribute("starttime", starttime);
        model.addAttribute("endtime", endtime);
        return "application";
    }


    /**
     * 利用正则表达式判断字符串是否是数字
     *
     * @param str
     * @return
     */
    public boolean isNumeric(String str) {
        Pattern pattern = Pattern.compile("[0-9]*");
        Matcher isNum = pattern.matcher(str);
        if (!isNum.matches()) {
            return false;
        }
        return true;
    }

    /**
     * 判断是否为整数
     *
     * @param str 传入的字符串
     * @return 是整数返回true, 否则返回false
     */
    public static boolean isInteger(String str) {
        Pattern pattern = Pattern.compile("^[-\\+]?[\\d]*$");
        return pattern.matcher(str).matches();
    }

    /*

     * @Author: Zhancheng Liang

     * @param : 订单信息ordercr

     * @return :  用户订单界面

     * @Description:    用户提交订单成功后返回自己的已预订界面

     *

     */
    @RequestMapping("/student/applicationClassroom")
    public String handleApplication(Ordercr ordercr, @RequestParam("startdate") String startdate, @RequestParam("sname") String sname, @RequestParam("snum") String snum, Model model) {

        String errorMessage = null;
        Integer classAllowCount = classroomService.getClassroomByCid(ordercr.getCid()).getCnum();
        Integer peopleCount = classAllowCount - ordercr.getAttendcount();   //教室容量与参加人数之差

        model.addAttribute("starttime", ordercr.getStarttime());
        model.addAttribute("endtime", ordercr.getEndtime());
        model.addAttribute("startdate", startdate);
        model.addAttribute("faculty", ordercr.getFaculty());

        String starttime = startdate + " " + ordercr.getStarttime() + ":00";
        String endtime = startdate + " " + ordercr.getEndtime() + ":00";

        if (peopleCount < 0) {
            errorMessage = "参加人数大于教室容量，请修改！";
            model.addAttribute("errorMessage", errorMessage);
            model.addAttribute("ordercr", ordercr);
            model.addAttribute("errorFlag", 1);

            List<String> facultyList = orderService.getFacultyList();
            List<Classroom> classroomList = classroomService.getClassroomList();
            Student student = studentService.getStudentInfo(snum);

            model.addAttribute("facultyList", facultyList);
            model.addAttribute("student", student);
            model.addAttribute("classroomList", classroomList);
            model.addAttribute("cid", ordercr.getCid());

            return "application";

        }

        if (ordercr.getCid() == "" || ordercr.getStarttime() == "" || ordercr.getEndtime() == "" || ordercr.getTheme() == "" || ordercr.getSnum() == "" || ordercr.getFaculty() == "" || ordercr.getGroupname() == "" || ordercr.getTeacher() == "" || ordercr.getStelephone() == "" || ordercr.getAttendcount().toString() == "" || sname == "" || startdate == "" || !(isNumeric(ordercr.getStelephone()) && ordercr.getStelephone().length() == 11 && isNumeric(ordercr.getAttendcount().toString()) && isInteger(ordercr.getAttendcount().toString())) || ordercr.getAttendcount() <= 0d) {
            errorMessage = "请检查信息是否填写完整，联系电话、参加人数等是否为有效信息！！";
            model.addAttribute("errorMessage", errorMessage);
            model.addAttribute("ordercr", ordercr);
            model.addAttribute("errorFlag", 1);

            List<String> facultyList = orderService.getFacultyList();
            List<Classroom> classroomList = classroomService.getClassroomList();
            Student student = studentService.getStudentInfo(snum);

            model.addAttribute("facultyList", facultyList);
            model.addAttribute("student", student);
            model.addAttribute("classroomList", classroomList);
            model.addAttribute("cid", ordercr.getCid());

            return "application";

        } else if (orderService.isBeforeTime(new Date(), starttime, endtime)) {
            //判断选择的开始/结束时间是否为现在时刻之后的时间
            errorMessage = "请选择当前时刻之后的时间段";
            model.addAttribute("errorMessage", errorMessage);
            model.addAttribute("ordercr", ordercr);
            model.addAttribute("errorFlag", 1);

            List<String> facultyList = orderService.getFacultyList();
            List<Classroom> classroomList = classroomService.getClassroomList();
            Student student = studentService.getStudentInfo(snum);

            model.addAttribute("facultyList", facultyList);
            model.addAttribute("student", student);
            model.addAttribute("classroomList", classroomList);
            model.addAttribute("cid", ordercr.getCid());

            return "application";

        } else if (orderService.isOrdered(ordercr.getCid(), starttime, endtime)) {
            //判断该教室的时间段是否已经被预订
            errorMessage = "该教室的时间段已经被预订，请重新选择！";

            model.addAttribute("errorMessage", errorMessage);
            model.addAttribute("ordercr", ordercr);
            model.addAttribute("errorFlag", 1);

            List<String> facultyList = orderService.getFacultyList();
            List<Classroom> classroomList = classroomService.getClassroomList();
            Student student = studentService.getStudentInfo(snum);

            model.addAttribute("facultyList", facultyList);
            model.addAttribute("student", student);
            model.addAttribute("classroomList", classroomList);

            return "application";

        } else if (orderService.hasOrderedToday(snum)) {
            errorMessage = "您今天已经预订过一次教室，已不能申请，请明天再重试！";

            model.addAttribute("errorMessage", errorMessage);
            model.addAttribute("ordercr", ordercr);
            model.addAttribute("errorFlag", 1);

            List<String> facultyList = orderService.getFacultyList();
            List<Classroom> classroomList = classroomService.getClassroomList();
            Student student = studentService.getStudentInfo(snum);

            model.addAttribute("facultyList", facultyList);
            model.addAttribute("student", student);
            model.addAttribute("classroomList", classroomList);

            return "application";

        } else if (isNumeric(ordercr.getStelephone()) && ordercr.getStelephone().length() == 11 && isNumeric(ordercr.getAttendcount().toString()) && isInteger(ordercr.getAttendcount().toString())) {
            //判断手机号是否为纯数字和长度是否为11 且 参加人数是否为整数，若都满足，则进行插入，否则，退回到申请界面
            ordercr.setStarttime(starttime);
            ordercr.setEndtime(endtime);
            Date date = new Date();
            DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

            ordercr.setOrderstatus(0); // 订单状态默认是0-申请中
            ordercr.setCreatetime(df.format(date));
            orderService.addOrder(ordercr);
            Integer orderCount = orderService.orderCount(snum);

            model.addAttribute("orderCount", orderCount);
            model.addAttribute("errorFlag", 0);

            return "redirect: personalOrder.html";

        }
        return "redirect:application.html";
    }

    /*

     * @Author: Zhancheng Liang

     * @param :     orderid订单号

     * @return :    用户订单界面

     * @Description:    撤销申请

     *

     */
    @RequestMapping("/student/withdrawApplication")
    public String withdrawApplication(@RequestParam("orderid") Integer orderid, @RequestParam(value = "snum", defaultValue = "16427024") String snum, Model model) {
        boolean flag = orderService.withdrawApplication(orderid);
        if (flag) {

        } else {

        }
        Integer orderCount = orderService.orderCount(snum);

        model.addAttribute("orderCount", orderCount);
        return "redirect: personalOrder.html";
    }

    @RequestMapping("/student/queryOrder")
    public String queryPersonalOrder(Model model, @RequestParam(value = "snum", defaultValue = "16427024") String snum, @RequestParam("cid") String cid, @RequestParam(value = "startdate") String startdate) {
        List<Ordercr> list = orderService.getOrderList(snum, cid, startdate);
        model.addAttribute("cid", cid);
        model.addAttribute("startdate", startdate);
        model.addAttribute("orderList", list);

        List<Classroom> classroomList = classroomService.getClassroomList();
        Student student = studentService.getStudentInfo(snum);
        Integer orderCount = orderService.orderCount(snum);

        model.addAttribute("orderCount", orderCount);
        model.addAttribute("snum", snum);
        model.addAttribute("classroomList", classroomList);
        return "personalOrder";
    }


}
