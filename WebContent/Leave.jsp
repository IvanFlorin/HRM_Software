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
</head>
<style type="text/css">
@import "all.css";
</style>
<%@include file="Header.html" %>
<body style="background-color:#3D5976;overflow:scroll;" >
<div style="background-image:url('1 (1).jpg');background-size:cover;">
<div class="container">
  <h1 class="well">Leave Information</h1>
  <div class="col-lg-12 well">
  <div class="row">
				<form method="post" action="LeaveServlet">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-8 form-group">
								<div class="form-group">
								<label>Subject</label>
								<input type="text" id="sub" name="sub" placeholder="Enter Subject Here.."  class="form-control">
							</div>
							</div>
							</div>
						</div>
						<div class="col-sm-12">
						 <div class="row">
							<div class="col-sm-8 form-group">
							    <div class="form-group">
			                    <label>Leave Reason</label>
								<input type="text" id="reason" name="reason"placeholder="Enter Reason of leave Here.." class="form-control">
							</div>
							</div>
							</div>
						</div>
						<div class="col-sm-12">
						 <div class="row">
							<div class="col-sm-8 form-group">
							    <div class="form-group">
							    <label>Days</label>
			                   <select name="days"  class="form-control" onchange="if (this.selectedIndex==3){this.form['other'].style.visibility='visible'}else {this.form['other'].style.visibility='hidden'};">
							<option value="" selected="selected">Select...</option>
							<option value="1" >Half Day</option>
							<option value="2">1 Day leave</option>
							<option value="other">Other</option>
							</select>
							<input type="text" name="other" class="form-control" value="Enter Number of Days" style="visibility:hidden;"/>
							</div>
							</div>
							</div>
						</div>
						<div class="col-sm-12">
						 <div class="row">
							<div class="col-sm-8 form-group">
							    <div class="form-group">
			                    <label>Date</label>
								<input type="date" name="cdate" class="form-control">
							</div>
							</div>
							</div>
						</div>
						
				
							
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button class="button">Submit</button>
		        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <button class="button" value="reset">Reset</button>
                   </form>
         
         </div>	


        <%@include file="Footer.html" %>
        </div>
        </div><br><br><br>
</body>
</html>