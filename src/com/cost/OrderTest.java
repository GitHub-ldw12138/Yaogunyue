package com.cost;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.domain.Order;
import com.util.DBUtil;

public class OrderTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Connection conn = null;
		ResultSet rs = null;
		
		
		conn=DBUtil.getConnection();
		
		PreparedStatement pst = null;
		
		String sql1="select * from u_order where Name='fbs'";

		
		Order order=new Order();
		try {
			pst=conn.prepareStatement(sql1);
			rs = pst.executeQuery(sql1);
			while(rs.next()) {
				
				order.setStart_time(rs.getString("Start_time"));
				order.setCardstyle(rs.getString("Cardstyle"));
				order.setAddress(rs.getString("Address"));
				order.setPhone(rs.getString("Phone"));
				order.setBirth_time(rs.getString("Birth_time"));
				order.setBeneficiary(rs.getString("Beneficiary"));
			}
			
			System.out.println(order.getStart_time());


			//request.setAttribute("order", order);
			//request.getRequestDispatcher("OrderTest.jsp").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	}


