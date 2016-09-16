package com.admin_ser_store;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection_store.Connect1;

/**
 * Servlet implementation class A_add_sch
 */
@WebServlet("/A_add_sch")
public class A_add_sch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A_add_sch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = request.getRequestDispatcher("/admin_pan/a_add_sch.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try
		{

			System.out.println("?Hello");
			Connect1 obj = new Connect1();
			Connection con = obj.get_con();
			
			String event = request.getParameter("t1");
			String venue = request.getParameter("t2");
			String date = request.getParameter("t3");
			String time = request.getParameter("t4");
			String city = request.getParameter("t5");
						 
			String insert = "insert into SCH_TB(e_name,e_venue,e_date,e_time,e_city) values (?,?,?,?,?)";
			
			PreparedStatement ps = con.prepareStatement(insert);
			ps.setString(1, event);
			ps.setString(2, venue);
			ps.setString(3, date);
			ps.setString(4, time);
			ps.setString(5, city);
			
			int c = ps.executeUpdate();
			RequestDispatcher rd = request.getRequestDispatcher("A_view_sch");
			rd.forward(request, response);
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}

		
	}

}
