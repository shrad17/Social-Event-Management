<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
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
     	  <jsp:include page = "event_left_menu.jsp" />
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
                                    <div class="muted pull-left"><b>About Events</b></div>
                                    <div class="pull-right">

                                    </div>
                                </div>
                                <div class="block-content collapse in">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Event Sr. no.</th>
                                                <th>Event Name</th>
                                                <th>Event Details</th>
                                                <th>Images</th>
                                                
                                                <th>Remove</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                      	                  <%
                      	                  {
											ResultSet rs = (ResultSet)(request.getAttribute("EVENT_DATA"));
											int c=1;
											while(rs.next())
											{
										%>
                                            <tr>
                                                <td><%=rs.getString(1) %></td>
                                                <td><%=rs.getString(2) %></td>
                                                <td><%=rs.getString(3) %></td>
                                                <td><%=rs.getString(4) %></td>
												
												<td>
													<a href="Event_remove_ser?id=<%=rs.getString(1) %>">
													<button class="btn btn-danger"><i class="icon-remove-circle icon-white"></i> Delete</button>
													</a>
												</td>
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
      		  	<jsp:include page = "soc_footer.jsp" />
        <!-- footer -->
             
    </body>

</html>