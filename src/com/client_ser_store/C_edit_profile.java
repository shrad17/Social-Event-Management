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

import com.connection_store.Connect1;

/**
 * Servlet implementation class C_edit_profile
 */
@WebServlet("/C_edit_profile")
public class C_edit_profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public C_edit_profile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    String email="";
    Statement st=null;
    Connection con=null;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try
		{
			Connect1 obj = new Connect1();
			Connection con = obj.get_con();
			
			if(request.getParameter("sr_no")!=null)
			{
				email=request.getParameter("sr_no");
				String i_data = "select * from c_reg where email='"+email+"' ";
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery(i_data);
				request.setAttribute("data", rs);
			}	
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("/client_pan/c_edit_profile.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	int c=0;
	try
	{
		Connect1 obj = new Connect1();
		Connection con = obj.get_con();
	       
			String f_name = request.getParameter("t1");
			String l_name = request.getParameter("t2");
			String gen = request.getParameter("t3");
			String b_date = request.getParameter("t4");
			String address = request.getParameter("t5");
			String email = request.getParameter("t6");
			String cont = request.getParameter("t7");
			String type=request.getParameter("s1");
			
			String str1 = "update c_reg set f_name='"+f_name+"',l_name='"+l_name+"' ,gen='"+gen+"',b_date='"+b_date+"',Address='"+address+"',email='"+email+"',cont='"+cont+"',type='"+type+"' where f_name='"+f_name+"'";
			st = con.createStatement();
			c = st.executeUpdate(str1);
	
			if(c==1)
			{
				RequestDispatcher rd = request.getRequestDispatcher("/client_pan/c_update_wel.jsp");
				rd.forward(request, response);
			}
			else
			{
				System.out.println("Try Again!");
			}
			

	}
	catch(Exception ex)
	{
		ex.printStackTrace();

	}
	}
	}

