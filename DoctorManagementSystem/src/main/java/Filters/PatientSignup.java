package Filters;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;

/**
 * Servlet Filter implementation class PatientSignup
 */
@WebFilter("/patient")
public class PatientSignup extends HttpFilter implements Filter {
   
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		String password=request.getParameter("pass");
		String retype=request.getParameter("retype");
		if(password.equals(retype)) {
		
		chain.doFilter(request, response);
		}
		else {
			PrintWriter out=response.getWriter();
			out.println("Password  & Retype Password not match");
		}
	}

	
}
