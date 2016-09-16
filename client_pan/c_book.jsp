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
				
				<style type="text/css">

.main {
width:200px;
border:1px solid black;
}

.month {
background-color:black;
font:bold 12px verdana;
color:white;
}

.daysofweek {
background-color:gray;
font:bold 12px verdana;
color:white;
}

.days {
font-size: 12px;
font-family:verdana;
color:black;
background-color: lightyellow;
padding: 2px;
}

.days #today{
font-weight: bold;
color: red;
}

</style>


<script type="text/javascript" src="js/calendar.js">

/***********************************************
* Basic Calendar-By Brian Gosselin at http://scriptasylum.com/bgaudiodr/
* Script featured on Dynamic Drive (http://www.dynamicdrive.com)
* This notice must stay intact for use
* Visit http://www.dynamicdrive.com/ for full source code
***********************************************/

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
				<h3><b><font color="purple">..BOOKING..</b></h3>
				<script type="text/javascript">

var todaydate=new Date()
var curmonth=todaydate.getMonth()+1 //get current month (1-12)
var curyear=todaydate.getFullYear() //get current year

document.write(buildCal(curmonth ,curyear, "main", "month", "daysofweek", "days", 1));
</script>
				<div class="extra_wrapper">
					<p class="col1">
					</p>
				</div>
			</div>
			<div class="grid_4">
				<h3><font color="navy blue">Your Booking:</h3>
				
				<br><br><h2><a href="Book_det_adm"><font color="green"><div><div><b>As Per Our<br><br> Facilities</div></div>&nbsp;&nbsp;&nbsp;&nbsp;<div><div><div><img src="images/play_on.jpg" alt="" class="img_inner square"></div></u></a></h2>
				<hr>
				<h2><a href="Book_det_cl"><font color="green"><div><div><h7><b>As Per Your<br><br> Requirement</div></div>&nbsp;&nbsp;&nbsp;&nbsp;<div><div><div><img src="images/play_on.jpg" alt="" class="img_inner square"></div></u></a></h2>
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