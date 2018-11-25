package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pojo.Notice;
import pojo.Student;
import service.NoticeService;
import service.StudentService;

import java.util.List;

@Controller
@Transactional
public class NoticeController {
    @Autowired
    NoticeService noticeService;

    @Autowired
    StudentService studentService;

    @RequestMapping("/student/notice")
    public String getNotice(Model model, @RequestParam(value = "snum", defaultValue = "16427024") String snum) {
        Student student = studentService.getStudentInfo(snum);
        List<Notice> list = noticeService.getNotice();
        model.addAttribute("noticeList", list);
        model.addAttribute("student", student);
        model.addAttribute("snum", snum);
        return "notice";
    }
}
