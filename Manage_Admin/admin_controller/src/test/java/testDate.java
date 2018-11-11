import org.junit.Test;

import java.text.SimpleDateFormat;
import java.util.Date;

public class testDate
{
    @Test
    public  void  testDate()
    {
        System.out.println(new Date());
    }
    @Test
    public  void  testDatOption() throws InterruptedException
    {

        Date nowDate=new Date();
        Thread.sleep(1000);
        Date createDate=new Date();
        System.out.println(createDate.getTime()-nowDate.getTime());
    }
    @Test
    public  void  testGetTime() throws InterruptedException
    {
        SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm");
        Date startDate=new Date();

        Thread.sleep(5000);
        Date endDate=new Date();

        System.out.println(dateFormat.format(startDate));
    }
}
