package com.admin_ser_store;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection_store.Connect1;

/**
 * Servlet implementation class A_tips_ser
 */
@WebServlet("/A_tips_ser")
public class A_tips_ser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A_tips_ser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = request.getRequestDispatcher("/admin_pan/a_tips_add.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connect1 obj = new Connect1();
		String par = request.getParameter("tips");
		try
		{
			Connection con = obj.get_con();
		
			String i_data = "insert into tips_db(tips) values('"+par+"')";
			
			Statement st = con.createStatement();
			int c = st.executeUpdate(i_data);
			
			RequestDispatcher rd = request.getRequestDispatcher("Tips_view_ser");
			rd.forward(request, response);	
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
	}

}
