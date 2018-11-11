package controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import service.ChangePasswordService;


@Controller
public class changPasswordController
{
    @Autowired
    private ChangePasswordService changePasswordService;
    @RequestMapping("changePassword")
    public  String getChangePassword()
    {
        return  "changePassword";
    }
    @RequestMapping("/changePasswordById")
    public String changePasswordById(@RequestParam(defaultValue = "6") String id, String password, String newPassword, Model model)
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
