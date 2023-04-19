package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DoctorDao {
	public boolean check(String uname,String password){
		try {
			String query="select * from adddoctor where doctor_name=? and password=?";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
			PreparedStatement pstmt=con.prepareStatement(query);
			pstmt.setString(1, uname);
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
