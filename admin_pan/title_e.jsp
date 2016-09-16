<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    
   <head>

		<jsp:include page="soc_css.jsp" />
		<jsp:include page="soc_script.jsp" />
		<jsp:include page="soc_title.jsp" />
   
   </head>
    
    <body>

       <div class="navbar navbar-fixed-top">
      	 <jsp:include page = "header.jsp" />
       </div>
       
        
       <div class="span3" id="sidebar">
     	  <jsp:include page = "title_left_menu.jsp" />
       </div>
       
       <!--/span-->
       <table>
       <tr> 
       <td> &nbsp; </td>
       </tr>
       </table>
	
       <div class="span9" id="content">

      	       <div class="row-fluid">
      			  <div class="block">
             		<div class="navbar navbar-inner block-header">             		                       
                            <div class="block-content collapse in">
		
      	 <%
		String client_t="",admin_t="";
		ResultSet rs = (ResultSet)(request.getAttribute("TITLE_DATA"));
		while(rs.next())
		{
			client_t= rs.getString(1);
			admin_t= rs.getString(2);
			
		}
		
		%>
			<h3 class="tit">Change Title Page Details</h3>
			<form method="post" action="Title_edit_ser">
			<table>
				<tr>
					<td> CLIENT TITLE </td>
				</tr>
				<tr>
					<td> <input type="text" name="txt1" size="30" value="<%=client_t %>" /> </td>
				</tr>
				<tr>
					<td> ADMIN TITLE</td>
				</tr>
				<tr>
					<td> <input type="text" name="txt2" size="30" value="<%=admin_t %>" /> </td>
				</tr>
				
				<tr>
					<td> &nbsp; </td>
				</tr>
				<tr>
					<td> <button class="btn btn-primary" type="submit">Change Title</button>
					</td>
				</tr>
			</table>
			</form>
		</div> <!-- /content -->
					</div>
				</div>
			</div>
	</div>
	      
       
        <!-- footer -->
      		  	<jsp:include page = "soc_footer.jsp" />
        <!-- footer -->
             
    </body>

</html>