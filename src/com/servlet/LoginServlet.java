package com.servlet;
 
import com.dao.UserDao;
import com.dao.impl.UserDaoImpl;
import com.domain.User;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
 
@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //�����ַ�
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
 
        //ת���ַ���
        String username = request.getParameter("username");
        String password = request.getParameter("password");
 
        //����UserDao��UserDaoImpl�༰����
       UserDao ud = new UserDaoImpl();
        boolean pass =false;
        //��������ת��Ӧҳ��
        boolean flag = ud.checkLogin(username, password);
        if(flag){
            //���ύ���û�������session��ǰ̨��¼�ɹ�ҳ���ȡ
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            pass=true;
            //��¼�ɹ�����
            if("YGY".equals(username)) {
            	response.sendRedirect("admin.jsp");
            }else {
            	 response.sendRedirect("about.jsp");
            }
           
        }else {
        	response.getWriter().write("your username or password is wrong!");
        	request.getRequestDispatcher("login.jsp").forward(request, response);
        	request.getRequestDispatcher("logf.jsp").forward(request, response);
		}
        /*if(password.equals("111111")) {
        	 HttpSession session = request.getSession();
             session.setAttribute("username", username);
             // pass=true;
             //��¼�ɹ�����ת
             response.sendRedirect("about.jsp");
        }else {
        	response.getWriter().write("your username or password is wrong!");
        }*/
    }
 
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}

