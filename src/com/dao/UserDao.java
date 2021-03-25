package com.dao;
 
import com.domain.Order;
import com.domain.User;
import com.service.Custom;
 
public interface UserDao {
    //��������������ķ���
    public boolean save(User u);
    public boolean save(Custom u);
    public boolean saveOrder(Order u);
    public boolean checkLogin(String username, String password);
	
}

