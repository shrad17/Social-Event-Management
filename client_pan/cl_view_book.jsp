<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="meta.jsp"></jsp:include>
	<jsp:include page="c_title.jsp"></jsp:include>
		
		<jsp:include page="meta.jsp"></jsp:include>
			<jsp:include page="c_css.jsp"></jsp:include>
				<jsp:include page="c_script.jsp"></jsp:include>

		<!--[if lt IE 8]>
			<div style=' clear: both; text-align:center; position: relative;'>
				<a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
					<img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
				</a>
			</div>
		<![endif]-->
		<!--[if lt IE 9]>
			<script src="js/html5shiv.js"></script>
			<link rel="stylesheet" media="screen" href="css/ie.css">

		<![endif]-->
</head>
<body>
<!--==============================header=================================-->
 	<header> 
 		<jsp:include page = "c_header.jsp"></jsp:include>
	</header>

<!--=======content================================-->

<div class="content"><div class="ic">More Website Templates @ TemplateMonster.com - July 08, 2013!</div>
	<div class="white wt2">
		<div class="container_12">
			<div class="grid_8">
			<br><br>
				
			<br><br><marquee><img src="images/helo.png" alt="" class="img_inner fleft"></marquee>
			
			
			
				<div class="extra_wrapper">
					<p class="col1">
					</p>
				</div>
			</div>
			<div class="grid_4">
				<h3><font color="purple"><b>View Profile</b></font></h3>
				
<form id="form" method="post",action="Cl_view_book">
	<fieldset>									
                	
                	<%
                	String events="",packages="",venue="",decoration="",food="",music="",num="",e_date="";
                	try
                	{
           			 ResultSet rs=(ResultSet)request.getAttribute("BOOK_CLIENT");
           			
   

                    	while(rs.next())
                    		
                    	{
                    		num=rs.getString(1);
                    		 events=rs.getString(2);
                    		 packages=rs.getString(3);
                    		 venue=rs.getString(4);
                    		 decoration=rs.getString(5);
                    		 food=rs.getString(6);
                    		 music=rs.getString(7);
                    		 e_date=rs.getString(8);
                    		
                    		 
                    	}
                    		%>
               <table>
               				<tr>
               			<td><b>Events:</b></td>
               			<td><%=events%></td>
               			</tr>
               			<tr>
               			<td>&nbsp;</td>
               			<td>&nbsp;</td>
               			</tr>
               			<tr>
               			<td><b>Packages :</b></td>
               			<td><%=packages%></td>
               			</tr>
               			<tr>
               			<td>&nbsp;</td>
               			<td>&nbsp;</td>
               			</tr>
               			<tr>
               			<td><b>Venue:<b></td>
               			<td><%=venue%></td>
               			</tr>
               			<tr>
               			<td>&nbsp;</td>
               			<td>&nbsp;</td>
               			</tr>
               			<tr>
               			<td><b>Decoration:</td>
               			<td><%=decoration%></td>
               			</tr>
               			<tr>
               			<td>&nbsp;</td>
               			<td>&nbsp;</td>
               			</tr>
               			<tr>
               			<td><b>Food:</td>
               			<td><%=food%></td>
               			</tr>
               			<tr>
               			<td>&nbsp;</td>
               			<td>&nbsp;</td>
               			</tr>
               			<tr>
               			<td><b>Music :</td>
               			<td><%=music%></td>
               			</tr>
               			<tr>
               			<td>&nbsp;</td>
               			<td>&nbsp;</td>
               			</tr>
               			<tr>
               			<td><b>E_Date :</td>
               			<td><%=e_date%></td>
               			</tr>
               			<tr>
               			<td>&nbsp;</td>
               			<td>&nbsp;</td>
               			</tr>
               			
               	</table>
               	<br></br>
               		 
            <% 
                	}	
            	catch(Exception e)
            	{
            		out.println(e);
            	}
       			
              %>
            <a href="Cl_edit_book?id=<%=num %>" class="but_style"><b>Edit booking details</b></a><br></br>
            
           <b> You can update your details!!</b>
            
           
             	</fieldset>
               </form>					
					</div>
						
				<div class="col1"><a href="#">  </a></div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	
	
	<div class="white wt1">
		<div class="grid_12">
		You can also add here....
		</div>
	</div>
	<div class="gray g2">
		<div class="grid_12">
		Also here the other things you can add. 
		</div>
		<div class="clear"></div>
	</div>
<!--==============================footer=================================-->
		<footer>
			<jsp:include page = "c_footer.jsp"></jsp:include>
		</footer>
</body>
</html>