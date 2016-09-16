package com.admin_ser_store;
import java.sql.Connection;
import java.sql.Statement;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection_store.Connect1;

/**
 * Servlet implementation class Contact_view_ser
 */
@WebServlet("/Contact_view_ser")
public class Contact_view_ser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Contact_view_ser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		

		try
		{
			Connect1 obj = new Connect1();
			Connection con = obj.get_con();
			
			String sel_data = "select * from contact_tb";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sel_data);
			
			request.setAttribute("CONTACT_DATA", rs);
			RequestDispatcher rd = request.getRequestDispatcher("/admin_pan/contactus.jsp");
			rd.forward(request, response);
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request,response);
	}

}
