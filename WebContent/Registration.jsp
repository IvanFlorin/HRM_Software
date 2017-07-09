<%@include file="Header1.html" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
@import "all.css";
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="bootstrap-4.0.0-alpha.6-dist/bootstrap-4.0.0-alpha.6-dist/css/bootstrap.min.css">
<link href="bootstrap-4.0.0-alpha.6-dist/bootstrap-4.0.0-alpha.6-dist/js/bootstrap.js">
<link href="bootstrap-4.0.0-alpha.6-dist/bootstrap-4.0.0-alpha.6-dist/js/bootstrap.min.js">
  <meta charset="utf-8">	<!-- <meta charset="ISO-8859-1"> -->

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <title>Registeration</title>

</head>
<style type="text/css">
@import "all.css";
</style>

<body style="background-color:#3D5976;overflow:scroll;" >
<div style="background-image:url('1 (1).jpg');background-size:cover;">


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