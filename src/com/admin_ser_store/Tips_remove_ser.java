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
 * Servlet implementation class Tips_del_ser
 */
@WebServlet("/Tips_del_ser")
public class Tips_remove_ser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Tips_remove_ser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connect1 obj = new Connect1();
		if(request.getParameter("id")!=null)
		{
			try
			{
				Connection con = obj.get_con();
				
				String id = request.getParameter("id");
				String del_data = "delete from tips_db where id = ?";
				PreparedStatement ps = con.prepareStatement(del_data) ;
				ps.setString(1, id);
				int c = ps.executeUpdate();
				
				RequestDispatcher rd = request.getRequestDispatcher("Tips_view_ser");
				rd.forward(request, response);
			}
			catch(Exception ex)
			{
				System.out.println(ex);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
