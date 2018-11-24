package service;

import pojo.Administrator;

public interface AdminService {
    Administrator getAdministrator(String aid);

    boolean validateAdmin(String aid, String apwd);
}
