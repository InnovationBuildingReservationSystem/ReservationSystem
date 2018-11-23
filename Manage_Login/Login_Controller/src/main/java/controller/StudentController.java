package controller;

//mvn install -Dmaven.test.skip=true

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pojo.Student;
import service.StudentService;

@Controller
@Transactional
public class StudentController {
    @Autowired
    private StudentService studentService;

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
    @RequestMapping("login/loginValidate")
    public String validateLogin(Model model, @RequestParam("username") String username, @RequestParam("pwd") String pwd) {

        return "";
    }
}
