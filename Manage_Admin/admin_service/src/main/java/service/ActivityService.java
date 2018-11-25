package service;

import pojo.PageBean;


public interface ActivityService
{
    PageBean getActivityPageBean(Integer pageSize, Integer currentPage, String nowDate);
}
