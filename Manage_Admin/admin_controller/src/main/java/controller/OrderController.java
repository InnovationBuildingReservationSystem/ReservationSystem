package controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pojo.OrderItem;
import pojo.Ordercr;
import service.OrderService;

import java.text.ParseException;
import java.util.List;

@Controller
public class OrderController
{
    @Autowired
    private OrderService orderListService;
    @RequestMapping("/admin/orderTable")
    public  String
    getOrderTable(Model model)
    {
        List<OrderItem> orderList = orderListService.getOrderList();
        model.addAttribute("orderList",orderList);
        return  "orderTable";
    }
    @RequestMapping("/admin/optionStatus")
    public  String changeStatus(Integer oid,Integer option)
    {
        if(oid==null||option==null)
        {
            return "redirect:admin/orderTable.html";
        }
        orderListService.changeOption(oid, option);
        return "redirect:admin/orderTable.html";
    }
}
