<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="bootstrap-4.0.0-alpha.6-dist/bootstrap-4.0.0-alpha.6-dist/css/bootstrap.min.css">
<link href="bootstrap-4.0.0-alpha.6-dist/bootstrap-4.0.0-alpha.6-dist/js/bootstrap.js">
<link href="bootstrap-4.0.0-alpha.6-dist/bootstrap-4.0.0-alpha.6-dist/js/bootstrap.min.js">
  <meta charset="utf-8">	<!-- <meta charset="ISO-8859-1"> -->

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <title>Leave</title>
</head><style type="text/css">
@import "all.css";
</style>

<%@include file="Header1.html" %>
<script type="text/javascript"> 
function ValidateEmail(form_id,email,pass,c_pass,fname,mname,lname,uname)  
{  
var reg = /^([A-Za-z0-9_\-\.]){1,}\@([A-Za-z0-9_\-\.]){1,}\.([A-Za-z]{2,4})$/;
var address =document.forms[form_id].elements[email].value;
var pass_type=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
var pass_add= document.forms[form_id].elements[pass].value;
var c_pass_add= document.forms[form_id].elements[c_pass].value;
var fname_add= document.forms[form_id].elements[fname].value;
var mname_add= document.forms[form_id].elements[mname].value;
var lname_add= document.forms[form_id].elements[lname].value;
var uname_add= document.forms[form_id].elements[uname].value;



if(fname_add == "")
	{
      alert("Enter First Name!");
      document.forms[form_id].elements[fname].focus()
      return false;
    }
if(lname_add == "")
{
  alert("Enter Last Name!");
  document.forms[form_id].elements[fname].focus()
  return false;
}


    
if(reg.test(address)==false)  
{  
alert('Invalid Email Address.Please enter a valid one.');
document.forms[form_id].elements[email].focus(); 
return false;  
}  
if(uname_add == "")
{
  alert("Enter User Name!");
  document.forms[form_id].elements[fname].focus()
  return false;
}

if(pass_type.test(pass_add)==false)  
{  
alert('Invalid Password.Please enter a valid one.');
document.forms[form_id].elements[pass].focus(); 
return false;  
} 
if(pass_add != c_pass_add)
	{
	alert('Invalid Conform Password.Please enter a valid one.');
	document.forms[form_id].elements[c_pass].focus();
	
	return false; 
	}
}  
</script>
<body style="background-color:#3D5976;overflow:scroll;" >
<div style="background-image:url('1 (1).jpg');background-size:cover;">
<br>
<center><h4>Entered Email Id is used earlier............ </h4></center>

<div class="container">
  <h1 class="well">Add Employee</h1>
  <div class="col-lg-12 well">
  <div class="row">
				<form method="post" action="Registration4">
				
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-8 form-group">
								<div class="form-group">
								<label>FirstName</label>
								<input type="text" id="fname" name="fname" placeholder="Enter First Name Here.."  class="form-control">
							</div>
							</div>
							</div>
						</div>
					<div class="col-sm-12">
						 <div class="row">
							<div class="col-sm-8 form-group">
							    <div class="form-group">
			                    <label>MiddleName</label>
								<input type="text" id="mname" name="mname"placeholder="Enter Middle Name Here.." class="form-control">
							</div>
							</div>
							</div>
						</div>
                     <div class="col-sm-12">
                          <div class="row"> 
							   <div class="col-sm-8 form-group">
							       <div class="form-group">
								   <label>LastName</label>
								   <input type="text" id="lname" name="lname" placeholder="Enter Last Name Here.." class="form-control">
							</div>
						</div>
						</div>
						</div>
						
					<div class="col-sm-12">  
					      <div class="row"> 
						      <div class="col-sm-8 form-group">
						          <div class="form-group">
							      <label>Date of Birth</label>
							      <input type="date" name="dob" placeholder="" class="form-control">
						    </div>
						 </div>
						 </div>
						</div>
					<div class="col-sm-12">						    	
						<div class="row">
							<div class="col-sm-8 form-group">
							     <div class="form-group">
								 <label>Nationality</label>
								 <input type="text" id="na" name="na"  placeholder="" class="form-control">
							</div>	
					   </div>
					   </div>
						</div>
					<div class="col-sm-12">						    	
						<div class="row">
							<div class="col-sm-8 form-group">
							     <div class="form-group">
								 <label> Gender</label>
								 <br>
								 <td align="left">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
								<input type ="radio" name ="sex" value="Male">Male&nbsp&nbsp&nbsp&nbsp&nbsp
						        <input type = "radio" name="sex" value="Female">Female</td></tr> 
							</div>
						</div>
						</div>
						</div>
					<div class="col-sm-12">						    	
						<div class="row">	
							<div class="col-sm-8 form-group">
							    <div class="form-group">
								<label>Email</label>
								<input type="text" id="email"name="email" placeholder="Enter Email Here.." class="form-control">
							</div>		
						  </div>
						  </div>
						</div>
					<div class="col-sm-12">	    	
						<div class="row">
							<div class="col-sm-8 form-group">
							    <div class="form-group">  
								<label>Password</label>
								<input type="password" id="pass" name="pass" placeholder="Enter password Here.." class="form-control">
							</div>	
							</div>
						</div>
						</div>	
					<div class="col-sm-12">	    	
						<div class="row">		
							<div class="col-sm-8 form-group">
							    <div class="form-group">
								<label>ConformPassword</label>
								<input type="password" id="c_pass" name="c_pass" placeholder="Enter ConformPassword Here.." class="form-control">
							</div>	
						</div>	
											
					</div>
					</div>
							
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button class="button">Submit</button>
		        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <button class="button" value="reset">Reset</button>
                   </form>
           </div>		</div></div>
        <br><br><br><br> </div>
         
         <%@include file="bottom.html" %>		
       
</body>
</html>