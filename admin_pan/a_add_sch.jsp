<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<jsp:include page="soc_css.jsp" />
<jsp:include page="soc_script.jsp" />
<jsp:include page="soc_title.jsp" />

</head>

<body>

<div class="navbar navbar-fixed-top"><jsp:include
	page="header.jsp" /></div>


<div class="span3" id="sidebar"><jsp:include
	page="sch_left_menu.jsp" /></div>

<!--/span-->
<div>
<table>
	<tr>
		<td>&nbsp;</td>
	</tr>
</table>

<div class="span9" id="content">
<div class="row-fluid">
<div class="block">
<div class="navbar navbar-inner block-header">
<div class="muted pull-left">Our Schedule</div>
</div>
<div class="block-content collapse in">
<div class="span12">
			<form method="post" action="A_add_sch">
			<table>
				<tr>
					<td> Event Name : </td>
				</tr>
				<tr>
					<td> <input type="text" name="t1" size="30"  /> </td>
				</tr>
				<tr>
					<td> Event Venue : </td>
				</tr>
				<tr>
					<td> <input type="text" name="t2" size="30" />  </td>
				</tr>
				<tr>
					<td> Event City: </td>
				</tr>
				<tr>
					<td> <input type="text" name="t5" size="30" /> </td>
				</tr>
				<tr>
					<td> Event Date :  </td>
				</tr>
				<tr>
					<td> <input type="text" name="t3" size="30" /> </td>
				</tr>
				<tr>
					<td>  Event Time : </td>
				</tr>
				<tr>
					<td> <input type="text" name="t4" size="20"  /> </td>
				</tr>
					<td> &nbsp; </td>
				</tr>
				<tr>
					<td> 
					<input type="submit" value="Add Details" name="sub1" />
					<button class="btn btn-primary" type="reset">Reset</button>
					</td>
				</tr>
			</table>
			</form>
			
</div>
</div>
</div>
</div>
</div>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<!-- footer -->
<jsp:include page="soc_footer.jsp" />
<!-- footer -->
</body>
</html>