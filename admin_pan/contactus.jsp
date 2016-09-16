<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.sql.*"%>
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
     	  <jsp:include page = "contact_left_menu.jsp" />
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
                   		<div class="muted pull-left"></div>             		                       
                            <div class="block-content collapse in">
                                <div class="span12">
                                

                                <div class="navbar navbar-inner block-header">
                                    <div class="muted pull-left"><b>Information of Contact Us page</b></div>
                                    <div class="pull-right">

                                    </div>
                                </div>
       
		
      	 <%
		String name="",address="",contact="",email="",fax="",website="";
		ResultSet rs = (ResultSet)(request.getAttribute("CONTACT_DATA"));
		while(rs.next())
		{
			name = rs.getString(1);
			address = rs.getString(2);
			contact = rs.getString(3);
			fax = rs.getString(4);
			email = rs.getString(5);
			website = rs.getString(6);
		}
		
		%>
			
							<table class="table table-striped">
							<tr>
								<th> Name </th>
								<td> <%=name %> </td>
							</tr>
							<tr>
								<th> Address </th>
								<td> <%=address %> </td>
							</tr>
							<tr>
								<th> Contact </th>
								<td> <%=contact %> </td>
							</tr>
							<tr>
								<th> Fax No </th>
								<td> <%=fax %> </td>
							</tr>
							<tr>
								<th> E-Mail </th>
								<td> <%=email %> </td>
							</tr>
							<tr>
								<th> Website </th>
								<td> <%=website %> </td>
							</tr>
				
							</table>      
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