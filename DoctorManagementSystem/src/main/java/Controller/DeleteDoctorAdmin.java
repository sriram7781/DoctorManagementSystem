package Controller;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.DeleteDao;
import pojo.AddDoctor;
@WebServlet("/deletedoctor")
public class DeleteDoctorAdmin extends HttpServlet{
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException {
		DeleteDao dd=new DeleteDao();
		int d_id=Integer.parseInt(req.getParameter("did"));
		
		AddDoctor ad=new AddDoctor();
		ad.setDoctor_id(d_id);
		
		try {
			dd.adddoc(ad);
		}
		catch(Exception e) {
			System.out.println(e);
		}
		res.sendRedirect("viewdoctors.jsp");
	}
}
