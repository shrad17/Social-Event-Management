package com.admin_ser_store;

import java.io.IOException;
import java.sql.Connection;
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
 * Servlet implementation class Tips_view_ser
 */
@WebServlet("/Tips_view_ser")
public class Tips_view_ser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Tips_view_ser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connect1 obj = new Connect1();
		try
		{
			Connection con = obj.get_con();
			
			//Class.forName("oracle.jdbc.OracleDriver");
			//Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","soc_event","project-8");
		
			
			String str = "select * from tips_db";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(str);
			
			request.setAttribute("TIPS_ALL_DATA", rs);
				
			RequestDispatcher rd = request.getRequestDispatcher("/admin_pan/a_tips_view.jsp");
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
