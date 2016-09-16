<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
	function fun1()
	{
		
		var x = document.forms["form1"]["t1"].value;
		if(x=="" || x==null)
		{
			document.getElementById('name1').innerHTML = "<img src=images/false.jpg height:20px width=20px>";
		}
		else
		{
			document.getElementById('name1').innerHTML = "<img src=images/true.jpg  height:20px width=20px>";
		}
	}
	
	function fun2()
	{
		var x = document.forms["form1"]["t2"].value;
		if(x=="" || x==null)
		{
			document.getElementById('name2').innerHTML = "<img src=images/false.jpg height:20px width=20px>";
		}
		else
		{
			document.getElementById('name2').innerHTML = "<img src=images/true.jpg height:20px width=20px>";
		}
	}
	
	function fun3()
	{
		var x = document.forms["form1"]["t10"].value;
		var atpos = x.indexOf("@");
		var dotpos = x.lastIndexOf(".");
		
		
		/*if(atpos<1 || dotpos < atpos+2 || dotpos+2>=x.length)
		{
			document.getElementById('name3').innerHTML = "<img src=images/false.jpg height:20px width=20px>";
		}
		else
		{
			document.getElementById('name3').innerHTML = "<img src=images/true.jpg height:20px width=20px>";
		}*/
		
	}
	
	function fun4()
	{
		var x = document.forms["form1"]["t6"].value;
		if(x==null || x.length!=10 || isNaN(x))
		{
			document.getElementById('name4').innerHTML = "<img src=images/false.jpg height:20px width=20px>";
		}
		else
		{
			document.getElementById('name4').innerHTML = "<img src=images/true.jpg height:20px width=20px>";
		}
	}
	
		</script>
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
			});
			});
			$(window).load (
			function(){$('.carousel1').carouFredSel({auto: false,prev: '.prev1',next: '.next1', width: 1030, items: {
				visible : {min: 1,
				max: 4
				},
				height: 'auto',
				width: 157
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
						<div class="grid_4">
				<h3>Registration</h3>
				
<form id="form" method="post" action="C_register_ser">
											
<fieldset>
<legend><b><u>-: Enter your details :-</u></b></legend>
<br><br>

 
   <div class="control-group">
                                          <label class="control-label" for="select01"><b>Register as:-</b></label>
                                          <div class="controls">
                                            <select name="s1">
                                            	<option value="Client">Client</option>
                                              	<option value="Agent">Agent</option>                                             
                                            </select>
                                          </div>
                                        </div>

<div>
<br>
<label for="first_name"><b>First Name :-</b></label><br>
<input type="text" name="t1" value="" maxlength="100" onBlur="fun1()" /> <span id="name1"> </span><br><br>
</div>


<div>
<label for="first_name"><b>Last Name :-</b></label><br>
<input type="text" name="t2" value="" maxlength="100" onBlur="fun2()" /> <span id="name2"> </span><br><br>
</div>



<div>
<label for="lunch"><b>Gender :-</b></label><br><br>
<input type="radio" name="t3" value="Female" /> Female
<input type="radio" name="t3" value="Male" checked="checked"/> Male <br><br>
</div>


<div class="control-group">
<label class="control-label" for="date01"><b> Birth date :-</b></label>
	<div class="controls">
    	<input type="text" name="t4" class="input-xlarge datepicker" id="date01" value=""><br><br>
     </div>
     </div>


<div>
<label for="comments"><b>Address :-</b></label><br>
<textarea name="t5" rows="3" cols="20"></textarea><br><br>
</div>


<div>
<label for="first_name"><b>Email address :-</b></label><br>
<input type="text" name="t10" value="" style=" width:200px" onBlur="fun3()"> <span id="name3"> </span><br><br>
</div>	


<div>
<div>
<label for="first_name"><b>Contact number :-</b></label><br>
<input type="text" name="t6" value="" width="100px" onBlur="fun4()"> <span id="name4"> </span>
</div>						
<div>
<label for="first_name">

<b>

<%


if(request.getParameter("submit")!=null)
{
	if(request.getAttribute("REQ").toString().compareTo("1")==0)
	{
		out.println("<font color=red>Please Insert Properly</font>");
	}
}

%>

</b>

</label><br>
</div>

	<div class="btns">
				<input type = "submit" name = "submit" value = "REGISTER" class="but_style" />
				<br><br></div>
					<b>Already registered!
					<br><a href="C_login_ser" class="but_style">  LOG IN </a>
					</b>
					</div>
					</fieldset>
					</form>						
					</div>
				
			</div>
	
			<div class="grid_8">
			<br><br><br><br><br><br>
			<img src="images/register.jpg" width="725" height="750" class="img_inner fleft">		
			
						
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
									<li><a href="#"><img src="images/logo2.png" alt=""></a></li>
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



