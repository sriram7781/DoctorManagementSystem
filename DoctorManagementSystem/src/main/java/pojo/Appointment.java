package pojo;

import java.util.Date;

public class Appointment {
private String patient_name;
private int age;
private String email;
private Long phone_number;
private String doctor_name;
private String date_of_appointmnent;
private String gender;
public String getPatient_name() {
	return patient_name;
}
public void setPatient_name(String patient_name) {
	this.patient_name = patient_name;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public Long getPhone_number() {
	return phone_number;
}
public void setPhone_number(Long phone_number) {
	this.phone_number = phone_number;
}
public String getDoctor_name() {
	return doctor_name;
}
public void setDoctor_name(String doctor_name) {
	this.doctor_name = doctor_name;
}
public String getDate_of_appointmnent() {
	return date_of_appointmnent;
}
public void setDate_of_appointmnent(String date_of_appointmnent) {
	this.date_of_appointmnent = date_of_appointmnent;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
@Override
public String toString() {
	return "Appointment [patient_name=" + patient_name + ", age=" + age + ", email=" + email + ", phone_number="
			+ phone_number + ", doctor_name=" + doctor_name + ", date_of_appointmnent=" + date_of_appointmnent
			+ ", gender=" + gender + "]";
}

	
	
}
