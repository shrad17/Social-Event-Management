package com.client_ser_store;

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
import javax.servlet.http.HttpSession;

import com.connection_store.Connect1;

/**
 * Servlet implementation class C_about_ser
 */
@WebServlet("/C_about_ser")
public class C_about_ser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public C_about_ser() {
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
			HttpSession ses1 = request.getSession();
			ses1.setAttribute("PAGE", "About");
			
			Connect1 obj = new Connect1();
			Connection con = obj.get_con();
			
			String str = "select * from about_db";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(str);
			
			request.setAttribute("ABOUT_ALL_DATA", rs);
			
			RequestDispatcher rd = request.getRequestDispatcher("/client_pan/c_about.jsp");
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
	}

}
