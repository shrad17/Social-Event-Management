package com.admin_ser_store;

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
 * Servlet implementation class Status_ser
 */
@WebServlet("/Status_ser")
public class Status_ser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Status_ser() {
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
			
			Connect1 obj = new Connect1();
			Connection con = obj.get_con();
			

			String id = request.getParameter("id").toString();
			String state = request.getParameter("state").toString();

			String edit_data;
			if(state.equals("Active"))
			{
				edit_data = "update c_reg set status='Deactive' where sr_no = ?";	
			}
			else
			{
				edit_data = "update c_reg set status='Active' where sr_no = ?";
			}
			
			
			PreparedStatement ps = con.prepareStatement(edit_data) ;
			
			ps.setString(1, id);
			
			
			int c = ps.executeUpdate();
			
			
			
			RequestDispatcher rd = request.getRequestDispatcher("User_view_ser");
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
