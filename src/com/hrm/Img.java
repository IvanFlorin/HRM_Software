package com.hrm;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
@MultipartConfig(maxFileSize=169999999)
/**
 * Servlet implementation class Img
 */
public class Img extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Img() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		try{
			Part filepart = request.getPart("photo");
			System.out.println(filepart);
			InputStream i =null;
			if(filepart !=null){
			long fileSize =filepart.getSize();
			String fileContent = filepart.getContentType();
			i=filepart.getInputStream();
			
			}
			Class.forName("com.mysql.jdbc.Driver");
	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ankuah","root","mundungus");
	        PreparedStatement ps = con.prepareStatement("insert into p (photo) value (?)");
	     
	        ps.setBlob(1,i);
	        ps.executeUpdate();
	        
	        RequestDispatcher rd = request.getRequestDispatcher("MainPage1.jsp");
			rd.forward(request, response);
		
	}catch (Exception e) {
        e.printStackTrace();
    } 

}
}
