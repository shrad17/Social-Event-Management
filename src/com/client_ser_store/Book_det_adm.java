package com.client_ser_store;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
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
 * Servlet implementation class Book_det_adm
 */
@WebServlet("/Book_det_adm")
public class Book_det_adm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Book_det_adm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/client_pan/book_det_adm.jsp");
		rd.forward(request, response);
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	Statement st=null;
	ResultSet rs=null;
	int num=0;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub	try
		
		try
		{
		Connect1 obj = new Connect1();
		Connection con = obj.get_con();
	
		HttpSession ses1 = request.getSession();
		String u_name = ses1.getAttribute("USER_CLIENT").toString();
		
		String c_name="",packages="",venue="",decoration="",food="",music="",e_date="",events="";
		
		
		events=request.getParameter("s1");
		packages=request.getParameter("s2");
		venue=request.getParameter("s3");
		decoration=request.getParameter("s4");
		food=request.getParameter("s5");
		music=request.getParameter("s6");
		e_date=request.getParameter("s7");
  	   
		ses1.setAttribute("BOOK_CLIENT",packages); 
  	  try
			{
				String  query="select max(SR_NO) from book_tb";
				st= con.createStatement();
				rs= st.executeQuery(query);
				if(rs.next())
				{
					num=rs.getInt(1);
				}
			}
			catch(Exception ex)
				{
					ex.printStackTrace();
				}
			num=num+1;
		
	      
	      
	    	  String i= "insert into book_tb(sr_no,events,packages,venue,decoration,food,music,e_date,user_name) values('"+num+"','"+events+"','"+packages+"','"+venue+"','"+decoration+"','"+food+"','"+music+"','"+e_date+"','"+u_name+"') ";
	    	  st =con.createStatement();
	    	  
			int c = st.executeUpdate(i);
			ses1.setAttribute("Welcome_User", packages);
			RequestDispatcher rd = request.getRequestDispatcher("/client_pan/book_wel.jsp");
			rd.forward(request, response);
				
				
				
        
	}
catch(Exception e)
{
	System.out.println(e);
}

	}
}

