package controller;

//mvn install -Dmaven.test.skip=true

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pojo.Administrator;
import pojo.Student;
import service.AdminService;
import service.StudentService;

@Controller
@Transactional
public class UserController {
    @Autowired
    private StudentService studentService;

    @Autowired
    private AdminService adminService;

    /**
     * @param :
     * @return :login.html
     * @Author: Zhancheng Liang
     * @Description:登录界面
     */
    @RequestMapping("/login/login")
    public String login() {
        return "login";
    }

    public static boolean isNumeric(String str) {
        for (int i = str.length(); --i >= 0; ) {
            int chr = str.charAt(i);
            if (chr < 48 || chr > 57)
                return false;
        }
        return true;
    }

    /**
     * @param : username 用户名， pwd密码
     * @return :  login.html/personalOrder.html/administrator.html
     * @Author: Zhancheng Liang
     * @Description: 登录验证
     */
    @RequestMapping(value = "login/loginValidate", method = RequestMethod.POST)
    public String validateLogin(Model model, @RequestParam("username") String username, @RequestParam("pwd") String pwd) {
        if (username.equals("admin")) {
            if (adminService.validateAdmin(username.trim(), pwd.trim())) {
                Administrator administrator = adminService.getAdministrator(username.trim());
                model.addAttribute("admin", administrator);
                model.addAttribute("aid", administrator.getAid());
                return "redirect:http://localhost:8888/Manage_Admin/admin/orderInformation.html";
            }
        } else {
            if (studentService.validateStudent(username.trim(), pwd.trim())) {
                Student student = studentService.getStudentInfo(username.trim());
                model.addAttribute("snum", student.getSnum());
                model.addAttribute("student", student);
                return "redirect:http://localhost:8888/Manage_Student/student/personalOrder.html";
            }
        }
        model.addAttribute("username", username);
        model.addAttribute("pwd", pwd);
        model.addAttribute("errorMessage", "用户名或密码错误");
        return "login";
    }

    /*

     * @Author: Zhancheng Liang

     * @param :

     * @return :

     * @Description: 找回密码页面

     *

     */
    @RequestMapping("login/forgetPassword")
    public String forgetPassword() {
        return "forgetPassword";
    }

    @RequestMapping("login/passwordReset")
    public String passwordReset(Model model, @RequestParam("snum") String snum, @RequestParam("sname") String sname, @RequestParam("spwd") String spwd, @RequestParam("spwdConvinced") String spwdConvinced, @RequestParam("sid") String sid, @RequestParam("stelphone") String stelphone) {
        Student student = studentService.getStudentInfo(snum);
        if (!sname.trim().equals(student.getSname()) || !sid.trim().equals(student.getSid()) || spwd == null || sid.trim().length() != 18 || !stelphone.trim().equals(student.getStelphone())) {
            model.addAttribute("errorMessage", "所提交的信息有误，请检查后重试！");
            model.addAttribute("snum", snum);
            model.addAttribute("spwd", spwd);
            model.addAttribute("spwdConvinced", spwdConvinced);
            model.addAttribute("sname", sname);
            model.addAttribute("sid", sid);
            model.addAttribute("stelephone", stelphone);
            return "forgetPassword";
        } else if (!spwd.equals(spwdConvinced)) {
            model.addAttribute("errorMessage", "两次密码内容不一致！");
            model.addAttribute("snum", snum);
            model.addAttribute("spwd", spwd);
            model.addAttribute("spwdConvinced", spwdConvinced);
            model.addAttribute("sname", sname);
            model.addAttribute("sid", sid);
            model.addAttribute("stelephone", stelphone);
            return "forgetPassword";
        } else if (spwd.length() < 6) {
            model.addAttribute("errorMessage", "密码长度应不少于6位");
            model.addAttribute("snum", snum);
            model.addAttribute("spwd", spwd);
            model.addAttribute("spwdConvinced", spwdConvinced);
            model.addAttribute("sname", sname);
            model.addAttribute("sid", sid);
            model.addAttribute("stelphone", stelphone);
            return "forgetPassword";
        }
        student.setSpwd(spwd);
        studentService.updatePassword(student);
        model.addAttribute("snum", snum);
        return "redirect: login.html";
    }
}
