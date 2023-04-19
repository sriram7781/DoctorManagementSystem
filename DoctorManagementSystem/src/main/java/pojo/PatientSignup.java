package pojo;

public class PatientSignup {
	private int patient_id;
	private String patient_name;
	private String password;
	private String retype;
	private String email;
	public int getPatient_id() {
		return patient_id;
	}
	public void setPatient_id(int patient_id) {
		this.patient_id = patient_id;
	}
	public String getPatient_name() {
		return patient_name;
	}
	public void setPatient_name(String patient_name) {
		this.patient_name = patient_name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRetype() {
		return retype;
	}
	public void setRetype(String retype) {
		this.retype = retype;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "PatientSignup [patient_id=" + patient_id + ", patient_name=" + patient_name + ", password=" + password
				+ ", retype=" + retype + ", email=" + email + "]";
	}
	
}
