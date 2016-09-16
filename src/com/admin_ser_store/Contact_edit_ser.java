package com.admin_ser_store;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection_store.Connect1;

/**
 * Servlet implementation class Contact_edit_ser
 */
@WebServlet("/Contact_edit_ser")
public class Contact_edit_ser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String CONTACT_DATA = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Contact_edit_ser() {
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
			RequestDispatcher rd = request.getRequestDispatcher("/admin_pan/contact_edit.jsp");
			rd.forward(request, response);
			
		}
		catch (Exception ex)
		{
			System.out.println(ex);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try
		{
			String name = request.getParameter("txt1");
			String address = request.getParameter("txt2");
			String contact= request.getParameter("txt3");
			String fax = request.getParameter("txt4");
			String email = request.getParameter("txt5");
			String website = request.getParameter("txt6");
			Connect1 obj = new Connect1();
			Connection con = obj.get_con();
			
			
			String edit_data = "update contact_tb set name=?,address=?,contact=?,fax=?,email=?,website=?";
			PreparedStatement ps = con.prepareStatement(edit_data) ;
			ps.setString(1, name);
			ps.setString(2, address);
			ps.setString(3, contact);
			ps.setString(4, fax);
			ps.setString(5, email);
			ps.setString(6, website);
			
			int c = ps.executeUpdate();
			
			RequestDispatcher rd = request.getRequestDispatcher("Contact_view_ser");
			rd.forward(request, response);

			
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
	}

}
