package com.class_store;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.connection_store.Connect1;

public class event_add 
{
	public String file_name;
	public String ename="",s1="",edetail="";

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getS1() {
		return s1;
	}

	public void setS1(String s1) {
		this.s1 = s1;
	}

	public String getEdetail() {
		return edetail;
	}

	public void setEdetail(String edetail) {
		this.edetail = edetail;
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public String do_Upload() 
	{
		Connect1 ob = new Connect1();
		String msg = "RNS";
		PreparedStatement ps = null;
		Connection con = null;
		try {
			String sql = "insert into events_tb(event_name,event_details,e_image) values(?,?,?)";
			//System.out.println("insert into exam_paper_tb(sub_code,e_id,sub_name,stream,e_file,sem) values('"+code+"','"+id+"','"+name+"','"+stream+"','"+file+"','"+sem+"')");
			con = ob.get_con();
			if (con != null) {
				
				ps = con.prepareStatement(sql);
				ps.setString(1, ename);
				ps.setString(2, edetail);
				ps.setString(3, file_name);
				
				
				if (ps.executeUpdate() > 0) {
					msg = "RS";
					con.commit();
				}
			} else {
				System.out.println("Connection Failed");
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			close_sql(null, null, ps, con);
		}
		return msg;
	}

	public void close_sql(ResultSet rs, Statement stmt,
			PreparedStatement pstmt, Connection con) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException ex) {
				ex.getMessage();
			}
		}
		if (stmt != null) {
			try {
				stmt.close();
			} catch (SQLException ex) {
				ex.getMessage();
			}
		}
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException ex) {
				ex.getMessage();
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (SQLException ex) {
				ex.getMessage();
			}
		}
	}
}
