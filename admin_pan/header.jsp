
<%
	HttpSession ses = request.getSession();
	if(ses.getAttribute("USER_SES")==null)
	{
		RequestDispatcher rd = request.getRequestDispatcher("/admin_pan/admin_login.jsp");
		rd.forward(request,response);
	}
	else
	{
		String user = ses.getAttribute("USER_SES").toString();
%>
           
            <div class="navbar-inner">
                <div class="container-fluid">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="Index_ser">Admin Panel</a>
                    <div class="nav-collapse collapse">
                        <ul class="nav pull-right">
                            <li class="dropdown">
                                <a href="#"  class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-user"></i> <%=user %>
                                 <i class="caret"></i>

                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a tabindex="-1" href="Index_ser">Profile</a>
                                    </li>
                                    <li><a  href="http://localhost:8084/final_soc/C_index_ser">View client side</a></li>
		                            <li class="divider"></li>
                                    <li>
                                        <a tabindex="-1" href="A_login_ser?status=logout">Logout</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="nav">
                            <li class="active">
                        
                            </li>
                            <li class="dropdown">
                                <a href="About_view_ser" data-toggle="dropdown" class="dropdown-toggle">About Us <b class="caret"></b>

                                </a>
                                <ul class="dropdown-menu" id="menu1">
                                    <li>
                                        <a href="About_add_ser"> Add About <i class="icon-arrow-right"></i>

                                        </a>
                                    </li>
                                    <li>
                                        <a href="About_view_ser">View About <i class="icon-arrow-right"></i>
                                        </a>
                                    </li>
                                     <li class="divider"></li>
                                    <li>
                                        <a href="#">Other Link</a>
                                    </li>
                                              
                                </ul>
                            </li>
                            </ul>
                        <ul class="nav">
                            <li class="active">
                                
                            </li>

                            <li class="dropdown">
                                <a href="#"  class="dropdown-toggle" data-toggle="dropdown"> Contact Us <i class="caret"></i>

                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a  href="Contact_view_ser">View Contact <i class="icon-arrow-right"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="Contact_edit_ser">Edit Contact <i class="icon-arrow-right"></i>
                                        </a>
                                    </li>
                                  
                                    <li class="divider"></li>
                                    <li>
                                        <a tabindex="-1" href="A_feedback_ser">View Feedback</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"> Title <i class="caret"></i>

                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a tabindex="-1" href="Title_view_ser"> View Title <i class="icon-arrow-right"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a tabindex="-1" href="Title_edit_ser"> Edit Title <i class="icon-arrow-right"></i>
                                        </a>
                                    </li>
                                </ul>
                             </li>
                         </ul>
						<ul class="nav">
                            <li class="active">
                        
                            </li>
                            <li class="dropdown">
                                <a href="About_view_ser" data-toggle="dropdown" class="dropdown-toggle">Events <b class="caret"></b>

                                </a>
                                <ul class="dropdown-menu" id="menu1">
                                    <li>
                                        <a href="Event_add_ser"> Add Event <i class="icon-arrow-right"></i>

                                        </a>
                                    </li>
                                    <li>
                                        <a href="Event_view_ser">View Event <i class="icon-arrow-right"></i>
                                        </a>
                                    </li>
                                     <li class="divider"></li>
                                    <li>
                                        <a href="#">Other Link</a>
                                    </li>
                                              
                                </ul>
                            </li>
                            </ul>
						
						<ul class="nav">
	<li class="dropdown"><a href="#" class="dropdown-toggle"
		data-toggle="dropdown"> Users <i class="caret"></i> </a>
	<ul class="dropdown-menu" id="menu1">
		<li><a href="User_view_ser"> View Users <i
			class="icon-arrow-right"></i> </a></li>
			</ul>
	</li>
	</ul>
	
	<ul class="nav">
	<li class="dropdown"><a href="#" class="dropdown-toggle"
		data-toggle="dropdown"> Agents <i class="caret"></i> </a>
	<ul class="dropdown-menu" id="menu1">
		<li><a href="Agent_view_ser">View Agents <i
		class="icon-arrow-right"></i> </a></li>
	</ul>
	</li>
	</ul>
	
	
	<ul class="nav">
	<li class="active"></li>
	<li class="dropdown"><a href="#"
		data-toggle="dropdown" class="dropdown-toggle">Booking  <b
		class="caret"></b> </a>
	<ul class="dropdown-menu" id="menu1">
		<li><a href="Cl_req_ser"> view booking <i
			class="icon-arrow-right"></i> </a></li>
		
	</ul>
	</li>
	</ul>
	
	<ul class="nav">
	<li class="active"></li>
	<li class="dropdown"><a href="#"
		data-toggle="dropdown" class="dropdown-toggle">Schedule <b
		class="caret"></b> </a>
	<ul class="dropdown-menu" id="menu1">
		<li><a href="A_add_sch"> Add Schedule <i
			class="icon-arrow-right"></i> </a></li>
		<li><a href="A_view_sch">View Schedule <i
			class="icon-arrow-right"></i> </a></li>
		<li class="divider"></li>
		<li><a href="#">Other Link</a></li>
	</ul>
	</li>
	</ul>
	<ul class="nav">
                            <li class="active">
                        
                            </li>
                            <li class="dropdown">
                                <a href="Tips_view_ser" data-toggle="dropdown" class="dropdown-toggle"> Tips <b class="caret"></b>

                                </a>
                                <ul class="dropdown-menu" id="menu1">
                                    <li>
                                        <a href="A_tips_ser"> Add Tips <i class="icon-arrow-right"></i>

                                        </a>
                                    </li>
                                    <li>
                                        <a href="Tips_view_ser">View Tips <i class="icon-arrow-right"></i>
                                        </a>
                                    </li>
                                     <li class="divider"></li>
                                    <li>
                                        <a href="#">Other Link</a>
                                    </li>
                                              
                                </ul>
                            </li>
                            </ul>
						
						
                    </div>
                    <!--/.nav-collapse -->
                </div>
            </div>
<%
	}
%>
     