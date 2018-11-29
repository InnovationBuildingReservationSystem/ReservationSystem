package controller.wordexport;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;
import pojo.Ordercr;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class WordUtils {

    private Configuration configuration = null;
    private Integer max_count;

    public WordUtils(FreeMarkerConfigurer freeMarkerConfigurer, Integer max_count) {
        configuration = freeMarkerConfigurer.getConfiguration();
        configuration.setDefaultEncoding("UTF-8");
        this.max_count = max_count;
    }

    public File createWord(Ordercr ordercr, String sname) {
        Map<String, Object> dataMap = new HashMap<String, Object>();
        getData(dataMap, ordercr, sname);
        //configuration.setClassForTemplateLoading(this.getClass(), "classpath:/ftl/");//模板文件所在路径
        Template t = null;
        try {
            t = configuration.getTemplate("创新楼创客教室学生活动备案审批表(2003).ftl"); //获取模板文件
        } catch (IOException e) {
            e.printStackTrace();
        }
        /*/usr/local/dataFile/创新楼创客教室学生活动备案审批表.doc*/
        File outFile = new File("D:/创新楼教室预约系统/outFile/创新楼创客教室学生活动备案审批表.doc"); //导出文件
        Writer out = null;
        try {
            FileOutputStream fos = new FileOutputStream(outFile);
            OutputStreamWriter oWriter = new OutputStreamWriter(fos, StandardCharsets.UTF_8);
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
        return outFile;
    }

    private void getData(Map<String, Object> dataMap, Ordercr ordercr, String sname) {
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        String max_code = "" + (max_count + 1);
        String numId = "";

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

        String year = "" + start.get(start.YEAR);
        int month = start.get(start.MONTH) + 1;
        int day = start.get(start.DATE);

        /*String stime = start.get(start.HOUR) + ":" + start.get(start.MINUTE);
        String etime = end.get(end.HOUR) + ":" + end.get(end.MINUTE);*/

        DateFormat codeDf = new SimpleDateFormat("yyyyMMddHH");
        DateFormat codeDf1 = new SimpleDateFormat("HH");
        String orderId = "" + ordercr.getOrderid();

        while (orderId.length() != 6) {
            orderId = "0" + orderId;
        }

        numId = codeDf.format(starttime) + codeDf1.format(endtime) + orderId;

        dataMap.put("numId", numId);
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

    public void exportMillCertificateWord(HttpServletRequest request, HttpServletResponse response, Ordercr ordercr, String sname) throws IOException {
        File file = null;
        InputStream fin = null;
        ServletOutputStream out = null;
        try {
            // 调用工具类的createDoc方法生成Word文档
            file = createWord(ordercr, sname);
            fin = new FileInputStream(file);

            response.setCharacterEncoding("utf-8");
            response.setContentType("application/msword");
            // 设置浏览器以下载的方式处理该文件名
            String fileName = "创新楼创客教室学生活动备案审批表.doc";
            response.setHeader("Content-Disposition", "attachment;filename="
                    .concat(String.valueOf(URLEncoder.encode(fileName, "UTF-8"))));

            out = response.getOutputStream();
            byte[] buffer = new byte[512];  // 缓冲区
            int bytesToRead = -1;
            // 通过循环将读入的Word文件的内容输出到浏览器中
            while ((bytesToRead = fin.read(buffer)) != -1) {
                out.write(buffer, 0, bytesToRead);
            }
        } finally {
            if (file != null) {
                try {
                    if (fin != null)
                        fin.close();
                    if (out != null)
                        out.close();
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    System.gc();
                    file.delete();// 删除临时文件
                }
            }
        }
    }
}