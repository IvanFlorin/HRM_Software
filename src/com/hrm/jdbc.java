package com.hrm;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.swing.JOptionPane;

public class jdbc {
	
	public static Connection db()
	{
		Connection con=null;
	 try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ankuah","root","mundungus"); 
			
			
			return con;
	 } catch ( Exception e) {
			// TODO Auto-generated catch block
		 JOptionPane.showMessageDialog(null, "enter valid number..............");
		 return null;
		}
}
}

