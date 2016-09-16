package com.admin_ser_store;

import java.sql.*;
import java.sql.Connection;

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
 * Servlet implementation class About_edit_ser
 */
@WebServlet("/About_edit_ser")
public class About_edit_ser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public String id="";   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public About_edit_ser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		if(request.getParameter("id")!=null)
		{
			try
			{
				Connect1 obj = new Connect1();
				Connection con = obj.get_con();
				
				id = request.getParameter("id");
				
				String sel_data = "select * from about_db where id = ?";
				PreparedStatement ps = con.prepareStatement(sel_data) ;
				ps.setString(1, id);	
				
				
				ResultSet rs = ps.executeQuery();
				
				
				request.setAttribute("ABOUT_ALL_DATA", rs);
				RequestDispatcher rd = request.getRequestDispatcher("/admin_pan/about_e.jsp");
				rd.forward(request, response);
			}
			catch(Exception ex)
			{
				System.out.println(ex);
			}
		}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try
		{
			String par = request.getParameter("details");
			Connect1 obj = new Connect1();
			Connection con = obj.get_con();
			
			
			String edit_data = "update about_db set details = ? where id = ?";
			PreparedStatement ps = con.prepareStatement(edit_data) ;
			ps.setString(1, par);
			ps.setString(2, id);
			
			int c = ps.executeUpdate();
			RequestDispatcher rd = request.getRequestDispatcher("About_view_ser");
			rd.forward(request, response);
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
	}

}
