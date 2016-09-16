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
								<script src="js/tms-0.4.1.js"></script>
				<script src="js/jquery.carouFredSel-6.1.0-packed.js"></script>
				<script	src="js/jquery.touchSwipe.min.js"></script>	
				<script>
				$(window).load(function(){
				$('.slider')._TMS({
				show:0,
				pauseOnHover:false,
				prevBu:'.prev',
				nextBu:'.next',
				playBu:false,
				duration:800,
				preset:'fade',
				pagination:false,//'.pagination',true,'<ul></ul>'
				pagNums:false,
				slideshow:8000,
				numStatus:false,
				banners:true,
				waitBannerAnimation:false,
				progressBar:false
			})
			});
			$(window).load (
			function(){$('.carousel1').carouFredSel({auto: false,prev: '.prev1',next: '.next1', width: 1030, items: {
				visible : {min: 1,
				max: 4
				},
				height: 'auto',
				width: 157,
			}, responsive: true,
			scroll: 1,
			mousewheel: false,
			swipe: {onMouse: true, onTouch: true}});
			});
		</script>
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
						
			<div class="grid_4">
		<div>
				<h3>Login :</h3>
						<form id="form" method="post" action="C_login_ser">
											
						<b>Username:</b>
						<input type="text" name="t1" ><br></br>
						
						<b>Password:</b>
						<input  type="password" name="t2" ><br></br>
						
						<div class="btns">
							<input type = "submit" name = "sub1" value = "Login" class="but_style" />
								<br><br><br>
						<b>	Not Registered Yet?<br>
						<a href="C_register_ser" class="but_style" >Register Now</a>
						</b>
						</div>						
						</form>	
			</div>
			</div>
			&nbsp;&nbsp;&nbsp;
			<div class="col1">
			<div class="grid_8">
			&nbsp;&nbsp;&nbsp;
			<br><br><br><br>
			<img src="images/log.png" width="700" height="500" class="img_inner fleft">		
			</div>
						
				<div class="col1"><a href="#">  </a></div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	
	<div class="gray g2">
		<div>
		<br>
		 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		You can book your event via login.. Make Your Event and have a joy &nbsp;<img src="images/smile.jpg" width="25" height="25">
		 </div>
		 <div class="container_12">
					<div class="grid_12">
						<div class="car">
							<a href="#" class="prev1"></a>
							<a href="#" class="next1"></a>
							<div class="car_div">
								<ul class="carousel1">
									<li><a href="#"><img src="images/logo1.png" alt=""></a></li>
									<li><a href="#"><img src="images/logo2.png" alt=""></a></li>
									<li><a href="#"><img src="images/logo3.png" alt=""></a></li>
									<li><a href="#"><img src="images/logo4.png" alt=""></a></li>
									<li><a href="#"><img src="images/logo5.png" alt=""></a></li>
									<li><a href="#"><img src="images/logo6.png" alt=""></a></li>
									<li><a href="#"><img src="images/logo7.png" alt=""></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="clear"></div>
				</div>
		<div class="clear"></div>
	</div>
</div>
<!--==============================footer=================================-->
		<footer>
			<jsp:include page = "c_footer.jsp"></jsp:include>
		</footer>
</body>
</html>