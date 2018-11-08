package Impl;

import mapper.AdministratorMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Administrator;
import pojo.AdministratorExample;
import service.ChangePasswordService;

import java.util.List;

@Service
public class ChangePasswordImpl implements ChangePasswordService
{
    @Autowired
    private AdministratorMapper administratorMapper;
    @Override
    public int checkPassword(String id,String password)
    {
        AdministratorExample administratorExample=new AdministratorExample();
        AdministratorExample.Criteria criteria = administratorExample.createCriteria();
        criteria.andApwdEqualTo(password);
        criteria.andAidEqualTo(id);
        List<Administrator> administrators = administratorMapper.selectByExample(administratorExample);
        if(administrators!=null&&administrators.size()!=0)
        {
            return 1;
        }
        else
            return 0;

    }

    @Override
    public int changePassword(String id,String password,String newPassword)
    {
        Administrator administrator=new Administrator();
        int check = checkPassword(id, password);
        administrator.setAid(id);
        administrator.setApwd(newPassword);
        administrator.setArole(1);
        int updateCheck=0;
        if(check==1)
        {
            updateCheck= administratorMapper.updateByPrimaryKey(administrator);
            return  updateCheck;
        }
        else
            return  0;

    }


}
