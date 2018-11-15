package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pojo.OrderItem;
import service.OrderService;
import service.ReservationService;

import java.util.List;

@Controller
public class ReservationClassroomController
{
    @Autowired
    private OrderService orderService;
    @Autowired
    private ReservationService reservationService;
    @RequestMapping("/admin/reservationClassroom")

    public  String getReservationClassroom(Model model)
    {

        return "reservationClassroom";
    }
}
