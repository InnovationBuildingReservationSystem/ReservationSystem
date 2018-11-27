package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pojo.Classroom;
import pojo.ClassroomStatus;
import pojo.Ordercr;
import pojo.Student;
import service.ClassroomService;
import service.OrderService;
import service.StudentService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

@Controller
public class ClassroomController {
    @Autowired
    private OrderService orderService;

    @Autowired
    private StudentService studentService;

    @Autowired
    private ClassroomService classroomService;

    /*

     * @Author: Zhancheng Liang

     * @param :  snum学号，startdate查询教室时间

     * @return :  ClassroomInfo教室默认查询界面

     * @Description: 按查询当天教室信息

     *

     */
    @RequestMapping("/student/ClassroomInfo")
    public String getClassroomInfo(HttpServletRequest request, Model model) throws ParseException {
        HttpSession session = request.getSession();
        Student student = (Student) session.getAttribute("studentSession");
        if (session == null || student == null) {
            return "login";
        }
        session.setAttribute("studentSession", student);
        model.addAttribute("student", student);

        Date date = new Date();
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        List<Classroom> classroomList = classroomService.getClassroomList();//教室列表
        List classList = classroomService.getClassroomList("all", df.format(date));//教室使用列表
        model.addAttribute("classroomList", classroomList);
        model.addAttribute("classList", classroomList);
        model.addAttribute("startdate", df.format(date));

        String startdate = df.format(date);

        List<ClassroomStatus> classroomStatusList = new ArrayList<>();
        List<Integer> statusList = new ArrayList<>();
        List<Integer[]> statusLists = new ArrayList<>();//statusList的集合
        //查询一系列教室的某天
        for (int i = 0; i < classroomList.size(); i++) {
            //查询一个教室的某天
            ClassroomStatus classroomStatus = new ClassroomStatus();
            classroomStatusList.add(classroomStatus);
            classroomStatusList.get(i).setCid(classroomList.get(i).getCid());
            classroomStatusList.get(i).setDate(startdate);

            for (int j = 8; j < 21; j++) {
                int status = -1;
                statusList.add(status);
                if (orderService.isOrdered(classroomList.get(i).getCid(), startdate + " " + j + ":00:00", startdate + " " + (j + 1) + ":00:00")) {
                    statusList.set(j - 8, 1);
                } else {
                    statusList.set(j - 8, -1);
                }
            }
            classroomStatusList.get(i).setStatus(statusList);

            Integer[] integers = new Integer[statusList.size()];
            statusList.toArray(integers);

            statusLists.add(integers);
            statusList.clear();
        }
        model.addAttribute("classroomStatusList", classroomStatusList);//班级+状态列表
        model.addAttribute("statusLists", statusLists);//状态列表
        model.addAttribute("cid", "all");
        return "ClassroomInfo";
    }

    /*

     * @Author: Zhancheng Liang

     * @param :  学号，教室号，日期

     * @return :    ClassroomInfo.html

     * @Description:按条件查询教室信息

     *

     */
    @RequestMapping("/student/queryClassroom")
    public String queryClassroomInfo(HttpServletRequest request, Model model, @RequestParam("cid") String cid, @RequestParam("startdate") String startdate) {
        HttpSession session = request.getSession();
        Student student = (Student) session.getAttribute("studentSession");
        if (session == null || student == null) {
            return "login";
        }
        session.setAttribute("studentSession", student);
        model.addAttribute("student", student);

        List<Ordercr> list = orderService.getOrderList();
        model.addAttribute("cid", cid);
        model.addAttribute("startdate", startdate);
        model.addAttribute("orderList", list);//所有订单集合

        List<Classroom> classList = classroomService.getClassroomList(cid, startdate);//教室列表

        List<Classroom> classroomList = classroomService.getClassroomList();

        /**
         按照日期条件查询，查询一次是一个集合，按照时间查询占有教室
         * */
        List<ClassroomStatus> classroomStatusList = new ArrayList<>();
        List<Integer> statusList = new ArrayList<>();
        List<Integer[]> statusLists = new ArrayList<>();//statusList的集合

        if (!cid.equals("all")) {
            //查询一个教室的某天
            ClassroomStatus classroomStatus = new ClassroomStatus();
            classroomStatusList.add(classroomStatus);
            classroomStatusList.get(0).setCid(cid);
            classroomStatusList.get(0).setDate(startdate);
            for (int i = 8; i < 21; i++) {
                int status = -1;
                statusList.add(status);
                if (orderService.isOrdered(cid, startdate + " " + i + ":00:00", startdate + " " + (i + 1) + ":00:00")) {
                    statusList.set(i - 8, 1);
                } else {
                    statusList.set(i - 8, -1);
                }
            }
            classroomStatusList.get(0).setStatus(statusList);

            model.addAttribute("classroomStatusList", classroomStatusList);//班级+状态列表
            model.addAttribute("classroomStatus", classroomStatus);
            model.addAttribute("statusList", statusList);//状态列表

        } else {
            //查询一系列教室的某天
            for (int i = 0; i < classroomList.size(); i++) {
                //查询一个教室的某天
                ClassroomStatus classroomStatus = new ClassroomStatus();
                classroomStatusList.add(classroomStatus);
                classroomStatusList.get(i).setCid(classroomList.get(i).getCid());
                classroomStatusList.get(i).setDate(startdate);

                for (int j = 8; j < 21; j++) {
                    int status = -1;
                    statusList.add(status);
                    if (orderService.isOrdered(classroomList.get(i).getCid(), startdate + " " + j + ":00:00", startdate + " " + (j + 1) + ":00:00")) {
                        statusList.set(j - 8, 1);
                    } else {
                        statusList.set(j - 8, -1);
                    }
                }
                classroomStatusList.get(i).setStatus(statusList);

                Integer[] integers = new Integer[statusList.size()];
                statusList.toArray(integers);

                statusLists.add(integers);
                statusList.clear();
            }
            model.addAttribute("classroomStatusList", classroomStatusList);//班级+状态列表
            model.addAttribute("statusLists", statusLists);//状态列表
        }

        model.addAttribute("snum", student.getSnum());
        model.addAttribute("classroomList", classroomList);//下拉列表的班级列表
        model.addAttribute("classList", classList);//搜索出的某天的班级列表

        return "ClassroomInfo";
    }
}
