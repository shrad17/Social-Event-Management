<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="meta.jsp"></jsp:include>
	<jsp:include page="c_title.jsp"></jsp:include>

		<jsp:include page="meta.jsp"></jsp:include>
		
			<jsp:include page="c_css.jsp"></jsp:include>
			<link rel="stylesheet" href="css/form.css">
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
	<div class="white wt2">
		<div class="container_12">
			<div class="grid_8">
				<h3>Contact Information</h3>
							<div class="map">
							<figure class="img_inner fleft">
								<iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.in/maps?q=google+map+ldrp&amp;oe=utf-8&amp;client=firefox-a&amp;ie=UTF8&amp;hq=&amp;hnear=&amp;t=m&amp;ll=23.239384,72.638651&amp;spn=0.006295,0.006295&amp;output=embed"></iframe><br /><small><a href="https://maps.google.co.in/maps?q=google+map+ldrp&amp;oe=utf-8&amp;client=firefox-a&amp;ie=UTF8&amp;hq=&amp;hnear=&amp;t=m&amp;ll=23.239384,72.638651&amp;spn=0.006295,0.006295&amp;source=embed" style="color:#0000FF;text-align:left">View Larger Map</a>
								</small>	
							</figure>
								<div class="text2"> Our Company </div>
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
					<address>
						<dl>
							<dd><span> Name:</span> <%=name %></dd>							
							<dd><span>Address:</span> <%=address%></dd>
							<dd><span>Contact:</span><%=contact %></dd>
							<dd><span>FAX:</span><%=fax %></dd>
							<dd><span> E-mail: </span><%=email %></dd>
							<dd><span>Website: </span><a href="#" class="link-1"><%=website %></a></dd>
						</dl>
					</address>
					
						</div>
			</div>
			<div class="grid_4">
				<h3>Feedback Form</h3>
			<form id="form" method="post" action="C_feedback_ser">
				<div class="success_wrapper">
				<div class="success">Contact form submitted!<br>
				<strong>We will be in touch soon.</strong> </div></div>
			<fieldset>
				<label class="name"><b>Name:</b>
				<input type="text" name="f_name">
				<br class="clear">
				<span class="error error-empty">*This is not a valid name.</span><span class="empty error-empty">*This field is required.</span> </label>
				<label class="email"> <b>Email:</b>
				<input type="text" name="f_email">
				<br class="clear">
				<span class="error error-empty">*This is not a valid email address.</span><span class="empty error-empty">*This field is required.</span> </label>
				<label class="phone"><b>Phone:</b>
				<input type="text" name="f_phone">
				<br class="clear">
				<span class="error error-empty">*This is not a valid phone number.</span><span class="empty error-empty">*This field is required.</span> </label>
				<label class="message"><b>Message:</b>
				<textarea cols="5" rows ="2" name ="f_message"></textarea>
				<br class="clear">
				<span class="error">*The message is too short.</span> <span class="empty">*This field is required.</span> </label>
				<div class="clear"></div>
				<div class="btns">
				<input type = "submit" name = "sub1" value = "send" class="but_style" />
				<br><br>
				<input type = "reset" name = "sub2" value = "clear" class="but_style" />
				</div>
				<div class="clear"></div>
				</div>
				</fieldset>
			</form>
			</div>
			<div class="clear"></div>
		</div>
			<div class="gray">
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