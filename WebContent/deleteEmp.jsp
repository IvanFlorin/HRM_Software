<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
</head>
<style type="text/css">
@import "all.css";
</style>

<body style="background-color:#3D5976;overflow:scroll;" >
<div style="background-image:url('1 (1).jpg');background-size:cover;">
<%@include file="Header1.html" %>
<script type="text/javascript"> 
function ValidateEmail(form_id,email)
{

if (confirm("Are you sure to remove this Employee...........") == true) {
  
} else {
	document.forms[form_id].elements[email].focus();
	return false;
}
	}
</script>


<div class="container">
  <h1 class="well">Remove Employee Information</h1>
  <div class="col-lg-12 well">
  <div class="row">
<form id="delete" action="DeleteEmp" method="post" onsubmit="javascript:return ValidateEmail('delete','email');">
<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-8 form-group">
								<div class="form-group">
								<label>Enter Employee Email ID which you want to Delete</label>
								<input type="text" name="email" placeholder="Enter email Here.."  class="form-control">
							</div>
							</div>
							</div>
						</div>

&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button class="button">Submit</button>





                     
                   
</form></div></div></div>

<%@include file="Footer.html" %>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br></div>
</body>
</html>







