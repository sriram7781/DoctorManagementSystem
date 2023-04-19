package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import pojo.PatientSignup;

public class DeletePatientDao {
	public int delete(PatientSignup ps) {
		int result=0;
		try {
			String query="delete from patientsignup where patient_id=?";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
			PreparedStatement pstmt=con.prepareStatement(query);
			pstmt.setInt(1,ps.getPatient_id());
			pstmt.executeUpdate();
			
		}
		catch(Exception e) {
			
		}
		
		
		
		return result;
	}

}
