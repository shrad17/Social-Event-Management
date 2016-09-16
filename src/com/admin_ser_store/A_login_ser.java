package com.admin_ser_store;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection_store.Connect1;

/**
 * Servlet implementation class A_login_ser
 */
@WebServlet("/A_login_ser")
public class A_login_ser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A_login_ser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if(request.getParameter("status")!=null)
		{
			String status = request.getParameter("status");
			if(status.compareTo("logout")==0)
			{
				HttpSession ses = request.getSession();
				ses.invalidate();
			}
		}
		RequestDispatcher rd = request.getRequestDispatcher("/admin_pan/admin_login.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String user = request.getParameter("uname");
		String pass = request.getParameter("pword");
		
		try
		{
			Connect1 obj = new Connect1();
			Connection con = obj.get_con();
			
			String str = "select * from admin_tb where username = '"+user+"' and password =  '"+pass+"'";
			Statement ps = con.createStatement();
			
			ResultSet rs = ps.executeQuery(str);
			
			if(rs.next())
			{
				HttpSession ses = request.getSession();
				ses.setAttribute("USER_SES", user);
				RequestDispatcher rd = request.getRequestDispatcher("Index_ser");
				rd.forward(request, response);
			}
			else
			{
				RequestDispatcher rd = request.getRequestDispatcher("/admin_pan/admin_login.jsp");
				rd.forward(request, response);
			}
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
	}

}
