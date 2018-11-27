package Impl;

import mapper.OrdercrMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pojo.Ordercr;
import pojo.OrdercrExample;
import pojo.PageBean;
import service.AdminReservationService;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

@Service
@Transactional
public class AdminReservationServiceImpl implements AdminReservationService
{

    @Autowired
    private OrdercrMapper ordercrMapper;
    @Override
    public PageBean getPageBean(Integer pageSize, Integer currentPage)
    {
        return null;
    }

    @Override
    public boolean insertOrderAdmin(Ordercr orderAdmin,String orderDay)
    {

        if (selectOrderByDateAndCid(orderAdmin,orderDay))
        {
            String adminStartDate=orderAdmin.getStarttime();
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
            //日期字符串到日期类型的转换
            Date  startDate= null;
            try
            {
                startDate = format.parse(adminStartDate);
            } catch (ParseException e)
            {
                e.printStackTrace();
            }
            String  adminEndDate=orderAdmin.getEndtime();
            Date endDate= null;
            try
            {
                endDate = format.parse(adminEndDate);
            } catch (ParseException e)
            {
                e.printStackTrace();
            }
            if(startDate!=null&&endDate!=null)
            {
                //初始化order
                Ordercr orderItem=new Ordercr();
                orderItem.setCid(orderAdmin.getCid());
                orderItem.setCreatetime(orderAdmin.getCreatetime());
                orderItem.setFaculty(orderAdmin.getFaculty());
                orderItem.setGroupname(orderAdmin.getGroupname());
                orderItem.setOrderstatus(1);
                orderItem.setSnum(orderAdmin.getSnum());
                orderItem.setStelephone(orderAdmin.getTtelephone());
                orderItem.setTeacher(orderAdmin.getTeacher());
                orderItem.setTheme(orderAdmin.getTheme());
                orderItem.setAttendcount(orderAdmin.getAttendcount());
                orderItem.setCid(orderAdmin.getCid());
                //如果startDate大 返回 1 相等 返回 0 小于返回 -1
                while (startDate.compareTo(endDate) != 1)
                {
                    String orderStart = format.format(startDate);
                    String orderStartDate = orderStart + adminStartDate.substring(10, 16);
                    String orderEndDate = orderStart + adminEndDate.substring(10, 16);
                    orderItem.setEndtime(orderStartDate);
                    orderItem.setStarttime(orderEndDate);
                    ordercrMapper.insertSelective(orderItem);
                    Calendar gregorianCalendar = new GregorianCalendar();
                    gregorianCalendar.setTime(startDate);
                    gregorianCalendar.add(Calendar.DAY_OF_MONTH, 1);
                    startDate = gregorianCalendar.getTime();
                }
            };
            return true;
        }
        return false;
    }

    @Override
    public boolean selectOrderByDateAndCid(Ordercr orderAdmin,String orderDay)
    {
        String adminStartDate=orderAdmin.getStarttime();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        //日期字符串到日期类型的转换
        Date  startDate= null;
        try
        {
            startDate = format.parse(adminStartDate);
        } catch (ParseException e)
        {
            e.printStackTrace();
        }
        String  adminEndDate=orderAdmin.getEndtime();
        Date endDate= null;
        try
        {
            endDate = format.parse(adminEndDate);
        } catch (ParseException e)
        {
            e.printStackTrace();
        }
       if(startDate!=null&&endDate!=null)
       {
           //如果startDate大 返回 1 相等 返回 0 小于返回 -1
           while (startDate.compareTo(endDate) != 1)
           {

               String orderStart = format.format(startDate);
               if( dateToWeek(orderStart).equals(orderDay))
               {
                   continue;
               }
               String orderStartDate = orderStart + adminStartDate.substring(10, 16);
               String orderEndDate = orderStart + adminEndDate.substring(10, 16);
               OrdercrExample ordercrExample = new OrdercrExample();
               OrdercrExample.Criteria criteria = ordercrExample.createCriteria();
               criteria.andStarttimeGreaterThanOrEqualTo(orderStartDate);
               criteria.andEndtimeLessThanOrEqualTo(orderEndDate);
               criteria.andCidEqualTo(orderAdmin.getCid());
               List<Ordercr> orderList = ordercrMapper.selectByExample(ordercrExample);
               //判断此教室在此时间段内有没有已经使用
               if (orderList != null && orderList.size() != 0)
               {
                   return false;
               }
               Calendar gregorianCalendar = new GregorianCalendar();
               gregorianCalendar.setTime(startDate);
               gregorianCalendar.add(Calendar.DAY_OF_MONTH, 1);
               startDate = gregorianCalendar.getTime();
           }
       }
        return true;
    }
    public  String dateToWeek(String dateTime) {
        SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
        String[] weekDays = { "星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六" };
        Calendar cal = Calendar.getInstance(); // 获得一个日历
        Date datet = null;
        try {
            datet = f.parse(dateTime);
            cal.setTime(datet);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        int w = cal.get(Calendar.DAY_OF_WEEK) - 1; // 指示一个星期中的某天。
        if (w < 0)
            w = 0;
        return weekDays[w];
    }
}
