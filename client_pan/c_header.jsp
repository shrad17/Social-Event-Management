


<div class="container_12">
<div class="grid_12">
					<div class="h_phone">
						<FORM>
							<div class="btns">
								<INPUT TYPE="button" VALUE="E-mail Us"
								onClick="parent.location='mailto:s.m.pandya174@gmail.com'" class="but_style">
							</div>
						</FORM>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</div>
					<h1><a href="C_index_ser"><img src="images/crelogo.png" alt="Gerald Harris attorney at law"></a></h1>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="menu_block">
				<div class="container_12">
					<div class="grid_12"><div class="socials"><a href="https://twitter.com/login"></a><a href="https://www.facebook.com/login.php"></a></div>					
						<div class="autor">
							<%
							
							HttpSession ses1 = request.getSession();
							
							if(ses1.getAttribute("USER_CLIENT")!=null)
							{
								%>
								| <a href="C_logout">User Logout</a>
								<% 
							}
							else
							{
								%>
								<a href="C_login_ser">User Login</a>
								<a href="C_register_ser">Register</a>
								<% 
							}
							%>
							
						</div>
						<nav class="">
							<ul class="sf-menu">
							
							<%

							
								String p1 = ses1.getAttribute("PAGE").toString();
								
								%>
								
								<%
									if(p1.equals("Home")==true)
									{
									%>
									<li class="current"><a href="C_index_ser">Home</a></li>
									<%
									}
									else
									{
									%>
									<li><a href="C_index_ser">Home</a></li>
									<%	
									}
								%>	
								<%
									if(p1.equals("About")==true)
									{
									%>
									<li class="current"><a href="C_about_ser">About</a></li>
									<%
									}
									else
									{
									%>
									<li class="with_ul"><a href="C_about_ser">About</a></li>
									<%	
									}
								%>	
								<%
									if(p1.equals("Event")==true)
									{
									%>
									<li class="current"><a href="C_event_ser">Events</a></li>
									<%
									}
									else
									{
									%>
									<li><a href="C_event_ser">Events</a></li>
									<%	
									}
								%>	
								<%
									if(p1.equals("Contact")==true)
									{
									%>
									<li class="current"><a href="C_contact_ser">Contact</a></li>
									<%
									}
									else
									{
									%>
									<li><a href="C_contact_ser">Contact</a></li>
									<%	
									}
								%>	

							</ul>
						</nav>
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
				</div>
				</div>
