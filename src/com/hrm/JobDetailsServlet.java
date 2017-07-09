
package com.hrm;


import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ContactDetailsServlet
 */
public class JobDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JobDetailsServlet() {
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
	
		HttpSession s = request.getSession();
		String userName = (String) s.getAttribute("uname");

		String title = request.getParameter("jtitle");
		//String role = request.getParameter("role");
		//String status = request.getParameter("role");
	    String department = request.getParameter("role");
	    String doj = request.getParameter("doj");
	    String salary = request.getParameter("salary");
	    
	    try {
	    	Connection con=jdbc.db();
	        PreparedStatement ps = con.prepareStatement("UPDATE detail SET jobtitle=?,department=?,datofjoining=?,salary=? WHERE email=?;");
	        ps.setString(1, title);
		       
	        ps.setString(2, department);
	        ps.setString(3, doj);
	        ps.setString(4, salary);
	        ps.setString(5,userName);
	        
	        ps.executeUpdate();
	        request.getSession(false);
	        RequestDispatcher rd = request.getRequestDispatcher("MainPage1.jsp");
			rd.forward(request, response);
			
	    } catch (Exception e) {
	        e.printStackTrace();
	    } 
	}

}
