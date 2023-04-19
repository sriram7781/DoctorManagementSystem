package Controller;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.UpdatePatientDao;
import pojo.PatientSignup;
@WebServlet("/updatepatient")
public class PatientUpdateCon extends HttpServlet{

	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException {
		UpdatePatientDao pd=new UpdatePatientDao();
		int p_id=Integer.parseInt(req.getParameter("pid"));
		String p_name=req.getParameter("pname");
		String p_email=req.getParameter("email");
		
		PatientSignup ps=new PatientSignup();
		ps.setPatient_id(p_id);
		ps.setPatient_name(p_name);
		ps.setEmail(p_email);
		try {
			pd.update(ps);
		}
		catch(Exception e) {
			System.out.println(e);
		}
		res.sendRedirect("viewpatient.jsp");
		
	}
}
