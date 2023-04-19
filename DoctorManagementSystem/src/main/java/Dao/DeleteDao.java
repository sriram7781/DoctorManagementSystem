package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import pojo.AddDoctor;

public class DeleteDao {
	public int adddoc(AddDoctor d) {
		int result=0;
		String query="delete from adddoctor where doctor_id=?";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
			PreparedStatement pstmt=con.prepareStatement(query);
			pstmt.setInt(1, d.getDoctor_id());
			result=pstmt.executeUpdate();
			
		
	}
		catch(Exception e) {
			System.out.println(e);
		}
		return result;
}
}
