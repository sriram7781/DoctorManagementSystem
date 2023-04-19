package Dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import pojo.Appointment;

public class AppointmentInsertDao {
	public int insert(Appointment a) {
		int result=0;
		try {
			String query="insert into appointment"+"(patient_name,age,email,phone_number,doctor_name,date_of_appointment,gender)values"+
			"(?,?,?,?,?,?,?)";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
			PreparedStatement pstmt=con.prepareStatement(query);
			
			pstmt.setString(1,a.getPatient_name());
			pstmt.setInt(2,a.getAge());
			pstmt.setString(3,a.getEmail());
			pstmt.setLong(4, a.getPhone_number());
			pstmt.setString(5, a.getDoctor_name());
			pstmt.setString(6,  a.getDate_of_appointmnent());
			pstmt.setString(7, a.getGender());
			
			pstmt.executeUpdate();			
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		return result;
	}

}
