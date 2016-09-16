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
	<div class="gray">
		<div class="container_12">
			<div class="grid_12">
			<h3 class="head1">Provided Events :</h3>				
			</div>
			<%
            {
					ResultSet rs = (ResultSet)(request.getAttribute("EVENT_DATA"));
					int c=1;
											
					while(rs.next())
					{
								String header =rs.getString(2);
								String details =rs.getString(3);
								String image = rs.getString(4);
					%>
				<div class="grid_6">
				<a href="C_edetail_ser?id=<%=rs.getString(1) %>">
				<img src="upload_event/<%=image %>" alt="" class="img_inner fleft" height="165" width="200"></a>
				<div class="extra_wrapper">
					<p class="p3 col1"><%=header %></p>
					<%
					out.println(details);
					%>
				</div>
			</div>
			<div class="clear"></div>
			<br>	
		<%
												c++;
					}
            }
			%>
				
		</div>
	</div>
	<div class="white wt1">
			<div>
			<br><h4>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			You can book your event via login.. Make Your Event and have a joy &nbsp;<img src="images/smile.jpg" width="25" height="25">
		 	</h4>
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
			</div>
</div>

<!--==============================footer=================================-->
		<footer>
			<jsp:include page = "c_footer.jsp"></jsp:include>
		</footer>
</body>
</html>