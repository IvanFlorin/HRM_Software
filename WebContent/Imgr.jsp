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
<%@page import="java.io.OutputStream" %>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>salary display</title>
</head>
<body>



<% try {
	 Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ankuah","root","mundungus");
     PreparedStatement pst =con.prepareStatement("select * from p");
    
    
	   // System.out.println("connected");
ResultSet resultSet= pst.executeQuery();
//st.setString(1,emp_id);

while(resultSet.next()){
byte b[]=resultSet.getBytes("photo");
response.setContentType("image/jpg");
OutputStream img = response.getOutputStream();
img.write(b);

img.close();

}
}catch (Exception e) {
	 e.printStackTrace();
}
	
%>

