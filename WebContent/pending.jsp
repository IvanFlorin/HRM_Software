<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="javax.servlet.ServletException" %>
<%@page import="javax.servlet.http.HttpServlet" %>
<%@page import="javax.servlet.http.HttpServletRequest" %>
<%@page import="javax.servlet.http.HttpServletResponse" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.*" %>

<head>
<style type="text/css">
@import "all.css";
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:#3D5976;overflow:scroll;" >
<div style="background-image:url('1 (1).jpg');background-size:cover;">
 <%@include file="Header1.html" %>

<%  HttpSession s = request.getSession(true); 
String title = "Display Current Date & Time";
Date  ss=new Date();

	//PrintWriter out = response.getWriter();
	  try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ankuah","root","mundungus");
			    //Statement st =  con.createStatement();
			    PreparedStatement pst =con.prepareStatement("select * from pending");
			   
			   // System.out.println("connected");
	ResultSet resultSet= pst.executeQuery();

	int i=0;
	String grid_row_controller1 = "<div class=\"container\"><h1 class=\"well\">Leave Applications Pending</h1></div>";
	 out.print(grid_row_controller1);


	while(resultSet.next()){
		i++;
		
	
		 String grid_row_controller = "<div class=\"container\">";
		 grid_row_controller+="<div class=\"col-lg-12 well\"> <div class=\"row\">";
       // grid_row_controller += "<tr align=\"center\"><th>Name :</th><td height=\"30\">";
        
        grid_row_controller += "<form method=\"POST\" action=\"Pending\" > <div class=\"row\"><div class=\"col-sm-8 form-group\"><div class=\"form-group\">";
        grid_row_controller += "<input type=\"hidden\"  name=\"abc\"value="+resultSet.getString("email")+"><label>Name</label><label class=\"form-control\" >"+resultSet.getString("fname")+resultSet.getString("lname")+"&nbsp&nbsp&nbsp</label>";
        grid_row_controller += "<label>Reason</label><label class=\"form-control\" >"+resultSet.getString("ren")+"</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp";
        grid_row_controller += "<input type=\"hidden\"  name=\"abcd\"value="+resultSet.getString("day") +"><input type=\"hidden\"  name=\"abcd1\"value="+resultSet.getString("hday") +">";
        grid_row_controller += "<input type =\"radio\" class=\"form-group\" name =\"ac\"value=\"Apruve\">Aproved&nbsp&nbsp&nbsp&nbsp&nbsp<input class=\"form-group\" type = \"radio\" name=\"ac\"value=\"Delete\">Reject&nbsp&nbsp&nbsp";   
        grid_row_controller += "</div></div></div>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button class=\"button\">Submit</button></form></div></div></div>";
        out.print(grid_row_controller);
	
		/* String grid_row_controller = "<table align=\"center\" cellpadding=\"5\" cellspacing=\"5\" >";
         grid_row_controller += "<tr align=\"center\"><th>Name :</th><td height=\"30\">";
         
         grid_row_controller += "<td><form method=\"POST\" action=\"Pending\" ></td>";
         grid_row_controller += "<td><input type=\"hidden\"  name=\"abc\"value="+resultSet.getString("email")+">"+resultSet.getString("fname")+resultSet.getString("lname")+"&nbsp&nbsp&nbsp</td>";
         grid_row_controller += "<td>"+resultSet.getString("ren")+"&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>"+"<td>"+resultSet.getString("sub")+"</td>";
         grid_row_controller += "<td><input type=\"hidden\"  name=\"abcd\"value="+resultSet.getString("day") +"><input type=\"hidden\"  name=\"abcd1\"value="+resultSet.getString("hday") +">";
         grid_row_controller += "<input type =\"radio\" name =\"ac\"value=\"Apruve\">Aproved&nbsp&nbsp&nbsp&nbsp&nbsp<input type = \"radio\" name=\"ac\"value=\"Delete\">Reject&nbsp&nbsp&nbsp<td>";   
         grid_row_controller += "<td><input type=\"submit\" value=\"Submit\" /></td></form>";
         out.print(grid_row_controller);
         */
        
         %>

<!--  <table align="center" cellpadding="5" cellspacing="5" >
<tr align="center"><th>Name :</th><td height="30"><input type="hidden"  name="abc"value="<%=resultSet.getString("email")%>"><%=resultSet.getString("fname") %><%=resultSet.getString("lname") %></td> 
<td>
<input type="hidden"  name="abcd"value="<%=resultSet.getString("day")%>">
<input type ="radio" name ="ac"value="Apruve">Apruve&nbsp&nbsp&nbsp&nbsp&nbsp
<input type = "radio" name="ac"value="Delete">Delete
</td>
</tr>
<tr>
                        <td><input type="submit" value="Submit" /></td>
                        
                    </tr>
</table>
-->
 <%}//
 
	con.close();
}
 catch (Exception e) {
e.printStackTrace();
}
%>

<br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>
<br><br><br><br><br><br>
<br><br><br><br><br><br>
<br><br>

<%@include file="Footer.html" %>
</div>
</body>
</html>