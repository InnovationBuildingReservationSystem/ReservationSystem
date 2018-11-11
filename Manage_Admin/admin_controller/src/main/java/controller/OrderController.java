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
    @RequestMapping("orderTable")
    public  String getOrderTable(Model model) throws ParseException
    {
        List<OrderItem> orderList = orderListService.getOrderList();
        model.addAttribute("orderList",orderList);
        return  "orderTable";
    }
    @RequestMapping("/optionStatus")
    public  String changeStatus(Integer oid,Integer option)
    {
        if(oid==null||option==null)
        {
            return "redirect:orderTable.html";
        }
        System.out.println("oid" + " : " +oid);
        System.out.println("option" + " : " +option);
        orderListService.changeOption(oid, option);
        return "redirect:orderTable.html";
    }
}
