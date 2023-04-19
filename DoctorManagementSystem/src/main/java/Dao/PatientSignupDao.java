package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import pojo.PatientSignup;

public class PatientSignupDao {
	public int patientsignup(PatientSignup ps) {
		int result=0;
		String query="insert into patientsignup"+"(patient_id,patient_name,password,retype_password,patient_email)"+ "values(?,?,?,?,?)";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
			PreparedStatement pstmt=con.prepareStatement(query);
			pstmt.setInt(1,ps.getPatient_id());
			pstmt.setString(2, ps.getPatient_name());
			pstmt.setString(3, ps.getPassword());
			pstmt.setString(4, ps.getRetype());
			pstmt.setString(5, ps.getEmail());
			result=pstmt.executeUpdate();
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		
		
		
		
		return result;
		
	}

}
