package Controller;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.PatientSignupDao;
import pojo.PatientSignup;
@WebServlet("/psignup")
public class PatientSignupCon extends HttpServlet{
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException {
		PatientSignupDao pd=new PatientSignupDao();
		int p_id=Integer.parseInt(req.getParameter("p_id"));
		String p_name=req.getParameter("p_name");
		String password=req.getParameter("pass");
		String retype=req.getParameter("retype");
		String email=req.getParameter("p_email");
		
		PatientSignup ps=new PatientSignup();
		ps.setPatient_id(p_id);
		ps.setPatient_name(p_name);
		ps.setPassword(password);
		ps.setRetype(retype);
		ps.setEmail(email);
		
		try {
			pd.patientsignup(ps);
		}
		catch(Exception e) {
			System.out.println(e);
		}
		res.sendRedirect("patientlogin.jsp");
	}

}
