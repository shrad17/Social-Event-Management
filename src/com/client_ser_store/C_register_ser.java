package com.client_ser_store;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.*;

import com.connection_store.Connect1;

/**
 * Servlet implementation class C_register_ser
 */
@WebServlet("/C_register_ser")
public class C_register_ser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public C_register_ser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		HttpSession ses1 = request.getSession();
		ses1.setAttribute("PAGE", "Register");
		
		RequestDispatcher rd = request.getRequestDispatcher("/client_pan/c_register.jsp");
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
		HttpSession ses1 = request.getSession();
		try
		{
		Connect1 obj = new Connect1();
		Connection con = obj.get_con();
		
		String f_name="",l_name="",gen="",b_date="",add="",email="",cont="",type="";
		
		f_name=request.getParameter("t1");
		System.out.println(f_name);
	    l_name=request.getParameter("t2");
	    System.out.println(l_name);
	    gen=request.getParameter("t3");
	    System.out.println(gen);
	    b_date=request.getParameter("t4");
	    System.out.println(b_date);
  	    add=request.getParameter("t5");
  	  System.out.println(add);
  	    email=request.getParameter("t10");
  	  System.out.println(email);
  	    cont=request.getParameter("t6");
  	  System.out.println(cont);
  	    type=request.getParameter("s1");
  	  System.out.println(type);
  	  
  	    
  	    if(f_name.equals("")== true || l_name.equals("")== true || add.equals("")== true || email.equals("")== true || cont.equals("")== true)
  	    {
  	    	
  	    	request.setAttribute("REQ", "1");
  	    	RequestDispatcher rd = request.getRequestDispatcher("/client_pan/c_register.jsp");
  	    	rd.forward(request, response);
  	    	
  	    }
  	    else
  	    {
  	    
  	    	System.out.println("Hello");
  	    	ses1.setAttribute("USER_CLIENT", f_name); 
  	    	try
			{
				String  query="select max(SR_NO) from c_reg";
				st= con.createStatement();
				rs= st.executeQuery(query);
				if(rs.next())
				{
					num=rs.getInt(1);
				}
			}
			catch(Exception ex)
				{
					System.out.println(ex);
				}
			num=num+1;
		
			 System.out.println("Hello");
	     
	    
	    	  
	    	  Random rnd = new Random(9999);
	    	  int N = rnd.nextInt();
	    	 
	    	  String pass = type.substring(0,1) + f_name.substring(0,2) +  N;
	    	  
	    	 
	    	  String i= "insert into c_reg(sr_no,f_name,l_name,gen,b_date,address,email,cont,status,type,password) values('"+num+"','"+f_name+"','"+l_name+"','"+gen+"','"+b_date+"','"+add+"','"+email+"','"+cont+"','Active','"+type+"','"+pass+"')";
	    	  st =con.createStatement();
	    	  int c = st.executeUpdate(i);
				//ServletRequest ses1;
				ses1.setAttribute("Welcome_User", f_name);
				
				request.setAttribute("EMAIL", email);
				request.setAttribute("PASS", pass);
				
				RequestDispatcher rd = request.getRequestDispatcher("/client_pan/c_reg_wel.jsp");
				rd.forward(request, response);
				
				
	      
  	    }
	}
catch(Exception e)
{
	System.out.println(e);
}

	
}
}
