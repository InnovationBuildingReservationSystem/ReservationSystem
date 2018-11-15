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
public class ChangPasswordController
{
    @Autowired
    private ChangePasswordService changePasswordService;
    @RequestMapping("/admin/changePassword")
    public  String getChangePassword()
    {
        return  "changePassword";
    }
    @RequestMapping("/admin/changePasswordById")
    public String changePasswordById(@RequestParam(defaultValue = "6") String id, String password, String newPassword, Model model)
    {
        /*
        
         * @Author: shize duan
        
         * @param : id 管理员id password 管理员密码  newPassword 新密码
           
         * @return : 返回到修改密码姐界面
            
         * @Description:
        
         * 管理员修改密码
        
         */
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
