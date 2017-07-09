package com.hrm;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class forgotPassEmp
 */
public class forgotPassEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public forgotPassEmp() {
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
		doGet(request, response);
		String email =request.getParameter("email");
		
		Random r = new Random();
		int random =r.nextInt(1000000);
		String mag= "your password is" + random;
		response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
        
        String to = email;
        String subject = "set new pass";
        String message =  mag;
        String user = "ankush731992@gmail.com";
        String pass = "Anil731992";
        SendMail.send(to,subject, message, user, pass);
        try {
        	Connection con=jdbc.db();
	        PreparedStatement ps = con.prepareStatement("UPDATE detail SET pass=? WHERE email=?;");
	        ps.setInt(1,random);
	        ps.setString(2, email);	
	
	  
	        ps.executeUpdate();
	        out.println("Data saved successfully");
	        request.getSession(false);
	        RequestDispatcher rd = request.getRequestDispatcher("HomePage.jsp");
			rd.forward(request, response);
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	    } 
        out.println("Mail send successfully");
	}

}
