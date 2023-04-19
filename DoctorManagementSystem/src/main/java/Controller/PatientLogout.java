package Controller;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/patientlogout")
public class PatientLogout extends HttpServlet{
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException {
		HttpSession session=req.getSession();
		session.removeAttribute("patientname");
		session.removeAttribute("paname");
		session.removeAttribute("age");
		session.removeAttribute("phone");
		session.removeAttribute("dname");
		session.removeAttribute("date");
		res.sendRedirect("mainhome.jsp");
	}

}
