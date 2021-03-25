package com.cost;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class InsuranceCost
 */
@WebServlet("/InsuranceCost")
public class InsuranceCost extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsuranceCost() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String  ChildrenCost= request.getParameter("ChildrenCost");	
		String  OldCost= request.getParameter("OldCost");	
		String  ManCost= request.getParameter("ManCost");	
		String  ShortCost= request.getParameter("ShortCost");	
		String  PersonalCost= request.getParameter("PersonalCost");	
		String  TogetherCost= request.getParameter("TogetherCost");	
		String  TogetherShortCost= request.getParameter("TogetherShortCost");	
		String  TogetherTravelCost= request.getParameter("TogetherTravelCost");	
		String  TravelCost= request.getParameter("TravelCost");	
		String  TravelHolidayCost= request.getParameter("TravelHolidayCost");	
		String  TravelWorldCost= request.getParameter("TravelWorldCost");	
		String  OneYearCost= request.getParameter("OneYearCost");	
		HttpSession session = request.getSession();
		session.setAttribute("ChildrenCost", ChildrenCost);
		
		if(ChildrenCost!=null) {
			session.setAttribute("Number", ChildrenCost);
			request.getRequestDispatcher("order.jsp").forward(request, response);
		}/*else if(InsuranceCos!=null) {
			request.getRequestDispatcher("test.jsp").forward(request, response);
		}*/
		else if(OldCost!=null){
			session.setAttribute("Number", OldCost);
			request.getRequestDispatcher("order.jsp").forward(request, response);
		}else if(ManCost!=null){
			session.setAttribute("Number", ManCost);
			request.getRequestDispatcher("order.jsp").forward(request, response);
		}else if(ShortCost!=null){
			session.setAttribute("Number",ShortCost);
			request.getRequestDispatcher("order.jsp").forward(request, response);
		}else if(PersonalCost!=null){
			session.setAttribute("Number", PersonalCost);
			request.getRequestDispatcher("order.jsp").forward(request, response);
		}else if(TogetherCost!=null){
			session.setAttribute("Number", TogetherCost);
			request.getRequestDispatcher("order.jsp").forward(request, response);
		}else if(TogetherShortCost!=null){
			session.setAttribute("Number", TogetherShortCost);
			request.getRequestDispatcher("order.jsp").forward(request, response);
		}else if( TogetherTravelCost!=null){
			session.setAttribute("Number",  TogetherTravelCost);
			request.getRequestDispatcher("order.jsp").forward(request, response);
		}else if(TravelCost!=null){
			session.setAttribute("Number", TravelCost);
			request.getRequestDispatcher("order.jsp").forward(request, response);
		}else if(TravelHolidayCost!=null){
			session.setAttribute("Number", TravelHolidayCost);
			request.getRequestDispatcher("order.jsp").forward(request, response);
		}else if(TravelWorldCost!=null){
			session.setAttribute("Number", TravelWorldCost);
			request.getRequestDispatcher("order.jsp").forward(request, response);
		}else if(OneYearCost!=null){
			session.setAttribute("Number", OneYearCost);
			request.getRequestDispatcher("order.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("about.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
