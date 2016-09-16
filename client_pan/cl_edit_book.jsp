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
				<h3><FONT COLOR="PURPLE">Our Facilities...</h3>
				<img src="images/page2_img1.jpg" alt="" class="img_inner fleft">
				<div class="extra_wrapper">
					<p class="col1">
					</p>
				</div>
			</div>
			<div class="grid_4">
				<h3><FONT COLOR=" navy blue">Book Your event</h3>
				
				<%
		
		String events="",packages="",venue="",decoration="",food="",music="",e_date="";
		ResultSet rs = (ResultSet)(request.getAttribute("data"));
		while(rs.next())
		{
			events = rs.getString(2);
			packages = rs.getString(3);
			venue = rs.getString(4);
			decoration = rs.getString(5);
			food = rs.getString(6);
			music=rs.getString(7);
			e_date=rs.getString(8);
			
		
		}
		
		%> 
				
				
<form id="form" method="post" action="Book_det_cl">
											
<fieldset>
<legend><b><u>-: Enter your booking details :-</u></b></legend>
<br><br>

 <font color="blue">
   <div class="control-group">
                                         
                                          <div class="controls">
                                            <br>
                                            
<label for="packages"><b>Events :-</b></label><br>
<input type="text" name="s1" value="<%=events%>" maxlength="100" /><br><br>
                                          </div>
                                        </div>

<div>
<br>
<label for="packages"><b>Packages :-</b></label><br>
<input type="text" name="t1" value="<%=packages%>" maxlength="100" /><br><br>
</div>


<div>
<label for="first_name"><b>Venue :-</b></label><br>
<input type="text" name="t2" value="<%=venue%>" maxlength="100" /><br><br>
</div>


<div>
<label for="first_name"><b>Decoration :-</b></label><br>
<input type="text" name="t3" value="<%=decoration%>" style=" width:200px" /><br><br>
</div>	


<div>
<div>
<label for="first_name"><b>Food :-</b></label><br>
<input type="text" name="t4" value="<%=food%>" style= "width:100px" />
</div>
<br>			

<div>
<div>
<label for="first_name"><b>Music :-</b></label><br>
<input type="text" name="t5" value="<%=music%>" width="100px" />
</div>			
<br>

<div>
<label for="first_name"><b>E_Date :-</b></label><br>
<input type="text" name="t6" value="<%=e_date%>" style=" width:200px" /><br><br>
</div>	



	<div class="btns">
				<input type = "submit" name = "submit" value = "UPDATE SUCCESSFULLY" class="but_style" />
				<br><br></div>
					
					</div>
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