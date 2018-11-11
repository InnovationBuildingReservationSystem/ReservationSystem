package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pojo.Classroom;
import pojo.PageBean;
import service.ClassroomService;

import java.util.ArrayList;
import java.util.List;

@Controller
public class informationController
{
    @Value("${CLASSROOM_PAGESIZE}")
    private  Integer pageSize;
    @Autowired
    private ClassroomService classroomService;
    @RequestMapping("/classroomInformation")
    public  String getClassroomInformation(String cid, Integer currentPage,  Model model)
    {
        PageBean   pageBean= classroomService.getPageBean(pageSize, currentPage, cid);
        model.addAttribute("pageBean",pageBean);
        return "classroomInformation";
    }
    @RequestMapping("/deleteClassroom")
    public  String deleteClassroom(String cid)
    {
        classroomService.deleteClassroom(cid);
        return "redirect:classroomInformation.html";
    }
    @RequestMapping("/addClassroom")
    public  Integer addClassroom(String cid,Integer cnum,Model model)
    {
        if(cid==null||cnum==null|| StringUtils.isEmpty(cid)||StringUtils.isEmpty(cid))
        {
            return -1;
        }
        Classroom classroom=new Classroom();
        classroom.setCid(cid);
        classroom.setCnum(cnum);
        Integer check=-1;
        try
        {
           check= classroomService.addClassroom(classroom);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        model.addAttribute("check",check);
        return  check;
    }
}
