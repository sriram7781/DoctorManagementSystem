package Controller;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.DeletePatientDao;
import pojo.PatientSignup;

@WebServlet("/deletepatient")
public class PatientDeleteCon extends HttpServlet{
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException {
		DeletePatientDao dp=new DeletePatientDao();
		int pid=Integer.parseInt(req.getParameter("pid"));
		
		PatientSignup ps=new PatientSignup();
		ps.setPatient_id(pid);
		try {
			dp.delete(ps);
		}
		catch(Exception e) {
			System.out.println(e);
		}
		res.sendRedirect("viewpatient.jsp");
	}

}
