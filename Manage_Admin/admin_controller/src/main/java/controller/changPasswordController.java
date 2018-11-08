package controller;

import Impl.ChangePasswordImpl;
import com.sun.org.glassfish.gmbal.ParameterNames;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import service.ChangePasswordService;

import javax.jws.WebParam;

@Controller
public class changPasswordController
{
    @Autowired
    private ChangePasswordService changePasswordService;
    @RequestMapping("/changePasswordById")
    public String changePasswordById(@RequestParam(defaultValue = "6") String id,  String password, String newPassword,Model model)
    {
        int check=0;
        model.addAttribute("check",check);
        if((StringUtils.isEmpty(password)||StringUtils.isEmpty(newPassword)))
        {
            return "changePassword";
        }
        System.out.println(password + newPassword);
        check = changePasswordService.changePassword(id, password, newPassword);
        System.out.println(check);
        model.addAttribute("check",check);
        return  "changePassword";
    }
}
