package com.hrm;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class Absent
 */
public class Absent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Absent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String month = request.getParameter("month");
		String email = request.getParameter("email"); 
		
		
	    String abs= request.getParameter("abs");
		int abs_i = Integer.parseInt(abs);
		
	  
		
		
		//int  emp_id_i= Integer.parseInt(emp_id);
		String url1=""; 
		String url3="";
		int abs1=0;
	
		
	
		 try {
				
				Connection con=jdbc.db();
				
				    //Statement st = con.createStatement();
				  //ResultSet rs;
	
				 
				    switch(month)
					{
					case "jan": {
						url3="select * from jan where email=?";
				    url1="update jan SET emp_id=?  WHERE email = ?";
				    
				 
					break;} 
					case "feb": {
				    url3="select * from feb where email=?";
				    url1="update feb SET emp_id=?  WHERE email = ?";
					break;}
					case "mar": {
				    url1="update mar SET emp_id=?  WHERE email = ?";
				   
				    url3="select * from mar where email=?";
					break;}
					case "april":
					{url1="update apr SET emp_id=?  WHERE email = ?";
				    
				    url3="select * from apr where email=?";
					break;}
					case "may": 
					{url1="update may SET emp_id=?  WHERE email = ?";
				    url3="select * from may where email=?";
					break;}
					case "jun": 
					{url1="update june SET emp_id=?  WHERE email = ?";
				    url3="select * from june where email=?";
					break;}
					case "jul": 
					{url1="update july SET emp_id=?  WHERE email = ?";
				    url3="select * from july where email=?";
					break;}
					case "aug": 
					{url1="update aug SET emp_id=?  WHERE email = ?";
				    url3="select * from aug where email=?";
					break;}
					case "sep": 
					{url1="update sep SET emp_id=?  WHERE email = ?";
				    url3="select * from sep where email=?";
					break;}
					case "oct": 
					{url1="update octo SET emp_id=?  WHERE email = ?";
				    url3="select * from octo where email=?";
					break;}
					case "nov": 
					{url1="update nov SET emp_id=?  WHERE email = ?";
				    url3="select * from nov where email=?";
					break;}
					case "dece": 
					{url1="update dece SET emp_id=?  WHERE email = ?";
				    url3="select * from dece where email=?";
					break;}
					}
				    PreparedStatement pst =con.prepareStatement(url3);
			        pst.setString(1, email);
			      
		ResultSet resultSet= pst.executeQuery();
	
		
		while(resultSet.next())
		{
		   abs1 = resultSet.getInt("emp_id");
		  
		}
		 abs_i=abs1+abs_i;
		 PreparedStatement pstmt1 = con.prepareStatement(url1);
		    pstmt1.setInt(1,abs_i);
		    pstmt1.setString(2,email);
		    pstmt1.executeUpdate();
	        RequestDispatcher rd = request.getRequestDispatcher("absent.jsp");
			rd.forward(request, response);
	} catch (Exception e) {
        e.printStackTrace();
    } 
	
}

}
