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
<%@include file="Header1.html" %>

<script type="text/javascript"> 
function Validate(form_id,fname,mname,lname,na)  
{  
var fname1 =document.forms[form_id].elements[fname].value;
var mname1= document.forms[form_id].elements[mname].value;
var lname1= document.forms[form_id].elements[lname].value;
var na1= document.forms[form_id].elements[na].value;

if(fname1 == "")
	{
      alert("Enter First Name!");
      document.forms[form_id].elements[fname].focus()
      return false;
    }
if(mname1 == "")
{
  alert("Enter Middle Name!");
  document.forms[form_id].elements[mname].focus()
  return false;
}
if(lname1 == "")
{
  alert("Enter Last Name!");
  document.forms[form_id].elements[lname].focus()
  return false;
}
if(na1 == "")
{
  alert("Enter Nationality!");
  document.forms[form_id].elements[na].focus()
  return false;
}   
}
</script>
<form method="post" id="Personal_form" action="PersonalDetailServlet" onsubmit="javascript:return Validate('Personal_form','fname','mname','lname','na');">
            <center>
            <table border="0" width="35%" cellpadding="15" >
                <thead>
                    <tr>
                        <th colspan="2"><center><h3><b>Enter Personal Information Here</b></h3></center></th>
                    </tr>
                 
                </thead>
                <tbody><tr>
                        <td height="50"><center><b>Emp_id:</b></center></td>
                        <td height="50"><center><input type="text" id="fname" name="fname" value="" /></center></td>
                    </tr>    
                <tr>
                        <td height="50"><center><b>First Name:</b></center></td>
                        <td height="50"><center><input type="text" id="fname" name="fname" value="" /></center></td>
                    </tr>               
                    <tr>
                        <td><center><b>Middle Name:</b></center></td>
                        <td height="50"><center><input type="text" id="mname" name="mname" value=""  /></center></td>
                    </tr>
                    <tr>
                    <td><center><b>Last Name:</b></center></td>
                        <td height="50"><center><input id="lname" type="text" name="lname" value="" /></center></td>
                    </tr>
                    <tr>
                        <td><center><b>Date of Birth:</b></center></td>
                        <td height="50"><center><input type="date" name="dob"></center></td>
                    </tr>
                    <tr>
                        <td><center><b>Nationality:</b></center></td>
                        <td height="50"><center><input id="na" type="text" name="na" value="" ></center></td>
                    </tr>
                    <tr>
                        <td><center><b>Gender:</b></center></td>
                        <td align="left">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        Male<input type ="radio" name ="sex" value="Male">&nbsp&nbsp&nbsp&nbsp&nbsp
						Female<input type = "radio" name="sex" value="Female"></td></tr> 
                    <tr>
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