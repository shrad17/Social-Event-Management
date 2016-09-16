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
     	  <jsp:include page = "feed_left_menu.jsp" />
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
                                    <div class="muted pull-left"><b>Information of Feedback page</b></div>
                                    <div class="pull-right">

                                    </div>
                                </div>
       							<table class="table table-striped">
                                  <thead>
                                  	<tr>
                                	    <th>Id</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <th>Review</th>
                                        <th>Remove</th>
                                     </tr>
                    <%
					String name="",phone="",email="",message="";
			      	{
					ResultSet rs = (ResultSet)(request.getAttribute("FEEDBACK_DATA"));
					int c = 1;
					while(rs.next())
						{
						name = rs.getString(2);
						email = rs.getString(3);
						phone = rs.getString(4);
						message = rs.getString(5);
					%>
                                            <tr>
                                            	<td><%=rs.getString(1) %>
                                                <td><%=name %></td>
                                                <td><%=email %></td>
                                                <td><%=phone %></td>
                                                <td><%=message %></td>
												<td>
													<a href="Feed_remove_ser?id=<%=rs.getString(1) %>">
													<button class="btn btn-danger"><i class="icon-remove-circle icon-white"></i> Delete</button>
													</a>
												</td>
                                            </tr>
                                      	<%
												}
												c++;
												}
					
										%>                                                                   	                                            
                                  	</thead>
                                  <tbody>		
                                  </tbody>									
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