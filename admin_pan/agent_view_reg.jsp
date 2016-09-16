
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<jsp:include page="soc_css.jsp" />
<jsp:include page="soc_script.jsp" />
<jsp:include page="soc_title.jsp" />

</head>

<body>

<div class="navbar navbar-fixed-top"><jsp:include
	page="header.jsp" /></div>
	
<div class="span3" id="sidebar"><jsp:include
	page="agents_left_menu.jsp" /></div>


<!--/span-->
<table>
	<tr>
		<td>&nbsp;</td>
	</tr>
</table>

<div class="span9" id="content">

<div class="row-fluid">
<div class="block">
<div class="navbar navbar-inner block-header">
<div class="muted pull-left"></div>
<div class="block-content collapse in">
<div class="span12">


<div class="navbar navbar-inner block-header">
<div class="muted pull-left"><b>Information About Agent Registration</b></div>
<div class="pull-right"></div>
</div>
<div class="block-content collapse in">
<table class="table table-striped">
	<thead>
		<tr>
			<th>sr no</th>
			<th>first name</th>
			<th>last name</th>
			<th>gender</th>
			<th>birthdate</th>
			<th>address</th>
			<th>email</th>
			<th>contact</th>
			<th>remove</th>
			<th>Status</th>
		</tr>
	</thead>
	<tbody>
		<%
                 {
						ResultSet rs = (ResultSet)(request.getAttribute("REG_DATA"));
						int c=1;
						while(rs.next())
				{
		%>
		<tr>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			<td><%=rs.getString(6) %></td>
			<td><%=rs.getString(7) %></td>
			<td><%=rs.getString(8) %></td>

			<td><a href="Agent_remove_ser?id=<%=rs.getString(1) %>">
			<button class="btn btn-primary"><i
				class="icon-remove-circle icon-white"></i> remove</button>
			</a></td>
			
			<td><a href="Status_ser?id=<%=rs.getString(1) %>&state=<%=rs.getString(9) %>">
			<button class="btn btn-danger"><i
				class="icon-refresh icon-white"></i><%=rs.getString(9) %></button>
			</a></td>
			
			
			


		</tr>
			<%
				}
					c++;
				}
					
			%>
	</tbody>
	</table>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
</div>
<!-- footer -->
<jsp:include page="soc_footer.jsp" />
<!-- footer -->
</body>

</html>