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
public class StudentController {
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
}
