package com.admin_ser_store;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection_store.Connect1;

/**
 * Servlet implementation class Tips_edit_ser
 */
@WebServlet("/Tips_edit_ser")
public class Tips_edit_ser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public String id="";        
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Tips_edit_ser() {
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
				
				String sel_data = "select * from tips_db where id = ?";
				PreparedStatement ps = con.prepareStatement(sel_data) ;
				ps.setString(1, id);	
				
				
				ResultSet rs = ps.executeQuery();
				
				
				request.setAttribute("TIPS_ALL_DATA", rs);
				RequestDispatcher rd = request.getRequestDispatcher("/admin_pan/a_tips_edit.jsp");
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
			String par = request.getParameter("tips");
			Connect1 obj = new Connect1();
			Connection con = obj.get_con();
			
			
			String edit_data = "update tips_db set tips = ? where id = ?";
			PreparedStatement ps = con.prepareStatement(edit_data) ;
			ps.setString(1, par);
			ps.setString(2, id);
			
			int c = ps.executeUpdate();
			RequestDispatcher rd = request.getRequestDispatcher("Tips_view_ser");
			rd.forward(request, response);
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
	
	}

}
