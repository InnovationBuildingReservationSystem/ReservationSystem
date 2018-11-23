package Impl;

import mapper.AdministratorMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pojo.Administrator;
import pojo.AdministratorExample;
import service.AdminService;

@Service
@Transactional
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdministratorMapper administratorMapper;

    @Override
    public Administrator getAdministrator(String aid) {
        return administratorMapper.selectByPrimaryKey(aid);
    }

    @Override
    public boolean validateAdmin(String aid, String apwd) {
        AdministratorExample example = new AdministratorExample();
        example.createCriteria().andAidEqualTo(aid).andApwdEqualTo(apwd);
        Integer count = administratorMapper.countByExample(example);
        if(count != 1){
            return true;
        }
        return false;
    }
}
