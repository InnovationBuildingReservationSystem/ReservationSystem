package controller.wordexport;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;
import pojo.Ordercr;

import javax.annotation.Resource;
import java.io.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class WordTest {

    private Configuration configuration = null;

    public WordTest() {

    }

    public WordTest(FreeMarkerConfigurer freeMarkerConfigurer) {
        configuration = freeMarkerConfigurer.getConfiguration();
        configuration.setDefaultEncoding("UTF-8");
    }

    public void createWord(Ordercr ordercr, String sname) {
        Map<String, Object> dataMap = new HashMap<String, Object>();
        getData(dataMap, ordercr, sname);
        //configuration.setClassForTemplateLoading(this.getClass(), "classpath:/ftl/");//模板文件所在路径
        Template t = null;
        try {
            t = configuration.getTemplate("创新楼创客教室学生活动备案审批表.ftl"); //获取模板文件
        } catch (IOException e) {
            e.printStackTrace();
        }
        File outFile = new File("D:/创新楼教室预约系统/outFile/创新楼创客教室学生活动备案审批表.doc"); //导出文件
        Writer out = null;
        try {
            FileOutputStream fos = new FileOutputStream(outFile);
            OutputStreamWriter oWriter = new OutputStreamWriter(fos, "UTF-8");
            out = new BufferedWriter(oWriter);
        } catch (FileNotFoundException e1) {
            e1.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        try {
            t.process(dataMap, out); //将填充数据填入模板文件并输出到目标文件
        } catch (TemplateException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void getData(Map<String, Object> dataMap, Ordercr ordercr, String sname) {
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        Date starttime = null;
        Date endtime = null;
        try {
            starttime = df.parse(ordercr.getStarttime());
            endtime = df.parse(ordercr.getEndtime());
        } catch (Exception e) {
            e.printStackTrace();
        }
        Calendar start = Calendar.getInstance();
        Calendar end = Calendar.getInstance();

        start.setTime(starttime);
        end.setTime(endtime);

        int year = start.get(start.YEAR);
        int month = start.get(start.MONTH) + 1;
        int day = start.get(start.DATE);

        /*String stime = start.get(start.HOUR) + ":" + start.get(start.MINUTE);
        String etime = end.get(end.HOUR) + ":" + end.get(end.MINUTE);*/

        dataMap.put("sname", sname);
        dataMap.put("year", year);
        dataMap.put("month", month);
        dataMap.put("day", day);
        dataMap.put("cid", ordercr.getCid());
        dataMap.put("stelphone", ordercr.getStelephone());
        dataMap.put("ttelphone", ordercr.getTtelephone());
        dataMap.put("faculty", ordercr.getFaculty());
        dataMap.put("teacher", ordercr.getTeacher());
        dataMap.put("attendcount", ordercr.getAttendcount());
        dataMap.put("theme", ordercr.getTheme());
        dataMap.put("starttime", ordercr.getStarttime().substring(11, 16));
        dataMap.put("endtime", ordercr.getEndtime().substring(11, 16));
        dataMap.put("snum", ordercr.getSnum());
        dataMap.put("groupname", ordercr.getGroupname());
    }
}