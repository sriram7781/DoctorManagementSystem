package Controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/doctorlogout")
public class DoctorLogout extends HttpServlet{
	public void service(HttpServletRequest req,HttpServletResponse res) {
		try {
			HttpSession session=req.getSession();
			session.removeAttribute("doctorname");
			res.sendRedirect("mainhome.jsp");
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
	}

}
