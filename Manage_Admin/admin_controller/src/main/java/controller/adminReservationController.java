package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import service.AdminReservationService;

@Controller
public class adminReservationController
{
    @Autowired
    private AdminReservationService adminReservationService;
    @RequestMapping("/admin/adminReservation")
    public  String adminReservation()
    {
        return  "adminReservation";
    }
}
