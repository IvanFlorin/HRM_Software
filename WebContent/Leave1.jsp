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
<body style="background-color:#e6e6ff">
<%@include file="Header.html" %>
<form method="post" action="LeaveServlet">
            <center>
            <table border="0" width="35%" cellpadding="15" >
            <h4>You have already applied for leave so pleas contact your HR for more information.</h4>
                <thead>
                    <tr>
                        <th colspan="2"><center><h3><b>Leave Information </b></h3></center></th>
                    </tr>
                 
                </thead>
                <tbody>
                <tr>
                        <td height="50"><center><b>Subject :</b></center></td>
                        <td height="50"><center><input type="text" id="sub" name="sub" value="" /></center></td>
                    </tr>               
                    <tr>
                        <td><center><b>Leave Reason :</b></center></td>
                        <td height="50"><center><input type="text" id="reason" name="reason" value=""  /></center></td>
                    </tr>
                   
                    <tr>
                        <td><center><b>Days:</b></center></td>
                        <td height="50"><center> 
                    
							&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<select name="days" onchange="if (this.selectedIndex==3){this.form['other'].style.visibility='visible'}else {this.form['other'].style.visibility='hidden'};">
							<option value="" selected="selected">Select...</option>
							<option value="1" >Half Day</option>
							<option value="2">1 Day leave</option>
							<option value="other">Other</option>
							</select>
							<input type="text" name="other" value="Enter Number of Days" style="visibility:hidden;"/>
							</td>   
					  </tr>
                    <tr>
                        <td><center><b>Date:</b></center></td>
                        <td height="50"><center><input type="date" name="cdate"></center></td>
                    </tr>
                    <tr><br>
                        <td align="right"><br><input type="submit" value="Submit" />&nbsp&nbsp&nbsp&nbsp&nbsp</td>
                        <td align="left"><br>&nbsp&nbsp&nbsp&nbsp&nbsp<input type="reset" value="Reset" /></td>
                    </tr>
                   
                </tbody>
                
            </table>
            </center>
        </form>
        <%@include file="Footer.html" %>
</body>
</html>