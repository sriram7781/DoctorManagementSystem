package Controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.DateFormatter;

import Dao.AppointmentInsertDao;
import pojo.Appointment;

@WebServlet("/viewappointment")
public class AppointmentCon extends HttpServlet{
	
	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException {
		Appointment a=new Appointment();
		AppointmentInsertDao ai=new AppointmentInsertDao();
		
		String uname=request.getParameter("uname");
		int age=Integer.parseInt(request.getParameter("age"));
		String email=request.getParameter("email");
		Long phone=(long) Integer.parseInt(request.getParameter("phone"));
		String dname=request.getParameter("dname");
		String date_of_appointment=request.getParameter("date");
		String gender=request.getParameter("gender");
		
		a.setPatient_name(uname);
		a.setAge(age);
		a.setEmail(email);
		a.setPhone_number(phone);
		a.setDoctor_name(dname);
		a.setDate_of_appointmnent(date_of_appointment);
		a.setGender(dname);
		
		HttpSession session=request.getSession();
		session.setAttribute("uname", uname);
		session.setAttribute("age", age);
		session.setAttribute("phone", phone);
		session.setAttribute("dname", dname);
		session.setAttribute("date",date_of_appointment);

		try {
			ai.insert(a);
		}
		catch(Exception e) {
			System.out.println(e);
		}
		response.sendRedirect("viewappointment.jsp");
	}
	

}
