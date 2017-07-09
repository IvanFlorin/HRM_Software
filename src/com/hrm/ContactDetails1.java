package com.hrm;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ContactDetails1
 */
public class ContactDetails1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactDetails1() {
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

		HttpSession s = request.getSession(true); 
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String userName = (String) s.getAttribute("uname");

		String phone = request.getParameter("pno");
	    String aphno = request.getParameter("aphno");
	    //String altemail = request.getParameter("aemail");
	    String cadd = request.getParameter("caddr");
	    String padd = request.getParameter("paddr"); 
	    try {
	    	Connection con=jdbc.db();
	        PreparedStatement ps = con.prepareStatement("UPDATE detail SET phone=?,aphone =?,currentadd=?,padd=? WHERE email=?;");
	        ps.setString(1, phone);
	        ps.setString(2, aphno);
	       // ps.setString(3, altemail);
	        ps.setString(3, cadd);
	        ps.setString(4, padd);
	        ps.setString(5,userName);
	  
	        ps.executeUpdate();
	        out.println("Data saved successfully");
	        request.getSession(false);
	        RequestDispatcher rd = request.getRequestDispatcher("MainPage.jsp");
			rd.forward(request, response);
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	    } 
	}

}