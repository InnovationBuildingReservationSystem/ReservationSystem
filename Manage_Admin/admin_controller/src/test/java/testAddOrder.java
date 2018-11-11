import mapper.OrderMapper;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import pojo.Order;

import java.text.SimpleDateFormat;
import java.util.Date;

public class testAddOrder
{
    @Test
    public  void  testAdd()
    {
        ApplicationContext applicationContext=new ClassPathXmlApplicationContext("classpath:spring/applicationContext-*.xml");
        OrderMapper orderMapper = applicationContext.getBean(OrderMapper.class);
        Order order=new Order();

        Date createTime=new Date();
        SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm");
        String createTimeString=dateFormat.format(createTime);
/*        order.setCreatetime(createTimeString);
        order.setEndtime(createTimeString);
        order.setFaculty("1");
        order.setGroupname("1");
        order.setOrderstatus(1);
        order.setSnum("1");
        order.setStarttime(createTimeString);
        order.setStelephone("1");
        order.setTeacher("1");
        order.setTheme("1");
        order.setAttendcount(1);
        order.setCid("205");*/

        orderMapper.selectByPrimaryKey(1);
    }
}
