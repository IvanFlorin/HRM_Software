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
public class LeaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LeaveServlet() {
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
		
		HttpSession s = request.getSession(true); 
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String email = (String) s.getAttribute("uname");
		
		String sub = request.getParameter("sub");
	    String reason = request.getParameter("reason");
	  
	    String allda = request.getParameter("days");
	    
	    
	    int aa=0,bb=0;
		if(allda.equals("1"))
	    {
	    	 
	    	 bb=1;
	    	 aa=0;
	    }
		else if(allda.equals("other"))
		{
			String q=request.getParameter("other");
			aa=Integer.parseInt(q);
			bb=0;
			
		}
	    else if (allda.equals("2"))
	    {
	    	 
	    	 aa=1;
	    	 bb=0;
	    }	    
	    String cdate = request.getParameter("cdate"); 
	    try {
	    	Connection con=jdbc.db();
	        PreparedStatement pst1 =con.prepareStatement("select * from detail where email=?");
	    	pst1.setString(1,email);
	    	ResultSet resultSet1= pst1.executeQuery();
	    	String fname = "";
    		String mname = "";
    		String lname ="";
	    	while(resultSet1.next()){
	    		 fname = (String) resultSet1.getString("fname");
	    		 mname = (String) resultSet1.getString("mname");
	    		 lname = (String) resultSet1.getString("lname");	
	    	}
	        
	        PreparedStatement ps = con.prepareStatement("insert into lev(fname ,mname,lname,sub,ren,day,hday,date,email) values (?,?,?,?,?,?,?,?,?)");
	        ps.setString(1, fname);
	        ps.setString(2, mname);
	      
	        ps.setString(3, lname);
	        ps.setString(4, sub);
	        ps.setString(5,reason);
	        ps.setInt(6,aa);
	        ps.setInt(7,bb);
	        ps.setString(8,cdate);
	        ps.setString(9,email);
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
