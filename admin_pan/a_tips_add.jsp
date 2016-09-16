<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
                                <form method="post" action="A_tips_ser">
									<table>
                                		<tr>
                                			<th>
	                                		
    										<div class="navbar navbar-inner block-header">
		                            	    <div class="muted pull-left">Add Tips Here</div>
		                            		</div>
		                           			<div class="block-content collapse in">
		                            		<textarea name="tips" rows="5" cols="40"></textarea>
		                           			</div>
		                     		       
		                     		        </th>
		                        		</tr>
									
										<tr>
										<td></td>
										<td>
										<button class="btn btn-primary" type="submit">Add Details</button>
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