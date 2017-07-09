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
  <title></title>
  
  <style type="text/css">
@import "all.css";
</style>
</head>
<body style="background-color:#3D5976;overflow:scroll;" >
<div style="background-image:url('1 (1).jpg');background-size:cover;">
<%@include file="Header1.html" %>
<script type="text/javascript"> 
function Validate(form_id,jtitle,emp_status,dept,sal)  
{  
var title =document.forms[form_id].elements[jtitle].value;
var status= document.forms[form_id].elements[emp_status].value;
var department= document.forms[form_id].elements[dept].value;
var salary= document.forms[form_id].elements[sal].value;

if(title == "")
	{
      alert("Enter Job Title!");
      document.forms[form_id].elements[jtitle].focus()
      return false;
    }
if(status == "")
{
  alert("Enter Designations!");
  document.forms[form_id].elements[emp_status].focus()
  return false;
}
if(department == "")
{
  alert("Enter Department detail!");
  document.forms[form_id].elements[dept].focus()
  return false;
}
if(salary == "")
{
  alert("Enter Employee salary!");
  document.forms[form_id].elements[sal].focus()
  return false;
}   
}
</script>
<form method="post" id="job_form" action="JobDetailsServlet"  onsubmit="javascript:return Validate('job_form','jtitle','emp_status','dept','sal');">
         
           <div class="container">
           
    <h1 class="well">JOB DETAIL</h1>
	<div class="col-lg-12 well">
	<div class="row">
				  
			 			    <div class="col-sm-12">
						<div class="row">
						    <div class="col-sm-6 form-group">
			    			    <label>Job Title</label>
			    			    
			                    <select class="form-control input-sm" name="jtitle" id="jtitle">
			                    
			                    <option value="" >Select.... </option>
			                    <option value=".NET Developer" >.NET Developer </option>
                                <option value="Android Developer" >Android Developer </option>
                                <option value="JAVA Developer" >JAVA Developer </option>
							    <option value="PHP Developer" >PHP Developer </option>
							    <option value="Marketing Executive " >Marketing Executive </option>
							    <option value="Marketing Manager " >Marketing Manager </option>
							    <option value="SEO" >SEO </option>
							    <option value="Telecaller" >Telecaller </option>
							    <option value="Automation Tester" >Automation Tester </option>
							    <option value="Manual Tester" >Manual Tester </option>
                                </select>
			    		    </div>
			            </div>
			    		 <div class="row">
			    			 <div class="col-sm-6 form-group">
			    			     <label>Role</label>
			    			     <select class="form-control input-sm" name="role" id="role">
			    			      <option value="" >Select.... </option>
			                    <option value="trainee" >Trainee </option>
                                <option value="on_role" >On Role </option>
                                
                            </select>
			    		    </div>
			    		    
			            </div>
                         <div class="row">
			    					 <div class="col-sm-6 form-group">
			    					     <label>Date of Joining</label>
			    					    
			    					     <input type="date" id="doj" name="doj" class="form-control input-sm">
			    				   </div>
			    			 </div>
			    			     <div class="row">
			    			         <div class="col-sm-6 form-group">
			    					     <label>Package (Salary)</label>
			    						 <input type="text" id="sal"  name="salary" class="form-control input-sm" placeholder="">
			    					   </div>
			    				 </div>
			    				 <div></div>
			    				 
			    				 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button class="button">Submit</button>
		        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <button class="button" value="reset">Reset</button><br>
		        </div></div>
		        </div>
			    				 </div>
	</form>		    		
			 				

			    		
			    	  <br><br><br><br><br><br><br><br><br><br><br></div>		
        <%@include file="Footer.html" %>
      	
</body>
</html>