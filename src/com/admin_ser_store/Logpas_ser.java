package com.admin_ser_store;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

/**
 * Servlet implementation class Logpas_ser
 */
@WebServlet("/Logpas_ser")
public class Logpas_ser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Logpas_ser() {
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
			Random rnd = new Random(9999);
			int num1 = rnd.nextInt();
			int num2 = rnd.nextInt();
			
			String EVENT = "EVE"+num1+"NT"+num2;
			String PASS = "PASS"+num2+"WORD"+num1;
			
			String id = request.getParameter("id").toString();
			
			String str1 = "update c_reg set username='"+EVENT+"' and password='"+PASS+"' where sr_no='"+id+"'";
			
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
