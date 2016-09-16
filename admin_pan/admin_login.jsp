<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>

		<jsp:include page="soc_css.jsp" />
		<jsp:include page="soc_script.jsp" />
		<jsp:include page="soc_title.jsp" />
   
   	</head>
    <body id="login">
    <div class="container">

      <form class="form-signin" method="post" action="A_login_ser">
      
        <h2 class="form-signin-heading">Please sign in</h2>
        <input type="text" class="input-block-level" placeholder="Email address" name="uname">
        <input type="password" class="input-block-level" placeholder="Password" name="pword">
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> Remember me
        </label>
        <button class="btn btn-large btn-primary" type="submit">Sign in</button>
     
      </form>

    </div> <!-- /container -->
    <script src="vendors/jquery-1.9.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
  
    </body>
</html>