package service;

import pojo.Ordercr;
import pojo.PageBean;

import java.text.ParseException;

public interface AdminReservationService
{
    PageBean getPageBean(Integer pageSize, Integer currentPage);
    boolean insertOrderAdmin(Ordercr orderAdmin,String orderDay);
    boolean selectOrderByDateAndCid(Ordercr orderAdmin,String orderDay);
    String dateToWeek(String dateTime);
}
