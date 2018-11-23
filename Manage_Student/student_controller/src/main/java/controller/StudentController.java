package controller;

//mvn install -Dmaven.test.skip=true

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pojo.Student;
import service.OrderService;
import service.StudentService;

@Controller
@Transactional
public class StudentController {
    @Autowired
    private StudentService studentService;

    @Autowired
    private OrderService orderService;

    /*

     * @Author: Zhancheng Liang

     * @param :学号

     * @return :修改密码界面

     * @Description:跳转修改密码界面

     *

     */
    @RequestMapping("/student/passwordChange")
    public String passwordChange(Model model, @RequestParam(value = "snum", defaultValue = "16427024") String snum) {
        Student student = studentService.getStudentInfo(snum);
        model.addAttribute("student", student);
        return "passwordChange";
    }

    public static boolean isNumeric(String str) {
        for (int i = str.length(); --i >= 0; ) {
            int chr = str.charAt(i);
            if (chr < 48 || chr > 57)
                return false;
        }
        return true;
    }

    /*

     * @Author: Zhancheng Liang

     * @param :学号

     * @return :修改密码界面

     * @Description:修改密码验证

     *

     */
    @RequestMapping("/student/updatePassword")
    public String updatePassword(Model model, @RequestParam("snum") String snum, @RequestParam("sname") String sname, @RequestParam("originalPwd") String originalPwd, @RequestParam("newPwd") String newPwd, @RequestParam("newPwdConvinced") String newPwdConvinced) {
        Student student = studentService.getStudentInfo(snum);
        model.addAttribute("student", student);
        if (snum.length() != 8 || !snum.matches("[0-9]+")) {
            model.addAttribute("snumError", "学号为8位数字，请检查！");
        }
        if (originalPwd.length() < 6) {
            model.addAttribute("originalPwdError", "原密码长度应大于6位");
        }
        if (newPwd.length() < 6) {
            model.addAttribute("newPwdError", "新密码长度应大于6位");
        }
        if (!newPwd.equals(newPwdConvinced)) {
            model.addAttribute("newPwdConvincedError", "两次输入新密码内容不一致！");
        }
        if (studentService.stuInfoValidate(snum, sname, originalPwd) && newPwdConvinced.equals(newPwd)) {
            studentService.updatePassword(student);
            model.addAttribute("errorMessage", "更改成功！");
            return "passwordChange";
        }
        model.addAttribute("errorMessage", "所填写信息有误，请检查后重试！");
        model.addAttribute("snum", snum);
        model.addAttribute("sname", sname);
        model.addAttribute("originalPwd", originalPwd);
        model.addAttribute("newPwd", newPwd);
        model.addAttribute("newPwdConvinced", newPwdConvinced);

        return "passwordChange";
    }

    /*

     * @Author: Zhancheng Liang

     * @param : 学号

     * @return : userInfo.html

     * @Description:学生个人信息页面

     *

     */
    @RequestMapping("/student/userInfo")
    public String userInfo(Model model, @RequestParam(value = "snum", defaultValue = "16427024") String snum) {
        Student student = studentService.getStudentInfo(snum);
        int appCount = orderService.orderCount(snum, "all", "");
        model.addAttribute("student", student);
        model.addAttribute("appCount", appCount);
        return "userInfo";
    }


}
