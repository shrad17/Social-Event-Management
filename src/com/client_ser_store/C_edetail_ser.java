package com.client_ser_store;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection_store.Connect1;

/**
 * Servlet implementation class C_edetail_ser
 */
@WebServlet("/C_edetail_ser")
public class C_edetail_ser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public String id="";   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public C_edetail_ser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if(request.getParameter("id")!=null)
		{
			try
			{
				Connect1 obj = new Connect1();
				Connection con = obj.get_con();
				
				id = request.getParameter("id");
				
				String sel_data = "select * from events_tb where id = ?";
				PreparedStatement ps = con.prepareStatement(sel_data) ;
				ps.setString(1, id);	
								
				ResultSet rs = ps.executeQuery();
				
				
				request.setAttribute("EVENT_ALL_DATA", rs);
				RequestDispatcher rd = request.getRequestDispatcher("/client_pan/c_evedetail.jsp");
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
