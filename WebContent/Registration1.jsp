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
<body style="background-color:#e6e6ff">
<%@include file="Header2.html" %>
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
<form method="post" id="reg_form" action="Registration1" onsubmit="javascript:return ValidateEmail('reg_form','email','pass','c_pass','fname','mname','lname','uname');">
            <center>
            <table border="0" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2"><center><h3><b>Enter Information Here</b></h3></center></th>
                    </tr>
                </thead>
                <tbody>
                
                    <tr>
                        <td><b>FirstName</b></td>
                        <td height="40"><center><input type="text" id="fname" name="fname" value=""  /></center></td>
                    </tr>
                    <tr>
                    <td><b>MiddleName</b></td>
                        <td height="40"><center><input id="mname" type="text" name="mname" value="" /></center></td>
                    </tr>
                    <tr>
                        <td><b>LastName</b></td>
                        <td height="40"><center><input id="lname" type="text" name="lname" value="" /></center><td>
                    </tr>
                      <tr>
                        <td><b>Date of Birth:</b></td>
                        <td height="40"><center><input type="date" name="dob"></center></td>
                    </tr>
                    <tr>
                        <td><b>Nationality:</b></td>
                        <td height="40"><center><input id="na" type="text" name="na" value="" ></center></td>
                    </tr>
                    <tr>
                        <td><b>Gender:</b></td>
                        <td align="left">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        <input type ="radio" name ="sex" value="Male">Male&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
						<input type = "radio" name="sex" value="Female">Female</td></tr> 
                    <tr>
                    <tr>
                        <td><b>E-Mail ID </b></td>
                        <td height="40"><center><input id="email" type="text" name="email" value="" /></center></td>
                    </tr>
                    <tr>
                        <td><b>Password</b></td>
                        <td height="40"><center><input id="pass" type="password" name="pass" value="" /></center></td>
                    </tr>
                    <tr>
                        <td><b>Confirm Password</b></td>
                        <td height="40"><center><input id="c_pass" type="password" name="c_pass" value="" /></center></td>
                    </tr>
                     <tr>
                        <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="submit" value="Submit" /></td>
                       <td height="40"> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="reset" value="Reset" /></td>
                    </tr>
                   
                </tbody>
            </table>
            </center>
        </form>
        <%@include file="Footer.html" %>
</body>
</html>
