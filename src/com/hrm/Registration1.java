package com.hrm;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.*;

/**
 * Servlet implementation class registration2
 */
public class Registration1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
     * @see HttpServlet#HttpServlet()
     */
    public Registration1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(true);
		PrintWriter out = response.getWriter(); 
	    String pwd = request.getParameter("pass");
	    String eid = request.getParameter("eid");
	    String fname = request.getParameter("fname");
	    String mname = request.getParameter("mname");
	    String lname = request.getParameter("lname");
	    String email = request.getParameter("email");
	    String dob = request.getParameter("dob");
	    String na = request.getParameter("na");
	    String sex = request.getParameter("sex");
	    try {
	    	Connection con=jdbc.db();
			    
			  ResultSet rs;
			  PreparedStatement pstmt = con.prepareStatement("insert into detail(fname,mname, lname, email, pass,dob ,na ,sex) values (?,?,?,?,?,?,?,?)" );
			  PreparedStatement pstmt2 = con.prepareStatement("insert into sal(fname,mname,lname,email,jan,feb,mar,april,may,jun,jul,aug,sep,oct,nov,dece) values (?,?,?,?,0,0,0,0,0,0,0,0,0,0,0,0)" );  
			 PreparedStatement pstmt15 = con.prepareStatement("insert into detailhr(hr_id,hr_pwd) values (?,?)" );       
			    pstmt.setString(1, fname);
			    pstmt.setString(2, mname);
			    pstmt.setString(3, lname);
			    pstmt.setString(4, email);
			   
			    pstmt.setString(5,pwd);
			    pstmt.setString(6, dob);
		        pstmt.setString(7, na);
		        pstmt.setString(8, sex);
			   
			    pstmt2.setString(1, fname);
			    pstmt2.setString(2, mname);
			    pstmt2.setString(3, lname);
			    pstmt2.setString(4, email);
			   
			    pstmt15.setString(1, email);
			    pstmt15.setString(2, pwd);
			    pstmt.executeUpdate();
			  pstmt2.executeUpdate();
			  pstmt15.executeUpdate();
			  PreparedStatement pstmt3 = con.prepareStatement("insert into jan(fname,mname,lname,email) values (?,?,?,?)");
			    pstmt3.setString(1, fname);
			    pstmt3.setString(2, mname);
			    pstmt3.setString(3, lname);
			    pstmt3.setString(4, email);
			    
			    pstmt3.executeUpdate();
			    PreparedStatement pstmt4 = con.prepareStatement("insert into feb(fname,mname,lname,email) values (?,?,?,?)");
			    pstmt4.setString(1, fname);
			    pstmt4.setString(2, mname);
			    pstmt4.setString(3, lname);
			    pstmt4.setString(4, email);
			    
			    pstmt4.executeUpdate();
			    PreparedStatement pstmt5 = con.prepareStatement("insert into mar(fname,mname,lname,email) values (?,?,?,?)");
			    pstmt5.setString(1, fname);
			    pstmt5.setString(2, mname);
			    pstmt5.setString(3, lname);
			    pstmt5.setString(4, email);
			    
			    pstmt5.executeUpdate();
			    
			    PreparedStatement pstmt6 = con.prepareStatement("insert into apr(fname,mname,lname,email) values (?,?,?,?)");
			    pstmt6.setString(1, fname);
			    pstmt6.setString(2, mname);
			    pstmt6.setString(3, lname);
			    pstmt6.setString(4, email);
			    pstmt6.executeUpdate();
			    
			    PreparedStatement pstmt7 = con.prepareStatement("insert into may(fname,mname,lname,email) values (?,?,?,?)");
			    pstmt7.setString(1, fname);
			    pstmt7.setString(2, mname);
			    pstmt7.setString(3, lname);
			    pstmt7.setString(4, email);
			    pstmt7.executeUpdate();
			    
			    PreparedStatement pstmt8 = con.prepareStatement("insert into june(fname,mname,lname,email) values (?,?,?,?)");
			    pstmt8.setString(1, fname);
			    pstmt8.setString(2, mname);
			    pstmt8.setString(3, lname);
			    pstmt8.setString(4, email);
			    pstmt8.executeUpdate();
			    
			    PreparedStatement pstmt9 = con.prepareStatement("insert into july(fname,mname,lname,email) values (?,?,?,?)");
			    pstmt9.setString(1, fname);
			    pstmt9.setString(2, mname);
			    pstmt9.setString(3, lname);
			    pstmt9.setString(4, email);
			    pstmt9.executeUpdate();
			    PreparedStatement pstmt10 = con.prepareStatement("insert into aug(fname,mname,lname,email) values (?,?,?,?)");
			    pstmt10.setString(1, fname);
			    pstmt10.setString(2, mname);
			    pstmt10.setString(3, lname);
			    pstmt10.setString(4, email);
			    pstmt10.executeUpdate();
			    
			    PreparedStatement pstmt11 = con.prepareStatement("insert into sep(fname,mname,lname,email) values (?,?,?,?)");
			    pstmt11.setString(1, fname);
			    pstmt11.setString(2, mname);
			    pstmt11.setString(3, lname);
			    pstmt11.setString(4, email);
			    pstmt11.executeUpdate();
			    PreparedStatement pstmt12 = con.prepareStatement("insert into octo(fname,mname,lname,email) values (?,?,?,?)");
			    pstmt12.setString(1, fname);
			    pstmt12.setString(2, mname);
			    pstmt12.setString(3, lname);
			    pstmt12.setString(4, email);
			    pstmt12.executeUpdate();
			    
			    PreparedStatement pstmt13 = con.prepareStatement("insert into nov(fname,mname,lname,email) values (?,?,?,?)");
			    pstmt13.setString(1, fname);
			    pstmt13.setString(2, mname);
			    pstmt13.setString(3, lname);
			    pstmt13.setString(4, email);
			    pstmt13.executeUpdate();
			    PreparedStatement pstmt14 = con.prepareStatement("insert into dece(fname,mname,lname,email) values (?,?,?,?)");
			    pstmt14.setString(1, fname);
			    pstmt14.setString(2, mname);
			    pstmt14.setString(3, lname);
			    pstmt14.setString(4, email);
			    pstmt14.executeUpdate();
			  RequestDispatcher rd = request.getRequestDispatcher("HomePage.jsp");
				rd.forward(request, response);
		    } catch (Exception e) {
		        e.printStackTrace();
		    } 
	    
	
	    
	}

	}



