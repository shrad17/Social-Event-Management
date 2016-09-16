package com.client_ser_store;

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
import javax.servlet.http.HttpSession;

import com.connection_store.Connect1;

/**
 * Servlet implementation class C_view_profile
 */
@WebServlet("/C_view_profile")
public class C_view_profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public C_view_profile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    ResultSet rs=null;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
			try
			{
				Connect1 obj = new Connect1();
				Connection con = obj.get_con();
				
				HttpSession se1=request.getSession();	
				String email=(String)se1.getAttribute("USER_CLIENT");
				
				String sel_data = "select * from c_reg where email='"+email+"'";
				Statement st = con.createStatement();
				rs = st.executeQuery(sel_data);
				request.setAttribute("data", rs);
				
				
				RequestDispatcher rd = request.getRequestDispatcher("/client_pan/c_view_profile.jsp");
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
