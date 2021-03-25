package com.servlet;

import java.sql.*;

import com.domain.Order;
//import com.domain.User;
import com.util.DBUtil;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import org.apache.commons.dbutils.QueryRunner;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// boolean flag = false;
		Connection conn = null;
		ResultSet rs = null;
		
		
		conn=DBUtil.getConnection();
		
		PreparedStatement pst = null;
		
		String sql1="select * from u_order where Name='hjgj'";

		
		Order order=new Order();
		try {
			pst=conn.prepareStatement(sql1);
			rs = pst.executeQuery(sql1);
			while(rs.next()) {
				
				order.setStart_time(rs.getString("Start_time"));
				order.setEnd_time(rs.getString("End_time"));
				order.setCardstyle(rs.getString("Cardstyle"));
				order.setAddress(rs.getString("Address"));
				order.setPhone(rs.getString("Phone"));
				order.setBirth_time(rs.getString("Birth_time"));
				order.setBeneficiary(rs.getString("Beneficiary"));
				order.setID_card(rs.getString("ID_card"));
				order.setId(rs.getInt("id"));
				order.setGender(rs.getString("Gender"));
			}
			request.setAttribute("order", order);

			HttpSession session = request.getSession();
			session.setAttribute("Start_time",order.getStart_time());
			session.setAttribute("Cardstyle", order.getCardstyle());
			session.setAttribute("ID_card", order.getID_card());
			session.setAttribute("End_time",order.getEnd_time());
			session.setAttribute("Address", order.getAddress());
			session.setAttribute("Phone",order.getPhone());
			session.setAttribute("Beneficiary", order.getBeneficiary());
			session.setAttribute("Birth_time", order.getBirth_time());
			session.setAttribute("Id",order.getId());
			session.setAttribute("Gender",order.getGender());
			
			
			request.getRequestDispatcher("OrderTest.jsp").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
