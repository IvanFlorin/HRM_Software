package com.hrm;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class Pending
 */
public class Pending extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Pending() {
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
		doGet(request, response);
		SimpleDateFormat sdf = 
	    	      new SimpleDateFormat ("MMM");
		Date  ss=new Date();
		String url=""; 
		String url1="";
		try {
			 
	    	int n_leaves=0;
	    	int h_leaves=0;
	    	Connection con=jdbc.db();
	        String val=request.getParameter("ac");
	        String email=request.getParameter("abc");
	        String day=request.getParameter("abcd");
	        String hday=request.getParameter("abcd1");
	        int day_i=Integer.parseInt(day);
	        int hday_i=Integer.parseInt(hday);
	      
	        
	        		//request.getParameter("abc");
	       PreparedStatement pst =con.prepareStatement("select * from pending where email=?");
	        pst.setString(1,email);
	        ResultSet resultSet= pst.executeQuery();
	        //String email=""; 
	    	
	    	
	    	while(resultSet.next()){
	    		
	    		ss=resultSet.getDate("date");
	    	
	    	}
	    	String w= sdf.format(ss);
	    	switch(w)
	    	{
	    	case "Jan":{
	    		url="select * from jan where email=?";
	    		url1="UPDATE jan SET n_leaves = ?,h_day=? where email=? ;";
	    		
		    	
		    	break;
	    	}
	    	case "Feb":{
	    		url="select * from feb where email=?";
	    		url1="UPDATE feb SET n_leaves = ?,h_day=? where email=? ;";
		    break;	
	    	}
	    	case "Mar":{
	    		url="select * from mar where email=?";
	    		url1="UPDATE mar SET n_leaves = ?,h_day=? where email=? ;";
			    break;	
	    	}
	    	case "Apr":{
	    		url="select * from apr where email=?";
	    		url1="UPDATE apr SET n_leaves = ?,h_day=? where email=? ;";
			    break;	
	    	}
	    	case "May":{
	    		
	    		url="select * from may where email=?";
	    		url1="UPDATE may SET n_leaves = ?,h_day=? where email=? ;";
			    break;	
	    	}
	    	case "Jun":{
	    		url="select * from june where email=?";
	    		url1="UPDATE june SET n_leaves = ?,h_day=? where email=? ;";
			    break;	
	    	}
	    	case "Jul":{
	    		url="select * from july where email=?";
	    		url1="UPDATE july SET n_leaves = ?,h_day=? where email=? ;";
			    break;	
	    	}
	    	case "Aug":{
	    		url="select * from aug where email=?";
	    		url1="UPDATE aug SET n_leaves = ?,h_day=? where email=? ;";
			    break;	
	    	}
	    	case "Sep":{
	    		url="select * from sep where email=?";
	    		url1="UPDATE sep SET n_leaves = ?,h_day=? where email=? ;";
			    break;	
	    	}
	    	case "Oct":{
	    		url="select * from octo where email=?";
	    		url1="UPDATE octo SET n_leaves = ?,h_day=? where email=? ;";
			    break;	
	    	}
	    	case "Nov":{
	    		url="select * from nov where email=?";
	    		url1="UPDATE nov SET n_leaves = ?,h_day=? where email=? ;";
			    break;	
	    	}
	    	case "Dec":{
	    		url="select * from dece where email=?";
	    		url1="UPDATE dece SET n_leaves = ?,h_day=? where email=? ;";
			    break;	
	    	}
	    }
	    	PreparedStatement pst1 =con.prepareStatement(url);
	    	pst1.setString(1,email);
	    	ResultSet resultSet1= pst1.executeQuery();
	    	while(resultSet1.next()){
	    		n_leaves= resultSet1.getInt("n_leaves");
	    		h_leaves= resultSet1.getInt("h_day");
	    	}
	    	int i=n_leaves+day_i;
	    	int h=hday_i+h_leaves;
	    	

	    	
	    
	    	 switch(val)
				{
				case "Apruve": {
					PreparedStatement ps = con.prepareStatement(url1);
    				
    		        ps.setInt(1,i);
    		        ps.setInt(2,h);
    		        ps.setString(3,email);
    		        ps.executeUpdate();
    		        PreparedStatement ps1 = con.prepareStatement("delete  from pending where email= ?" );
					  ps1.setString(1, email); 
		    				
		    		     
		    		        ps1.executeUpdate();
		    		        String to = email;
		    		        String subject = "Leave Status";
		    		        String message =  "Your Leave is Aproved for date "+ss;
		    		        String user = "ankush731992@gmail.com";
		    		        String pass = "Anil731992";
		    		        SendMail.send(to,subject, message, user, pass);
		    		        
		 
		    			  
		    			        ps.executeUpdate();
    		        break;
				}
				
				case "Delete":{
					PreparedStatement ps = con.prepareStatement("delete  from pending where email= ?" );
					  ps.setString(1, email); 
		    				
					  String to = email;
	    		        String subject = "Leave Status";
	    		        String message =  "Your Leave is Not Aproved for date"+ss;
	    		        String user = "ankush731992@gmail.com";
	    		        String pass = "Anil731992";
	    		        SendMail.send(to,subject, message, user, pass);  
		    		        ps.executeUpdate();
		    		        break;
				}
				}
	    	
	    			  RequestDispatcher rd = request.getRequestDispatcher("pending.jsp");
						rd.forward(request, response);
	    		} catch (Exception e) {
	    	        e.printStackTrace();
	    	    } 
	    		
	    	}

	    }

	