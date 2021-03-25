package com.dao.impl;
 
import com.util.DBUtil;
import com.dao.UserDao;
import com.domain.Order;
import com.domain.User;
import com.service.Custom;

import java.sql.*;

import org.apache.commons.dbutils.QueryRunner;
 
 
 
//ʵ�ֽӿڵ��࣬����ֵΪ��������
public class UserDaoImpl implements UserDao {

	public boolean save(User user){
        boolean flag = false;
        Connection conn = null;
        PreparedStatement pst = null;
 
        /*
        ��������Connection�����Statement����
        ���ò������ݵ����ݿ�ķ���
        */
        conn = DBUtil.getConnection();
        String sql = "insert into user(username, password) values(?,?)";
        try {
            pst = conn.prepareStatement(sql);
            pst.setString(1, user.getUsername());
            pst.setString(2, user.getPassword());
            int row = pst.executeUpdate();
            if(row>0){
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(pst, conn);
        }
        return flag;
    }
    
    public boolean saveOrder(Order order){
    	boolean flag = false;
    	Connection conn = null;
        PreparedStatement pst = null;
        /*
        ��������Connection�����Statement����
        ���ò������ݵ����ݿ�ķ���
        */
        conn = DBUtil.getConnection();
        String sql = "insert into u_order(Name,Start_time,End_time,Cardstyle,ID_card,Birth_time,Gender,Phone,Address) values(?,?,?,?,?,?,?,?,?)";
        try {
            pst = conn.prepareStatement(sql);
            pst.setString(1, order.getName());
            pst.setString(2, order.getStart_time());
            pst.setString(3, order.getEnd_time());
            pst.setString(4, order.getCardstyle());
            pst.setString(5, order.getID_card());
            pst.setString(6, order.getBirth_time());
            pst.setString(7, order.getGender());
            pst.setString(8, order.getPhone());
            pst.setString(9, order.getAddress());
           // pst.setString(10, order.getBeneficiary());
            int row = pst.executeUpdate();
            if(row>0){
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(pst, conn);
        }
        return flag;  
    }

	
 
    public boolean checkLogin(String username, String password){
        boolean flag = false;
        Connection conn = null;
        Statement st = null;
        ResultSet rs = null;
        /*
        ����Connnection, Statement, ResultSet����
        ������֤��¼�ķ���
        */
        String sql ="select * from user where username = '"+ username +"'";
        conn = DBUtil.getConnection();
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()){
                if(rs.getString("password").equals(password)){
                    flag = true;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(rs, st, conn);
        }
        return flag;
    }
   
	@Override
	public boolean save(Custom u) {
		// TODO Auto-generated method stub
		return false;
	}
}

