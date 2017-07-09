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
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registration2
 */
public class Salary extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//private static final int i = 0;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Salary() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, NumberFormatException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		//HttpSession s = request.getSession(true); 
		//String email = (String) s.getAttribute("uname");
		String month = request.getParameter("month");
		
		
		String email = request.getParameter("email"); 
		//String l_taken= request.getParameter("l_taken");
		
		int h_day=0;
		int p_leaves=0;
		int n_leaves =0;
		//String pd_twd= request.getParameter("pd_twd");
	    String pd_sal= request.getParameter("pd_sal");
		String g_sal= request.getParameter("g_sal");
		String deduct= request.getParameter("deduct");
		String p_tax= request.getParameter("p_tax");
		String a_payment= request.getParameter("a_payment");
		String net_sal= request.getParameter("net_sal");
	//	String emp_id= request.getParameter("emp_id");
		//int l_taken_i = Integer.parseInt(l_taken);
		//int h_day_i = Integer.parseInt(h_day);
		//int  p_leaves_i= Integer.parseInt(p_leaves);
		//int n_leaves_i = Integer.parseInt(n_leaves);
		
	  
		
		
		//int  emp_id_i= Integer.parseInt(emp_id);
		String url=""; 
		String url1=""; 
		String url2="";
		String url3="";
		int bal=0;
		int bal_i=0;
		int abs=0;
	
		 try {
			 Connection con=jdbc.db(); 
				
				    //Statement st = con.createStatement();
				  //ResultSet rs;
	
				 
				    switch(month)
					{
					case "jan": {
						url3="select * from jan where email=?";
				    url1="update jan SET pd_twd = ?,pd_nl = ?,g_sal = ?,deduct = ? ,p_tax = ?,a_payment = ?,net_sal = ?,bal_sal=?  WHERE email = ?";
				    url="update sal SET jan=? where email=?";
				    url2="update feb set bal=? where email=?";
					break;} 
					case "feb": {
				    url="update sal SET feb=? where email=?";
				    url2="update mar set bal=? where email=?";
				    url3="select * from feb where email=?";
				    url1="update feb SET pd_twd = ?,pd_nl = ?,g_sal = ?,deduct = ? ,p_tax = ?,a_payment = ?,net_sal = ?,bal_sal=?  WHERE email = ?";
					break;}
					case "mar": {
				    url1="update mar SET pd_twd = ?,pd_nl = ?,g_sal = ?,deduct = ? ,p_tax = ?,a_payment = ?,net_sal = ?,bal_sal=?  WHERE email = ?";
				    url="update sal SET mar=? where email=?";
				    url2="update april set bal=? where email=?";
				    url3="select * from mar where email=?";
					break;}
					case "april":
					{url1="update apr SET pd_twd = ?,pd_nl = ?,g_sal = ?,deduct = ? ,p_tax = ?,a_payment = ?,net_sal = ?,bal_sal=?  WHERE email = ?";
				    url="update sal SET april=? where email=?";
				    url2="update may set bal=? where email=?";
				    url3="select * from apr where email=?";
					break;}
					case "may": 
					{url1="update may SET pd_twd = ?,pd_nl = ?,g_sal = ?,deduct = ? ,p_tax = ?,a_payment = ?,net_sal = ?,bal_sal=?  WHERE email = ?";
				    url="update sal SET may=? where email=?";
				    url2="update june set bal=? where email=?";
				    url3="select * from may where email=?";
					break;}
					case "jun": 
					{url1="update june SET pd_twd = ?,pd_nl = ?,g_sal = ?,deduct = ? ,p_tax = ?,a_payment = ?,net_sal = ?,bal_sal=?  WHERE email = ?";
				    url="update sal SET jun=? where email=?";
				    url2="update july set bal=? where email=?";
				    url3="select * from june where email=?";
					break;}
					case "jul": 
					{url1="update july SET pd_twd = ?,pd_nl = ?,g_sal = ?,deduct = ? ,p_tax = ?,a_payment = ?,net_sal = ?,bal_sal=?  WHERE email = ?";
				    url="update sal SET jul=? where email=?";
				    url2="update aug set bal=? where email=?";
				    url3="select * from july where email=?";
					break;}
					case "aug": 
					{url1="update aug SET pd_twd = ?,pd_nl = ?,g_sal = ?,deduct = ? ,p_tax = ?,a_payment = ?,net_sal = ?,bal_sal=?  WHERE email = ?";
				    url="update sal SET aug=? where email=?";
				    url2="update sep set bal=? where email=?";
				    url3="select * from aug where email=?";
					break;}
					case "sep": 
					{url1="update sep SET pd_twd = ?,pd_nl = ?,g_sal = ?,deduct = ? ,p_tax = ?,a_payment = ?,net_sal = ?,bal_sal=?  WHERE email = ?";
				    url="update sal SET sep=? where email=?";
				    url2="update octo set bal=? where email=?";
				    url3="select * from sep where email=?";
					break;}
					case "oct": 
					{url1="update octo SET pd_twd = ?,pd_nl = ?,g_sal = ?,deduct = ? ,p_tax = ?,a_payment = ?,net_sal = ?,bal_sal=?  WHERE email = ?";
				    url="update sal SET oct=? where email=?";
				    url2="update nov set bal=? where email=?";
				    url3="select * from octo where email=?";
					break;}
					case "nov": 
					{url1="update nov SET pd_twd = ?,pd_nl = ?,g_sal = ?,deduct = ? ,p_tax = ?,a_payment = ?,net_sal = ?,bal_sal=?  WHERE email = ?";
				    url="update sal SET nov=? where email=?";
				    url2="update dece set bal=? where email=?";
				    url3="select * from nov where email=?";
					break;}
					case "dece": 
					{url1="update dece SET pd_twd = ?,pd_nl = ?,g_sal = ?,deduct = ? ,p_tax = ?,a_payment = ?,net_sal = ?,bal_sal=?  WHERE email = ?";
				    url="update sal SET dece=? where email=?";
				    url2="update jan set bal=? where email=?";
				    url3="select * from dece where email=?";
					break;}
					}
				    PreparedStatement pst =con.prepareStatement(url3);
			        pst.setString(1, email);
			       
				   // System.out.println("connected");
		ResultSet resultSet= pst.executeQuery();
		//st.setString(1,emp_id);
		
		while(resultSet.next())
		{
		   bal = resultSet.getInt("bal");
		   h_day=resultSet.getInt("h_day");
		   p_leaves=resultSet.getInt("p_leaves");
		   n_leaves=resultSet.getInt("n_leaves");
		   abs=resultSet.getInt("emp_id");
		   
		}
		  int pd_twd_i = 30 - n_leaves - abs;
			//int pd_nl_i = Integer.parseInt(pd_nl);
		    int pd_sal_i = Integer.parseInt(pd_sal);
			int g_sal_i = Integer.parseInt(g_sal);
			int deduct_i = (n_leaves +abs)* (g_sal_i / 30)+(h_day *((g_sal_i / 30)/2));
			int  p_tax_i= Integer.parseInt(p_tax);
			int  a_payment_i= Integer.parseInt(a_payment);
			int netsal= (g_sal_i - a_payment_i)  - p_tax_i-deduct_i;
			
				    int  net_sal_i = (g_sal_i - a_payment_i) + (bal - p_tax_i)-deduct_i;
				     bal_i=net_sal_i - pd_sal_i;
				    PreparedStatement pstmt1 = con.prepareStatement(url1);
					//pstmt1.setInt(1,l_taken_i);
				   // pstmt1.setInt(2,h_day_i);
				    //pstmt1.setInt(3,p_leaves_i);
				   // pstmt1.setInt(4,n_leaves_i);
				    pstmt1.setInt(1,pd_twd_i);
				    pstmt1.setInt(2,pd_sal_i);
				    pstmt1.setInt(3,g_sal_i);
				    pstmt1.setInt(4,deduct_i);
				    pstmt1.setInt(5,p_tax_i);
				    pstmt1.setInt(6,a_payment_i);
				    pstmt1.setInt(7,net_sal_i);
				    pstmt1.setInt(8,bal_i);
				    pstmt1.setString(9,email);
				    pstmt1.executeUpdate();
				    PreparedStatement pstmt2 = con.prepareStatement(url);
					pstmt2.setInt(1,netsal);
				    pstmt2.setString(2,email);
				    pstmt2.executeUpdate();
				    PreparedStatement pstmt3 = con.prepareStatement(url2);
					pstmt3.setInt(1,bal_i);
				    pstmt3.setString(2,email);
				    pstmt3.executeUpdate();
				    
				 
				    PreparedStatement pstmt = con.prepareStatement("update sal SET pd_twd = ?,pd_nl = ?,g_sal = ?,deduct = ? ,p_tax = ?,a_payment = ?,net_sal = ?,bal_sal=? WHERE email = ?" );
					 PrintWriter outx = response.getWriter();
					   // pstmt.setString(1,name);
					   // pstmt.setInt(1,l_taken_i);
					   // pstmt.setInt(2,h_day_i);
					    //pstmt.setInt(3,p_leaves_i);
					   // pstmt.setInt(4,n_leaves_i);
					    pstmt.setInt(1,pd_twd_i);
					    pstmt.setInt(2,pd_sal_i);
					    pstmt.setInt(3,g_sal_i);
					    pstmt.setInt(4,deduct_i);
					    pstmt.setInt(5,p_tax_i);
					    pstmt.setInt(6,a_payment_i);
					    pstmt.setInt(7,net_sal_i);
					    pstmt.setInt(8,bal_i);
					    pstmt.setString(9,email);
				    pstmt.executeUpdate();
				    
				    RequestDispatcher rd = request.getRequestDispatcher("MainPage1.jsp");
					rd.forward(request, response);
		            
		            con.close();
			} catch ( Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

}




