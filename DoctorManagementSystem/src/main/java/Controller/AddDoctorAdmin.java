package Controller;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.AddDao;
import pojo.AddDoctor;
@WebServlet("/add")
public class AddDoctorAdmin extends HttpServlet{
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException {
		AddDao da=new AddDao();
		
		int d_id=Integer.parseInt(req.getParameter("did"));
		String d_name=req.getParameter("dname");
		String d_password=req.getParameter("pass");
		String d_retype=req.getParameter("retype");
		String d_role=req.getParameter("role");
		String d_qualification=req.getParameter("qualification");
		String d_mail=req.getParameter("email");
		
		AddDoctor ad=new AddDoctor();
		ad.setDoctor_id(d_id);
		ad.setDoctor_name(d_name);
		ad.setPassword(d_password);
		ad.setRetype(d_retype);
		ad.setRole(d_role);
		ad.setQualification(d_qualification);
		ad.setEmail(d_mail);
		
		try {
			da.add(ad);
		}
		catch(Exception e) {
			System.out.println(e);
		}
		res.sendRedirect("viewdoctors.jsp");
		
	}

}
