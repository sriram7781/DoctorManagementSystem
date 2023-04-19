package pojo;

public class AddDoctor {
	private int doctor_id;
	private String doctor_name;
	private String password;
	private String retype;
	private String role;
	private String qualification;
	private String email;
	public int getDoctor_id() {
		return doctor_id;
	}
	public void setDoctor_id(int doctor_id) {
		this.doctor_id = doctor_id;
	}
	public String getDoctor_name() {
		return doctor_name;
	}
	public void setDoctor_name(String doctor_name) {
		this.doctor_name = doctor_name;
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
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "AddDoctor [doctor_id=" + doctor_id + ", doctor_name=" + doctor_name + ", password=" + password
				+ ", retype=" + retype + ", role=" + role + ", qualification=" + qualification + ", email=" + email
				+ "]";
	}
	
	

}
