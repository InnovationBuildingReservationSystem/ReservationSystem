package Impl;

import pojo.Administrator;
import service.AdminService;

public class AdminServiceImpl implements AdminService {
    @Override
    public Administrator getAdministrator(String aid) {
        return null;
    }

    @Override
    public boolean validateAdmin(String aid, String apwd) {
        return false;
    }
}
