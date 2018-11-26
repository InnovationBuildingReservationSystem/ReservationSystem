package Impl;

import mapper.AdministratorMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Administrator;
import service.LoginService;

@Service
public class LoginServiceImpl implements LoginService
{
    @Autowired
    private AdministratorMapper administratorMapper;
    @Override
    public boolean authentication(Administrator admin)
    {
        Administrator adminCheck = administratorMapper.selectByPrimaryKey(admin.getAid());
        if (adminCheck==null||!(adminCheck.getApwd().equals(admin.getApwd()))||(adminCheck.getArole()!=1))
        {
            return  false;
        }
        admin.setArole(1);
        return  true;
    }
}
