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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@Transactional
public class NoticeController {
    @Autowired
    NoticeService noticeService;

    @Autowired
    StudentService studentService;

    @RequestMapping("/student/notice")
    public String getNotice(HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();
        Student student = (Student) session.getAttribute("studentSession");
        if (session == null || student == null) {
            return "login";
        }
        session.setAttribute("studentSession", student);
        model.addAttribute("student", student);
        List<Notice> list = noticeService.getNotice();
        model.addAttribute("noticeList", list);
        model.addAttribute("student", student);
        model.addAttribute("snum", student.getSnum());
        return "notice";
    }
}
