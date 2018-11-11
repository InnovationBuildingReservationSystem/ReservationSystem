package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pojo.Ordercr;
import service.OrderService;

import java.text.ParseException;
import java.util.List;

@Controller
public class OrdercrController {
    @Autowired
    private OrderService orderService;

    @RequestMapping("orderTable")
    public String getOrderTable(Model model) throws ParseException {
        List<Ordercr> orderList = orderService.getOrderList();
        model.addAttribute("orderList",orderList);
        return "orderTable";
    }



}
