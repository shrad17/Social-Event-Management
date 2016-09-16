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
 * Servlet implementation class Cl_req_ser
 */
@WebServlet("/Cl_req_ser")
public class Cl_req_ser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cl_req_ser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stubConnect1 obj = new Connect1();
		try
		{
			Connect1 obj = new Connect1();
			Connection con = obj.get_con();
			
			String str = "select * from book_tb  ";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(str);
			
			request.setAttribute("BOOK_DATA", rs);
				
			RequestDispatcher rd = request.getRequestDispatcher("/admin_pan/cl_req.jsp");
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
