package com.client_ser_store;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection_store.Connect1;

/**
 * Servlet implementation class C_feedback_ser
 */
@WebServlet("/C_feedback_ser")
public class C_feedback_ser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public C_feedback_ser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		RequestDispatcher rd = request.getRequestDispatcher("/client_pan/c_contact.jsp");
		rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try
		{
			
			Connect1 obj = new Connect1();
			Connection con = obj.get_con();
			
			String name = request.getParameter("f_name");
			String email = request.getParameter("f_email");
			String phone = request.getParameter("f_phone");
			String message = request.getParameter("f_message");
						 
			String insert = "insert into feedback_tb(f_name,f_email,f_phone,f_message) values (?,?,?,?)";
			
			PreparedStatement ps = con.prepareStatement(insert);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, phone);
			ps.setString(4, message);
			
			int c = ps.executeUpdate();
			RequestDispatcher rd = request.getRequestDispatcher("/client_pan/thanks.jsp");
			rd.forward(request, response);
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
	}

}
