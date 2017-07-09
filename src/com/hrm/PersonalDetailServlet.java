package com.hrm;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

/**
 * Servlet implementation class ContactDetailsServlet
 */
public class PersonalDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PersonalDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override 
    protected void doGet(HttpServletRequest request,HttpServletResponse response) 
    throws IOException,ServletException{
        this.doPost(request,response);
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession s = request.getSession();

		String fname = request.getParameter("fname");
		String mname = request.getParameter("mname");
	    String lname = request.getParameter("lname");
	    String dob = request.getParameter("dob");
	    String na = request.getParameter("na");
	    String sex = request.getParameter("sex");
	    //String uname= (String);
	    String userName = (String) s.getAttribute("uname");
	    
	    try {
	    	Connection con=jdbc.db();
	        PreparedStatement ps = con.prepareStatement(" UPDATE detail SET fname=?,mname =?,lname =?,dob =?,na =?,sex=? WHERE uname=?;");
	        ps.setString(1, fname);
	        ps.setString(2, mname);
	        ps.setString(3, lname);
	        ps.setString(4, dob);
	        ps.setString(5, na);
	        ps.setString(6, sex);
	        ps.setString(7, userName);
	        ps.executeUpdate();
	        out.println("Data saved successfully");
	        RequestDispatcher rd = request.getRequestDispatcher("ContactDetails.jsp");
			rd.forward(request, response);
	    } catch (Exception e) {
	        e.printStackTrace();
	    } 
	}

}
