package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import pojo.AddDoctor;

public class AddDao {
	public int add(AddDoctor ad) {
		int result=0;
		String query="insert into adddoctor" + "(doctor_id,doctor_name,password,retype_password,role,qualification,email) values"+ "(?,?,?,?,?,?,?)";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
			PreparedStatement pstmt=con.prepareStatement(query);
			pstmt.setInt(1, ad.getDoctor_id());
			pstmt.setString(2, ad.getDoctor_name());
			pstmt.setString(3, ad.getPassword());
			pstmt.setString(4, ad.getRetype());
			pstmt.setString(5, ad.getRole());
			pstmt.setString(6, ad.getQualification());
			pstmt.setString(7, ad.getEmail());
			result=pstmt.executeUpdate();
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		return result;
		
	}

}
