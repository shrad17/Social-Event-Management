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
	<div class="black b11">
		<div class="container_12">
			<div class="grid_5">
			<h3><font color="orange"><div align="right">Our Facilities...</h3><br><br><br><br>
				
				<img src="images/10.jpg" alt="" class="img_inner fleft">
				<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
				<img src="images/mehendi-sangeet.jpg" alt="" class="img_inner fleft">
				<div class="extra_wrapper">
				<p class="col1">
				</p>
			</div>
		</div>
			
			
			<div ciass="grid_4">
			<h3><font color="orange"><div align="center">...Your Booking</h3><br><br><br><br>
			
				<form id="form" method="post" action="Book_det_cl"><div align="right"></div>
				<fieldset>
				
				<div align="center">
			<br><br><br>
			<legend><b><u><FONT COLOR="#FF7F50">-: Enter your booking details :-</u></b></legend>
			<br><br>

 
 <font color="#8A2BE2">
   <div class="control-group">
   <label class="control-label" for="select01"><b>Events:-</b></label>
    <div class="controls">
   <select name="s1">
   				<option selected="selected">---select---</option>
                <option value="Marriage">Marriage</option>
                <option value="Birthday Party">Birthday Party</option>
                <option value="Get-To-Gether">Get-To-Gether</option>                                             
                </select>
              </div>
           </div>

<div>
<br>
<label for="first_name"><b>Package :-</b></label><br>
<input type="text" name="t1" value="" maxlength="100" /><br><br>
</div>


<div>
<label for="first_name"><b>venue :-</b></label><br>
<input type="text" name="t2" value="" maxlength="100" /><br><br>
</div>


<div>
<label for="first_name"><b>Decoration :-</b></label><br>
<input type="text" name="t3" value="" style=" width:200px" /><br><br>
</div>	


<div>
<div>
<label for="first_name"><b>Food :-</b></label><br>
<input type="text" name="t4" value="" width="100px" />
</div>
<br>			

<div>
<div>
<label for="first_name"><b>Music :-</b></label><br>
<input type="text" name="t5" value="" width="100px" />
</div>			

<div>
<br>
<label for="first_name"><b>Event Date:- :-</b></label><br>
<input type="text" name="t6" value="" maxlength="100" /><br><br>
</div>

	<div class="btns">
				<input type = "submit" name = "submit" value = "BOOKING NOW !!!" class="but_style" />
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