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
                                    <div class="muted pull-left"><b>Change details of Contact Us page</b></div>
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
			email = rs.getString(4);
			fax = rs.getString(5);
			website = rs.getString(6);
		}
		
		%>
			
			<form method="post" action="Contact_edit_ser">
			<table>
				<tr>
					<td> Name </td>
				</tr>
				<tr>
					<td> <input type="text" name="txt1" size="30" value="<%=name %>" /> </td>
				</tr>
				<tr>
					<td> Address </td>
				</tr>
				<tr>
					<td> <textarea name="txt2" rows="5" cols="40"><%=address %></textarea> </td>
				</tr>
				<tr>
					<td> Contact </td>
				</tr>
				<tr>
					<td> <input type="text" name="txt3" size="30" value="<%=contact %>" /> </td>
				</tr>
				<tr>
					<td> Fax No </td>
				</tr>
				<tr>
					<td> <input type="text" name="txt4" size="20" value="<%=fax %>" /> </td>
				</tr>
				<tr>
					<td> E-Mail </td>
				</tr>
				<tr>
					<td> <input type="text" name="txt5" size="20" value="<%=email %>" /> </td>
				</tr>
				<tr>
					<td> Website </td>
				</tr>
				<tr>
					<td> <input type="text" name="txt6" size="20" value="<%=website %>" /> </td>
				</tr>
				<tr>
					<td> &nbsp; </td>
				</tr>
				<tr>
					<td> <input type="submit" value="Change Data" name="sub1" /> </td>
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
      		  	<jsp:include page = "contact_soc_footer.jsp" />
        <!-- footer -->
             
    </body>

</html>