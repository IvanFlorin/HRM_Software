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
  <style type="text/css">
@import "all.css";
</style>
</head>
<body style="background-color:#3D5976;overflow:scroll;" >
<div style="background-image:url('1 (1).jpg');background-size:cover;">
<%@include file="Header1.html" %>


<script type="text/javascript"> 
function Validate(form_id,pno1,aphno,aemail1,hno1,addr1)  
{  
var phoneno =document.forms[form_id].elements[pno1].value;
var aphno= document.forms[form_id].elements[aphno].value;

var caddr= document.forms[form_id].elements[caddr].value;
var paddr= document.forms[form_id].elements[paddr].value;
if(phoneno == "")
	{
      alert("Enter Phone Number!");
      document.forms[form_id].elements[pno1].focus()
      return false;
    }
if(aphno == "")
{
  alert("Enter Alternate phone Number!");
  document.forms[form_id].elements[aphno].focus()
  return false;
}

if(caddr == "")
{
  alert("Enter Current Address!");
  document.forms[form_id].elements[caddr].focus()
  return false;
}   
if(paddr == "")
{
  alert("Enter Permanent Address!");
  document.forms[form_id].elements[paddr].focus()
  return false;
}  
}
</script>
<form method="post" action="ContactDetailsServlet" id="Cont_form"   onsubmit="javascript:return Validate('Cont_form','pno1','aphno','hno1','addr1');">
        
           <div class="container" >
        <h1 class="well">Contact Details</h1>
	     <div class="col-lg-12 well">
	     <div class="row">

			 			   <div class="col-sm-12">
			 			       <div class="row">
			 			           <div class="col-sm-8 form-group">
					                   <label>Phone Number</label>
						               <input type="text" name="pno" id="pno1" class="form-control input-sm" placeholder="Enter Phone Number Here">
			    				   </div>
			    			   </div>
			    			    <div class="row">
			 			            <div class="col-sm-8 form-group">
			    		                <label>Alternate Phone Number</label>
						                <input type="text" name="aphno" id="aphno" class="form-control input-sm" placeholder="Enter Alternate Phone Number Here">
			    			       </div>
			    		      </div> 
			    		       <div class="row">
			    		           <div class="col-sm-8 form-group">
			    		           <label>Relation</label>
			    		           <input type="text" name="aphnor" id="aphnor" class="form-control input-sm" placeholder="Enter Relation Here">
			    			       </div>
			    			  </div>
			    		      <div class="row">
			 			            <div class="col-sm-8 form-group">
						                <label>Current Address</label>
						                <input type="text" name="caddr" id="caddr" class="form-control input-sm" placeholder="Enter Current Address Here">
			    		           </div>
			    	           </div>
			    	            <div class="row">
			 			             <div class="col-sm-8 form-group">
			 			                 <label>Permanent Address</label>
						                <input type="text" name="paddr" id="paddr" class="form-control input-sm" placeholder="Enter Permanent Address Here">
			    			      </div>
			    		     </div>
			    		          &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button class="button">Submit</button>
		        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <button class="button" value="reset">Reset</button>
					</div></div></div></div>
			    	 </form>	<br><br><br><br><br>	</div>
        <%@include file="Footer.html" %>
</body>
</html>