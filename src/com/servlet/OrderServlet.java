package com.servlet;
 
import com.dao.UserDao;
import com.dao.impl.UserDaoImpl;
import com.domain.Order;
import com.domain.User;
import com.service.Custom;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.text.SimpleDateFormat;
import java.util.Date;
 
@WebServlet("/orderServlet")
public class OrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //�����ַ�
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
 
        //ת���ַ���
        String Cost = request.getParameter("Cost");
        String Name = request.getParameter("Name");
        String Start_time = request.getParameter("Start_time");
        String End_time = request.getParameter("End_time");
        String Cardstyle = request.getParameter("Cardstyle");
        String ID_card = request.getParameter("ID_card");
        String Birth_time = request.getParameter("Birth_time");
        String Gender = request.getParameter("Gender");
        String Phone = request.getParameter("Phone");
        String Address = request.getParameter("Address");
        String Beneficiary = request.getParameter("Beneficiary");
 
        //����UserDao��UserDaoImpl�༰����
        UserDao ud = new UserDaoImpl();
        Order u = new Order();
 
        //����û��ύ�����ݵ����ݿ�
        u.setCost(Cost);
        u.setName(Name);
        u.setStart_time(Start_time);
        u.setEnd_time(End_time);
        u.setCardstyle(Cardstyle);
        u.setID_card(ID_card);
        u.setBirth_time(Birth_time);
        u.setGender(Gender);
        u.setPhone(Phone);
        u.setAddress(Address);
        u.setBeneficiary(Beneficiary);
        
       boolean flag = ud.saveOrder(u);
       
       
        Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
		
		InetAddress ip4 = Inet4Address.getLocalHost();
		HttpSession session = request.getSession();
		session.setAttribute("Cost", Cost);
		session.setAttribute("Name", Name);

		session.setAttribute("Start_time", Start_time);
		session.setAttribute("End_time", End_time);
		session.setAttribute("Cardstyle", Cardstyle);
		session.setAttribute("ID_card", ID_card);
		session.setAttribute("Birth_time", Birth_time);
		session.setAttribute("Gender", Gender);
		session.setAttribute("Phone", Phone);
		session.setAttribute("Address", Address);
		session.setAttribute("Beneficiary", Beneficiary);
		
        if(flag){
            //ע��ɹ�����ת
            response.sendRedirect("orderdetail.jsp");
        }else{
            response.sendRedirect("order.jsp");
        }
    }
 
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}

