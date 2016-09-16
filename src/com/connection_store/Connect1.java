package com.connection_store;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connect1 
{

public  Connection get_con() 
{
		
		Connection con = null;
		try{
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","soc_event","project-8");
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return con;
	}	
}
