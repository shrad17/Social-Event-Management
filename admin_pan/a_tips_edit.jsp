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
     	  <jsp:include page = "tips_left_menu.jsp" />
       </div>
       
       <!--/span-->
       <div>
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
							String par="";
							ResultSet rs = (ResultSet)(request.getAttribute("TIPS_ALL_DATA"));
							while(rs.next())
							{
							par = rs.getString(2);
							}
							%>
                                <form method="post" action="Tips_edit_ser">
									<table>
                                		<tr>
                                			<th>
	                                		
    										<div class="navbar navbar-inner block-header">
		                            	    	<div class="muted pull-left">Change Tips</div>
		                            		</div>
		                           			<div class="block-content collapse in">
		                           				
		                            			<textarea name="tips" id="ckeditor_standard" rows="5" cols="40">
		                            			<%=par %>
		                            			</textarea>
		                            			
		                            		</div>
		                     		       
		                     		        </th>
		                        		</tr>
									
										<tr>
										<td></td>
										<td>
											<button class="btn btn-primary" type="submit">Change data</button>
											<button class="btn btn-primary" type="reset">Reset</button>
										</td> 
									</tr>
									</table>
								</form>
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