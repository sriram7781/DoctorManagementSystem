package Controller;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/adminlogout")
public class AdminLogout extends HttpServlet{
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException {
		HttpSession session =req.getSession();
		session.removeAttribute("adminuser");
		res.sendRedirect("mainhome.jsp");
	}

}
