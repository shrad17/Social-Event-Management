<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<jsp:include page="meta.jsp"></jsp:include>
	<jsp:include page="c_title.jsp"></jsp:include>

		<jsp:include page="meta.jsp"></jsp:include>
		
			<jsp:include page="c_css.jsp"></jsp:include>
			<link rel="stylesheet" href="css/slider.css">
			
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
	<body class="page1">
<!--==============================header=================================-->
	<header>
		<jsp:include page = "c_header.jsp"></jsp:include>			
	</header>
		<div class="slider-relative">
			<jsp:include page = "index_slider.jsp"></jsp:include>
		</div>
<!--=======content================================-->
		<div class="content">
			<div class="ic">More Website Templates @ TemplateMonster.com - July 08, 2013!</div>

<div class="white">
				<div class="container_12">
					<div class="grid_7">
						<h2><br><br>
<script language="JavaScript1.2">

var message="Tips and Ideas!"
var neonbasecolor="black"
var neontextcolor="DeepPink"
var flashspeed=100  //in milliseconds

///No need to edit below this line/////

var n=0
if (document.all||document.getElementById){
document.write('<font color="'+neonbasecolor+'">')
for (m=0;m<message.length;m++)
document.write('<span id="neonlight'+m+'">'+message.charAt(m)+'</span>')
document.write('</font>')
}
else
document.write(message)

function crossref(number){
var crossobj=document.all? eval("document.all.neonlight"+number) : document.getElementById("neonlight"+number)
return crossobj
}

function neon(){

//Change all letters to base color
if (n==0){
for (m=0;m<message.length;m++)

crossref(m).style.color=neonbasecolor
}

//cycle through and change individual letters to neon color
crossref(n).style.color=neontextcolor

if (n<message.length-1)
n++
else{
n=0
clearInterval(flashing)
setTimeout("beginneon()",1500)
return
}
}

function beginneon(){
if (document.all||document.getElementById)
flashing=setInterval("neon()",flashspeed)
}
beginneon()


</script>
</h2> <br><br>
						<img src="images/page1_img1.jpg" alt="" class="img_inner fleft">
						<div class="extra_wrapper">
							<div class="text1">
								Some tips to self arrangement. .By login or emailing us you ca ask for more help from us..
							</div>
							<p class="col1">
							<%
						{
						ResultSet rs = (ResultSet)(request.getAttribute("TIPS_ALL_DATA"));
						int c = 1; 
							while(rs.next())
							{
						%>
							<%=rs.getString(2) %>				
						<%
							}
							c++;
						}
						%>
							</p>
							<div class="text1"><br>
							If you like our help then please Follow us on<a class="col2" href="https://twitter.com/login" rel="nofollow"> Twitter </a> and Like us on<a class="col2" href="https://www.facebook.com/login.php" rel="nofollow"> Facebook</a> ..
							</div>			
						</div>
					</div>
					<div class="grid_4 prefix_1"><br>
						<h5>Our experts are always ready to help you</h5>
						<img src="images/page1_img2.jpg" alt="" class="img_inner fleft i1">
						<div class="extra_wrapper">
							<div class="col1">
								<a href="#">Our past events gallery is in below Small Slider</a>
							</div><br>
							The time you travell with us the journey will remains perfect and happiness will be all your surround..
							</div>
						<div class="clear cl1"></div>												
						<div class="clear"></div>
						<a href="C_register_ser" class="btn">Join us for More</a>
					</div>
					<div class="clear"></div>
				</div>
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