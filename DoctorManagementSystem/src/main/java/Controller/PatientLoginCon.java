package Controller;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.PatientLoginDao;
import pojo.PatientSignup;
@WebServlet("/patientlogin")
public class PatientLoginCon extends HttpServlet{
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException {
		String name=req.getParameter("pname");
		String password=req.getParameter("password");
		PatientLoginDao pl=new PatientLoginDao();
		if(pl.checklogin(name, password)) {
			HttpSession session=req.getSession();
			session.setAttribute("patientname",name);
			res.sendRedirect("patienthome.jsp");
		}
		else {
		res.sendRedirect("patientlogin.jsp");
		}
		
	}

}
