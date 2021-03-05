package pack;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Adminlogin extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.setContentType("text/html");
		String email=request.getParameter("email");
			String pass=request.getParameter("pass");
			
			System.out.println(email+"  "+pass);
			if(email.equals("admin@gmail.com") && pass.equals("admin")){
				RequestDispatcher rdDispatcher=request.getRequestDispatcher("adminlogin.jsp");
				rdDispatcher.forward(request,response);
			}
			else if(email.equals("partyadmin@gmail.com") && pass.equals("admin")){
				RequestDispatcher rdDispatcher=request.getRequestDispatcher("adminlogin2.jsp");
				rdDispatcher.forward(request,response);
			}
			else{
				response.setContentType("text/html");
				 response.getWriter().println("<div class='alert alert-danger alert-dismissible fade show' role='alert'><strong>Error! </strong>Username or Password Invalid.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"); 
			        RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");  
			        rd.include(request,response); 
			}
					
	}

}
