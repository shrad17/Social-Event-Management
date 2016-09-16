package com.client_ser_store;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
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
 * Servlet implementation class C_login_ser
 */
@WebServlet("/C_login_ser")
public class C_login_ser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public C_login_ser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession ses1 = request.getSession();
		ses1.setAttribute("PAGE", "Login");
		
		RequestDispatcher rd = request.getRequestDispatcher("/client_pan/c_login.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ResultSet rs;
		String uname = request.getParameter("t1");
		String pass = request.getParameter("t2");
		//Connection con = null;
		try
		{
			Connect1 obj = new Connect1();
			Connection con = obj.get_con();
			
			 
			 String str = "select * from c_reg where email= '"+uname+"' and password= '"+pass+"' and status='Active'";
			 Statement st = con.createStatement();
			 rs = st.executeQuery(str);
			 if(rs.next())
			 {
				request.setAttribute("LOGIN_VALUE", "1");
				HttpSession ses1 = request.getSession();
				ses1.setAttribute("USER_CLIENT", uname);
				ses1.setAttribute("USERN", rs.getString(2));
				RequestDispatcher rd1 = request.getRequestDispatcher("/client_pan/c_login_wel.jsp");
				rd1.forward(request, response);
			 }
			 else
			 {
				 request.setAttribute("LOGIN_VALUE", "0");
				 RequestDispatcher rd2= request.getRequestDispatcher("/client_pan/c_login.jsp");
				rd2.forward(request, response);
			 }
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}


	}

}
