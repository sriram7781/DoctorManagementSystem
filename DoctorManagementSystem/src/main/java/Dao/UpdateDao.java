package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import pojo.AddDoctor;

public class UpdateDao {
	public int add(AddDoctor ad) {
		int result=0;
		String query="update adddoctor set doctor_name=? , role=? ,qualification=? where doctor_id=?";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
			PreparedStatement pstmt=con.prepareStatement(query);
			pstmt.setString(1, ad.getDoctor_name());
			pstmt.setString(2, ad.getRole());
			pstmt.setString(3, ad.getQualification());
			pstmt.setInt(4, ad.getDoctor_id());
			result=pstmt.executeUpdate();
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return result;
}
}