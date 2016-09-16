<div class="container_12">
				<div class="grid_2">
					<div class="copy">
				<a href="C_index_ser" class="footer_logo"><img src="images/crelogo.png"	alt=""></a>	
				&copy; 2013	<a href="#">Privacy Policy</a>
				</div>
				</div>
				<div class="grid_2">
					<ul>
						<li><a href="C_index_ser"><h3>Home</h3></a></li>
						<li><a href="C_about_ser"><h3>About</h3></a></li>
						<li><a href="C_event_ser"><h3>Event</h3></a></li>
						<li><a href="C_contact_ser"><h3>Contact</h3></a></li>
					</ul>
				</div>				
				<div class="grid_2">
					<ul>
						<%
						HttpSession ses1 = request.getSession();
						
						if(ses1.getAttribute("USER_CLIENT")!=null)
						{
						%>
						<li><a href="C_logout"><h3>Logout</h3></a></li>
						<li><a href="C_view_profile"><h3>Profile</h3></a></li>
						<li><a href="C_book"><h3>Book Event</h3></a></li>
						<%
						}
						else
						{
						%>
						<li><a href="C_login_ser"><h3>Login</h3></a></li>
						<li><a href="C_register_ser"><h3>Register</h3></a></li>	
						<li><a href="C_login_ser"><h3>Book Event</h3></a></li>					
						<%	
						}
						%>						
						<li><a href="C_eventmore_ser"><h3>Varieties</h3></a></li>
					</ul>
				</div>
				<div class="grid_2">
					<ul>
						<li><a href="C_contact_ser"><h3>Feedback</h3></a></li>
						<li><a href="C_index_ser"><h3>Tips and Ideas </h3></a></li>
					</ul>
				</div>
				
				
				<div class="grid_3 prefix_1">
					<h4>Search</h4><br>
					<!-- Google CSE Search Box Begins  -->
<!-- Use of this code assumes agreement with the Google Custom Search Terms of Service. -->
<!-- The terms of service are available at https://www.google.com/cse/docs/tos.html -->
<form id="cref" action="http://www.google.com/cse">
  <input type="hidden" name="cref" value="http://www.guha.com/cref_cse.xml" />
  <input type="text" name="q" size="40" /><br><br>
  <div class="btns">
  <input type="submit" name="sa" value="Search Now" class="but_style" /></div>
</form>
<script type="text/javascript" src="'/cse'/brand'?form='cref" ></script>
<!-- Google CSE Search Box Ends -->
				</div>
				<div class="clear"></div>
			</div>
	<div class="f_bot">
				<div class="container_12">
					<div class="grid_12"></div>
				</div>
	</div>