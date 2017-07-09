package com.hrm;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet1() {
        super();
        // TODO Auto-generated constructor stub
    }



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		HttpSession s = request.getSession(true);
		String username = request.getParameter("uname");   
        String password = request.getParameter("pass");
		
		try{
        
			Connection conn=jdbc.db();   
        PreparedStatement pst = (PreparedStatement) conn.prepareStatement("Select * from detailhr where hr_id=? and hr_pwd=?");
        pst.setString(1, username);
        pst.setString(2, password);
        s.setAttribute("uname", username);
        ResultSet rs = pst.executeQuery();   
        //String useName = (String) s.getAttribute("uname");
        if(rs.next()) {          
			RequestDispatcher rd = request.getRequestDispatcher("MainPage1.jsp");
			rd.forward(request, response);
		}else{
			pw.println("Username or password error");
			RequestDispatcher rd = request.getRequestDispatcher("HomePage.jsp");
			rd.forward(request, response);
		}
            
   }
   catch(Exception e){       
       System.out.println("Something went wrong !! Please try again");
       System.out.println(e);
   }
	}

}
