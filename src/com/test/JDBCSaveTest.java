package com.test;
 
import com.dao.UserDao;
import com.dao.impl.UserDaoImpl;
import com.domain.User;
 
public class JDBCSaveTest {
    public static void main(String[] args) {
        //����������ݵ����ݿ�
        UserDao ud = new UserDaoImpl();
        User u = new User();
        u.setUsername("zhangsan");
        u.setPassword("123456");
        boolean flag = ud.save(u);
        if(flag){
            System.out.println("���ԣ�����虽然该是多少��ӵ����ݿ�ɹ���");
        }else{
            System.out.println("���ԣ�������ӵ����ݿ�ʧ�ܣ�");
        }
    }
}

