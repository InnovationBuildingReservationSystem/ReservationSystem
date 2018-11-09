package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController
{

    @RequestMapping("/changePassword")
    public  String getChangePassword()
    {
        return "changePassword";
    }

}
