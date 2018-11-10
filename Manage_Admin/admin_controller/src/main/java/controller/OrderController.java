package controller;

import mapper.ClassroomorderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pojo.Classroomorder;
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
        List<Classroomorder> orderList = orderListService.getOrderList();
        model.addAttribute("orderList",orderList);
        return  "orderTable";
    }
    @RequestMapping("/optionStatus")
    public  String changeStatus(Integer oid,Integer option)
    {
        orderListService.changeOption(oid,option);
        return "orderTable";
    }
}
