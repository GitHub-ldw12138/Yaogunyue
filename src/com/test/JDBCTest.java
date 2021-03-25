package com.test;
 
import com.util.DBUtil;
 
import java.sql.Connection;
 
public class JDBCTest {
    public static void main(String[] args) {
        //�����������ݿ��Ƿ�ɹ�
        Connection conn = DBUtil.getConnection();
        if(conn != null){
            System.out.println("��车只需在�");
        }else{
            System.out.println("���ԣ��下浮不限��ʧ�ܣ�");
        }
    }
}

