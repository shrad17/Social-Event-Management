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
	<div class="black bl1">
		<div class="container_12">
			<div class="grid_8">
			<h4><font color="orange"><div align="center">&nbsp;&nbsp;Update<font color="cyan"> Your Registration Details</font> From Here</h3></font>
			<br><br>
				
		<%
		
		String f_name="",l_name="",gen="",b_date="",add="",email="",cont="",type="",female="Female";
		ResultSet rs = (ResultSet)(request.getAttribute("data"));
		while(rs.next())
		{
			f_name = rs.getString(2);
			l_name = rs.getString(3);
			gen = rs.getString(4);
			b_date = rs.getString(5);
			add = rs.getString(6);
			email=rs.getString(7);
			cont = rs.getString(8);
			type = rs.getString(10);
		
		}
		
		%> 

				
<form id="form" method="post" action="C_edit_profile">
											
<fieldset>
<legend><b><u> <font color="yellow">-: Enter your new details for registration :-</u></b></legend>
<br><br><font color="red">


 <div>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label for="first_name"><b>register As :-</b></label><br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="s1" value="<%=type %>" maxlength="100" /><br><br>
</div>


<div>
<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label for="first_name"><b>First Name :-</b></label><br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t1" value="<%=f_name %>"  maxlength="100" /><br><br>
</div>


<div>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label for="first_name"><b>Last Name :-</b></label><br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t2" value="<%=l_name %>" maxlength="100" /><br><br>
</div>


<div>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<label for="lunch" name="t3"><b>Gender :-</b></label><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%
if(gen.equals(female))
{%>
	<input type="radio" name="t3" value="Female" checked="checked" > Female
	<input type="radio" name="t3" value="Male" /> Male <br><br>
<%
}
else
{
%>
	<input type="radio" name="t3" value="f_male" /> Female
	<input type="radio" name="t3" value="male" checked="checked" /> Male <br><br>
	<%
}
	%>	
</div>


<div class="control-group">
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label class="control-label" for="date01"><b> Birth date :-</b></label>
	<div class="controls">
    	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t4" class="input-xlarge datepicker" id="date01" value="<%=b_date %>"><br><br>
     </div>
     </div>


<div>
 &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label for="comments"><b>Address :-</b></label><br>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea name="t5" rows="3" cols="20"><%=add%></textarea><br><br>
</div>


<div>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label for="first_name"><b>Email address :-</b></label><br>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t6" value="<%=email%>" style=" width:200px" /><br><br>
</div>	


 
  

<div>
<div>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label for="first_name"><b>Contact number :-</b></label><br>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t7" value="<%=cont%>" width="100px" />
</div>			
	<div class="btns">
			 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<input type = "submit" name = "submit" value = "UPDATE  NOW " class="but_style" />
				<br><br></div>
				<br><br>
				
				
				</div>
					</fieldset>
					</form>			
								
				
			</div> 
				<div class="grid_4">
				<br><br><br><br><br><br><br>
				<h2><font color="red"><b>Get desire venue</h2>
				<br><br><br><font color="red"><img src="images/url17.jpeg" alt="" class="img_inner fleft">
           			</div>
           			
			<div class="grid_4">
			<h2><font color="red"><font color="red"><b>Get desire food</h2>
				<br><br><br><font color="red"><img src="images/gala_dinner.jpg" alt="" class="img_inner fleft">
           			</div>
           			
           			<br><br><br><h2><font color="violet"><b>Your Profile will be updated in some time</h2></br>
           		
						
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
 
