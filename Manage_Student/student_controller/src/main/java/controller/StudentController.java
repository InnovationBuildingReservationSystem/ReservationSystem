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

import javax.servlet.http.HttpSession;

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
    public String passwordChange(Model model, @RequestParam(value = "snum") String snum) {
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
    public String userInfo(Model model, @RequestParam("snum") String snum) {
        Student student = studentService.getStudentInfo(snum);
        int appCount = orderService.orderCount(snum, "all", "");
        model.addAttribute("student", student);
        model.addAttribute("appCount", appCount);
        return "userInfo";
    }

    /*

     * @Author: Zhancheng Liang

     * @param : snum

     * @return :    activeAccount.html

     * @Description: 初次登录激活

     *

     */
    @RequestMapping("/student/activeAccount")
    public String activeAccount(Model model, @RequestParam("snum") String snum) {
        Student student = studentService.getStudentInfo(snum);
        if (student.getSstatus() != 0) {
            return "redirect: personalOrder.html?snum=" + snum;
        }
        model.addAttribute("snum", snum);
        model.addAttribute("student", student);
        return "activeAccount";
    }

    /*

     * @Author: Zhancheng Liang

     * @param : 激活账号

     * @return :

     * @Description:

     *

     */
    @RequestMapping("/student/doActive")
    public String doActive(Model model, @RequestParam("snum") String snum, @RequestParam("sname") String sname, @RequestParam("spwd") String spwd, @RequestParam("spwdConvinced") String spwdConvinced, @RequestParam("sid") String sid, @RequestParam("stelphone") String stelphone) {
        Student student = studentService.getStudentInfo(snum);
        if (!sname.trim().equals(student.getSname()) || !sid.trim().equals(student.getSid()) || spwd == null || sid.trim().length() != 18) {
            model.addAttribute("errorMessage", "所提交的信息有误，请检查后重试！");
            model.addAttribute("snum", snum);
            model.addAttribute("spwd", spwd);
            model.addAttribute("spwdConvinced", spwdConvinced);
            model.addAttribute("sname", sname);
            model.addAttribute("sid", sid);
            model.addAttribute("stelephone", stelphone);
            return "activeAccount";
        } else if (!spwd.equals(spwdConvinced)) {
            model.addAttribute("errorMessage", "两次密码内容不一致！");
            model.addAttribute("snum", snum);
            model.addAttribute("spwd", spwd);
            model.addAttribute("spwdConvinced", spwdConvinced);
            model.addAttribute("sname", sname);
            model.addAttribute("sid", sid);
            model.addAttribute("stelephone", stelphone);
            return "activeAccount";
        } else if (spwd.length() < 6) {
            model.addAttribute("errorMessage", "密码长度应不少于6位");
            model.addAttribute("snum", snum);
            model.addAttribute("spwd", spwd);
            model.addAttribute("spwdConvinced", spwdConvinced);
            model.addAttribute("sname", sname);
            model.addAttribute("sid", sid);
            model.addAttribute("stelphone", stelphone);
            return "activeAccount";
        }
        student.setStelphone(stelphone);
        student.setSstatus(1);
        student.setSpwd(spwd);
        studentService.updateStuInfo(student);
        model.addAttribute("snum", snum);
        return "redirect: personalOrder.html";
    }

    /*

     * @Author: Zhancheng Liang

     * @param :

     * @return :

     * @Description:退出登录

     *

     */

    @RequestMapping("/student/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:localhost:8887/Manage_Login/login/login.html";
    }


}
