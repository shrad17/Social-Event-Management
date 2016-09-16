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
 * Servlet implementation class Book_det_cl
 */
@WebServlet("/Book_det_cl")
public class Book_det_cl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Book_det_cl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/client_pan/book_det_cl.jsp");
		rd.forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	Statement st=null;
	ResultSet rs=null;
	int num=0;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		try
		{
		Connect1 obj = new Connect1();
		Connection con = obj.get_con();

		HttpSession ses1 = request.getSession();
		String u_name = ses1.getAttribute("USER_NAME").toString();
		
		String packages="",venue="",decoration="",food="",music="",e_date="",events="";
		
		packages=request.getParameter("t1");
		venue=request.getParameter("t2");
		decoration=request.getParameter("t3");
		food=request.getParameter("t4");
		music=request.getParameter("t5");
		e_date=request.getParameter("t6");
  	    events=request.getParameter("s1");
  	   
  	 
		ses1.setAttribute("BOOK_CLIENT", packages); 
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
		
	      
	      if (request.getParameter("submit")!=null)		      
        {
	    	  String i= "insert into book_tb(sr_no,packages,venue,decoration,food,music,e_date,events,user_name) values('"+num+"','"+packages+"','"+venue+"','"+decoration+"','"+food+"','"+music+"','"+e_date+"','"+events+"','"+u_name+"') ";
	    	  st =con.createStatement();
	    	  
			int c = st.executeUpdate(i);
				ses1.setAttribute("Welcome_User", packages);	
				
				RequestDispatcher rd = request.getRequestDispatcher("/client_pan/book_wel.jsp");
				rd.forward(request, response);
				
				
        }
	}
catch(Exception e)
{
	System.out.println(e);
}
	}

}
