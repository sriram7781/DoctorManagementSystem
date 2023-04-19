package Controller;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.DoctorDao;
@WebServlet("/doctorlogin")
public class DoctorLogin extends HttpServlet {
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException {
		DoctorDao dd=new DoctorDao();
		String uname=req.getParameter("dname");
		String password=req.getParameter("dpass");
		
		if(dd.check(uname, password)) {
			HttpSession session=req.getSession();
			session.setAttribute("doctorname",uname);
			
			res.sendRedirect("doctorhome.jsp");
		}
		else {
			res.sendRedirect("doctorlogin.jsp");
		}
	}

}
