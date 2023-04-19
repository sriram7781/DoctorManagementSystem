package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class PatientLoginDao {
	public boolean checklogin(String name,String password) {
		String query="select * from patientsignup where patient_name=? and password=?";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
			PreparedStatement pstmt=con.prepareStatement(query);
			pstmt.setString(1, name);
			pstmt.setString(2, password);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()) {
				return true;
			}
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		
		return false;
		
	}

}
