package Controller;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/admin")
public class AdminLogin extends HttpServlet {
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException {
		String aname=req.getParameter("aname");
		String apass=req.getParameter("apass");
		HttpSession session=req.getSession();
		session.setAttribute("adminuser", aname);
		if(aname.equals("admin") && apass.equals("admin")) {
			res.sendRedirect("adminhome.jsp");
		}
		else {
			res.sendRedirect("adminlogin.jsp");
		}
	}

}
