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

import com.connection_store.Connect1;

/**
 * Servlet implementation class Title_edit_ser
 */
@WebServlet("/Title_edit_ser")
public class Title_edit_ser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Title_edit_ser() {
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
			
			String sel_data = "select * from title_tb";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sel_data);
			
			request.setAttribute("TITLE_DATA", rs);
			RequestDispatcher rd = request.getRequestDispatcher("/admin_pan/title_e.jsp");
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
		try
		{
			String client_t= request.getParameter("txt1");
			String admin_t= request.getParameter("txt2");
			
			Connect1 obj = new Connect1();
			Connection con = obj.get_con();
			
			
			String edit_data = "update title_tb set client_t=?,admin_t=?";
			PreparedStatement ps = con.prepareStatement(edit_data) ;
			ps.setString(1,client_t);
			ps.setString(2,admin_t);
			
			
			int c = ps.executeUpdate();
			
			RequestDispatcher rd = request.getRequestDispatcher("Title_view_ser");
			rd.forward(request, response);
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
	}

}
