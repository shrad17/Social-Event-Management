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

       <div class="navbar navbar-fixed-top">
      	 <jsp:include page = "header.jsp" />
       </div>
       
        
       <div class="span3" id="sidebar">
     	  <jsp:include page = "event_left_menu.jsp" />
       </div>
       
       <!--/span-->
       <div>
       <table>
       <tr> 
       <td> &nbsp; </td>
       </tr>
       </table>
	
	 <div class="span9" id="content">
  	     <div class="row-fluid">
			<div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Events</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                    <form class="form-horizontal" method="post" action="Event_add_ser" enctype="multipart/form-data">
                                      <fieldset>
                                        <legend>Add new event</legend>
                                        
                                        <div class="control-group">                                        
                                          <label class="control-label" for="typeahead"> Event Name : </label>
                                          <div class="controls">
                                            <input type="text" name="ename" class="span6" id="typeahead"  data-provide="typeahead" data-items="4" data-source='["Alabama","Alaska","Marriage","Get-to-gather","Birthday"]'>
                                          </div>
                                        </div>
                                        <div class="control-group">
                                          <label class="control-label" for="fileInput">Upload image:</label>
                                        <div class="controls">
                                            <input name="img1" class="input-file uniform_on" id="fileInput" type="file" >
                                    	</div>
                                    </div>
                                    
                                    <div class="control-group">
                                          <label class="control-label" for="textarea2">Event Details </label>
                                    <div class="controls">
                                            <textarea name="edetail" class="input-xlarge textarea" placeholder="Enter text ..." style="width: 810px; height: 200px"></textarea>
                                	</div>
                                </div>
                                <div class="form-actions">
                                          <button type="submit" name="sub1" class="btn btn-primary">Add</button>
                                          <button type="reset" class="btn">Cancel</button>
                            	</div>
                        	</fieldset>
                        </form>

                    	</div>
               		</div>
            	</div>    
       		</div>
     	  </div>
       </div>
       <br><br><br><br><br><br>
       <br>
       <br><br><br><br>       
       <!-- footer -->
      		  		<jsp:include page = "soc_footer.jsp" />
       <!-- footer -->  			       
	</body>
</html>