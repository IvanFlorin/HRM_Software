package com.hrm;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteEmp
 */
public class DeleteEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteEmp() {
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
	
		String email = request.getParameter("email"); 
			
		    try {
		    	Connection con=jdbc.db();
				    
				
				  PreparedStatement pstmt = con.prepareStatement("delete  from sal where email= ?" );
				  pstmt.setString(1, email);
				  pstmt.executeUpdate();
				  PreparedStatement pstmt1 = con.prepareStatement("delete  from detail where email=?" );
				  pstmt1.setString(1, email);
				  pstmt1.executeUpdate();
				  PreparedStatement pstmt2 = con.prepareStatement("delete  from jan where email=?" );
				  pstmt2.setString(1, email);
				  pstmt2.executeUpdate();
				  PreparedStatement pstmt3 = con.prepareStatement("delete  from feb where email=?" );
				  pstmt3.setString(1, email);
				  pstmt3.executeUpdate();
				  PreparedStatement pstmt4 = con.prepareStatement("delete   from mar where email=?" );
				  pstmt4.setString(1, email);
				  pstmt4.executeUpdate();
				  PreparedStatement pstmt5 = con.prepareStatement("delete  from apr where email=?" );
				  pstmt5.setString(1, email);
				  pstmt5.executeUpdate();
				  PreparedStatement pstmt6 = con.prepareStatement("delete   from may where email=?" );
				  pstmt6.setString(1, email);
				  pstmt6.executeUpdate();
				  PreparedStatement pstmt7 = con.prepareStatement("delete  from june where email=?" );
				  pstmt7.setString(1, email);
				  pstmt7.executeUpdate();
				  PreparedStatement pstmt8 = con.prepareStatement("delete  from july where email=?" );
				  pstmt8.setString(1, email);
				  pstmt8.executeUpdate();
				  PreparedStatement pstmt9 = con.prepareStatement("delete from aug where email=?" );
				  pstmt9.setString(1, email);
				  pstmt9.executeUpdate();
				  PreparedStatement pstmt10 = con.prepareStatement("delete   from sep where email=?" );
				  pstmt10.setString(1, email);
				  pstmt10.executeUpdate();
				  PreparedStatement pstmt11 = con.prepareStatement("delete  from octo where email=?" );
				  pstmt11.setString(1, email);
				  pstmt11.executeUpdate();
				  PreparedStatement pstmt12 = con.prepareStatement("delete  from nov where email=?" );
				  pstmt12.setString(1, email);
				  pstmt12.executeUpdate();
				  PreparedStatement pstmt13 = con.prepareStatement("delete   from dece where email=?" );
				  pstmt13.setString(1, email);
				  pstmt13.executeUpdate();
				 
				  
				
				    
				  
				  RequestDispatcher rd = request.getRequestDispatcher("MainPage1.jsp");
					rd.forward(request, response);
			    } catch (Exception e) {
			        e.printStackTrace();
			    } 
		    
		
		    
		}

		}

