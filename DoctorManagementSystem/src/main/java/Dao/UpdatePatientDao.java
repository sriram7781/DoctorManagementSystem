package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import pojo.PatientSignup;

public class UpdatePatientDao {
	public int update(PatientSignup ps) {
		int result=0;
		
		try {
			String query="update patientsignup set patient_name=? , patient_email=?  where patient_id=?";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
			PreparedStatement pstmt=con.prepareStatement(query);
			pstmt.setString(1, ps.getPatient_name());
			pstmt.setString(2, ps.getEmail());
			pstmt.setInt(3, ps.getPatient_id());
			pstmt.executeUpdate();
			
			
		}
		
		catch(Exception e) {
			System.out.println(e);
		}
		
		
		return result;
		
	}

}
