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
				<meta http-equiv="content-type" content="text/html; charset=utf-8" />
				<meta name="keywords" content="WOW Slider, Free Javascript Image Gallery, Free Javascript Photo Gallery" />
				<meta name="description" content="WOWSlider created with WOW Slider, a free wizard program that helps you easily generate beautiful web slideshow" />
	<!-- Start WOWSlider.com HEAD section -->
					<link rel="stylesheet" type="text/css" href="engine1/style.css" />
					<style type="text/css">a#vlb{display:none}</style>
					<script type="text/javascript" src="engine1/jquery.js"></script>
					<script type="text/javascript" src="engine1/wowslider.js"></script>
					
					<!-- <script type="text/javascript" src="engine1/jquery.accordion.js"></script> -->
					
					<meta http-equiv="content-type" content="text/html; charset=utf-8" />
					<meta name="keywords" content="WOW Slider, Free Javascript Image Gallery, Free Javascript Photo Gallery" />
					<meta name="description" content="WOWSlider created with WOW Slider, a free wizard program that helps you easily generate beautiful web slideshow" />
					<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
  					<script src="//code.jquery.com/jquery-1.9.1.js"></script>
 					<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
  					<link rel="stylesheet" href="/resources/demos/style.css">
					
	<!-- Start WOWSlider.com HEAD section -->
		<link rel="stylesheet" type="text/css" href="engine7/style.css" />
		<style type="text/css">a#vlb{display:none}</style>
		<script type="text/javascript" src="engine7/jquery.js"></script>
		<script type="text/javascript" src="engine7/wowslider.js"></script>
		<script type="text/javascript" src="engine7/wowslider.js"></script>
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
			<%
						{
						ResultSet rs = (ResultSet)(request.getAttribute("EVENT_ALL_DATA"));
						int c = 1; 
							while(rs.next())
							{
			%>
			<div class="grid_12">
				<br><br><br>
			</div>
			<div class="grid_8">
				<div class="blog">
					
					<div id="wowslider-container1">
						<div class="ws_images">
							<span><img src="data1/images/event.jpg" alt="" title="" id="wows0"/></span>
							<span><img src="data1/images/img01.jpg" alt="" title="" id="wows1"/></span>
							<span><img src="data1/images/balinewyearseve2013hdwallpapers.jpg" alt="" title="" id="wows3"/></span>
							<span><img src="data1/images/10576203beachweddingforindians.jpg" alt="" title="" id="wows4"/></span>
							<span><img src="data1/images/img_16201.jpg" alt="" title="" id="wows2"/></span>
							<span><img src="data1/images/indian_wedding_photographer_009.jpg" alt="" title="" id="wows5"/></span>
						</div>
						<div class="ws_bullets">
						<div>
							<a href="#wows0" title=""><img src="data1/tooltips/event.jpg" alt=""/>1</a>
							<a href="#wows1" title=""><img src="data1/tooltips/img01.jpg" alt=""/>2</a>
							<a href="#wows3" title=""><img src="data1/tooltips/balinewyearseve2013hdwallpapers.jpg" alt=""/>4</a>
							<a href="#wows4" title=""><img src="data1/tooltips/10576203beachweddingforindians.jpg" alt=""/>5</a>
							<a href="#wows2" title=""><img src="data1/tooltips/img_16201.jpg" alt=""/>3</a>
							<a href="#wows5" title=""><img src="data1/tooltips/indian_wedding_photographer_009.jpg" alt=""/>6</a>
						</div>
						</div>
					<a style="display:none" href="http://wowslider.com">Javascript Gallery Tutorial by WOWSlider.com v2.0</a>
					</div>
				<script type="text/javascript" src="engine1/script.js"></script>
				
				<div class="extra_wrapper">
				
					<div class="text1" id="accordionDiv"><div></div></div>
					</div>
				</div>

				</div>
			</div>
			<div class="grid_3 prefix_1">
			&nbsp;&nbsp;&nbsp;&nbsp;
			<br>
				<div class="blog">
				<time datetime="2013-01-01"><img src="images/smile.jpg" width="25" height="25"></time>
					<div class="blog_title">Variety of venues :</div>
					<div class="clear"></div>	
					</div>
						<!-- =======Starting of accordion==== -->	
<ul id="accordion1">
    <li><div>&nbsp;&nbsp;On ground areas</div>
        <ul>
            <li><a href="#">Party plots</a></li>
            <li><a href="#">Banquet</a></li>
            <li><a href="#">Farms</a></li>
            <li><a href="#">Basements</a></li>
        </ul>
    </li>
    <li><div>&nbsp;&nbsp;Near water areas</div>
        <ul>
            <li><a href="#">River bank</a></li>
            <li><a href="#">Seashore</a></li>
            <li><a href="#">Spring liner</a></li>
            <li><a href="#">Lackside</a></li>
        </ul>
    </li>
    <li><div>&nbsp;&nbsp;At the heights</div>
        <ul>
            <li><a href="#">on the top of mountains</a></li>
            <li><a href="#">Velly areas</a></li>
            <li><a href="#">Hilly ponds side</a></li>
            <li><a href="#">Ridges location</a></li>
        </ul>
    </li>
</ul>
<style>
#accordion1 {
    list-style: none;
    padding: 0 0 0 0;
    width: 270px;
}
#accordion1 div {
    display: block;
    background-color: #7CFC00;
    font-weight: bold;
    font-size: 18px;
    margin: 3px;
    cursor: pointer;
    padding: 10 10 10 12px;
    list-style: circle;
    -moz-border-radius: 18px;
    -webkit-border-radius: 18px;
    border-radius: 18px;
}
#accordion1 ul {
    list-style: none;
    padding: 0 0 0 0;
}
#accordion1 ul{
    display: none;
}
#accordion1 ul li {
    font-weight: normal;
    font-size: 15px;
    cursor: auto;
    background-color: #F5F5F5;
    padding: 0 0 0 20px;
}
#accordion1 a {
    text-decoration: none;
}
#accordion1 a:hover {
    text-decoration: underline;
}
</style>
<script>
			$("#accordion1 > li > div").click(function(){if(false == $(this).next().is(':visible')) 
				{
        		$('#accordion1 ul').slideUp(300);
    			}
				$(this).next().slideToggle(300);
			});
			$('#accordion1 ul:eq(0)').show();
</script>	
<!-- =============Ending of accordion============== -->	
					<br><br><br><br><br>
					<div class="blog_title"><a href="C_eventmore_ser"><b><u>Click here</u> for variety of food</b></a></div>
					<div class="clear"></div>	
						<h4>
						<a href="C_event_ser"><b><u>Back</u></b></a></h4>
			</div>
			<div class="clear"></div>
		</div>
		<%
				}
					c++;
				}
		%>
		
</div>
</div>
<!--==============================footer=================================-->
		<footer>
			<jsp:include page = "c_footer.jsp"></jsp:include>
		</footer>
</body>
</html>