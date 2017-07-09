package com.hrm;


import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Imgr
 */
public class Imgr extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Imgr() {
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
		 try {
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
	}
		 

}
