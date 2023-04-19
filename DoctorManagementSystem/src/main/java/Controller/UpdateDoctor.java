package Controller;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.UpdateDao;
import pojo.AddDoctor;
@WebServlet("/updatedoctor")
public class UpdateDoctor extends HttpServlet{
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException {
		UpdateDao ud=new UpdateDao();
		int did=Integer.parseInt(req.getParameter("did"));
		String dname=req.getParameter("dname");
		String role=req.getParameter("role");
		String qualification=req.getParameter("qualification");
		
		AddDoctor ao=new AddDoctor();
		ao.setDoctor_id(did);
		ao.setDoctor_name(dname);
		ao.setRole(role);
		ao.setQualification(qualification);
		try {
			ud.add(ao);
		}
		catch(Exception e) {
			System.out.println(e);
		}
		res.sendRedirect("viewdoctors.jsp");
	}
}
