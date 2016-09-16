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
 * Servlet implementation class Cl_edit_book
 */
@WebServlet("/Cl_edit_book")
public class Cl_edit_book extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cl_edit_book() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    String packages="";
    Statement st=null;
    Connection con=null;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try
		{
			Connect1 obj = new Connect1();
			Connection con = obj.get_con();
			
			if(request.getParameter("id")!=null)
			{
				packages=request.getParameter("id");
				String i_data = "select * from book_tb where sr_no='"+packages+"' ";
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery(i_data);
				request.setAttribute("data", rs);
			}	
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/client_pan/cl_edit_book.jsp");
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
		       
				
			    packages = request.getParameter("t1");
				String venue = request.getParameter("t2");
				String decoration = request.getParameter("t3");
				String food = request.getParameter("t4");
				String music = request.getParameter("t5");
				String e_date = request.getParameter("t6");
				String events=request.getParameter("s1");
				
				String str1 = "update book_tb set Events='"+events+"',Date='"+e_date+"',Packages='"+packages+"' ,Venue='"+venue+"',Decoration='"+decoration+"',Food='"+food+"',Music='"+music+"' where sr_no='"+packages+"'";
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
