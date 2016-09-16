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
                           
                                <div class="span12">
                                    <div class="navbar navbar-inner block-header">
                                    <div class="muted pull-left"><b> Title Page Details </b></div>
                                    <div class="pull-right">

                                    </div>
                                </div>
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
			
			<form method="post" action="Title_edit_ser">
			<table>
				<tr>
					<td> <b> Client Title: </b> </td>		
					<td></td>	
					<td> <%=client_t %> </td>
				
				<tr>
					<td><b> Admin Title: </b></td>
					<td></td>
					<td> <%=admin_t%> </td>
				</tr>
				
			</table>
			</form>
		</div> <!-- /content -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	      
       
        <!-- footer -->
      		  	<jsp:include page = "soc_footer.jsp" />
        <!-- footer -->
             
    </body>

</html>