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

</head>
<body style="background-color:#3D5976;overflow:scroll;" >
<div style="background-image:url('1 (1).jpg');background-size:cover;">
<%@include file="Header.html" %> 

<div class="container">
   <center> <h1 class="well">Change Employee Password</h1></center>
	<div class="col-lg-12 well">
	<div class="row">
				<form method="post" action="LoginServlet2" >
				     	  <div class="col-sm-12">					
					   </div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Enter New Password</label>
								<input type="Password" name="pass" placeholder="Enter New Password" class="form-control"><br>
								
							</div>							
					   </div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Enter Confirm Password</label>
								<input type="password" name="pass1" placeholder="Enter Confirm Password" class="form-control"><br>
								
							</div>							
					   </div>
					    <div class="row">
							<div class="col-sm-6 form-group">
								&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <button class="button">Submit</button>
		      						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <button class="button" value="reset">Reset</button>
		      						<br></div>
		        			</div></form>
		        			</div></div>
		        			</div>
			           <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			           <%@include file="Footer.html" %>  

				          	</div>
</body>
</html>