<%@ page language="java" import="com.connection_store.*" import="java.sql.*" %>


<title>
<%
	/*HttpSession ses1 = request.getSession();
	out.println(ses1.getAttribute("TITLE").toString());*/
	
	try
	{
		Connect1 obj = new Connect1();
		Connection con = obj.get_con();
		
		String sel_data = "select * from title_tb";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sel_data);
		
		while(rs.next())
		{
			out.println(rs.getString(2));
		}
	}
	catch(Exception ex)
	{
		out.println(ex);
	}
%>
</title>