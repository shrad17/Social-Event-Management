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
				<h3><FONT COLOR="#7CFC00">...Congratulation...</h3>
				<img src="images/welcome.png" alt="" class="img_inner fleft">
				<div class="extra_wrapper">
					<p class="col1">
					</p>
				</div>
			</div>
			<div class="grid_4">
				<h3><font color="#7CFC00"><i>You Have Successfully<b><br><font color="#7CFC00">Login</h2></i></i></h3>
				
				<div class="btns">
				<a href="C_view_profile"><input type = "submit" name = "submit" value = "View Your Profile ->" class="but_style" /><br>						
				<a href="C_book"><input type = "submit" name = "submit" value = "Book Your Event ->" class="but_style" /></div>					
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