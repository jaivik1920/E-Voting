<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>	

	<jsp:useBean id="bean" class="pack.AdminBean" scope="application"></jsp:useBean>
	<jsp:useBean id="dao" class="pack.Dao" scope="application"></jsp:useBean>
	<jsp:setProperty property="*" name="bean"/>
	<%
	if(dao.save(bean).equals("success")){
		RequestDispatcher rdDispatcher=request.getRequestDispatcher("AdminProfile2.jsp");
		rdDispatcher.forward(request,response);
	}
	else{
		response.setContentType("text/html");
		 response.getWriter().println("<div class='alert alert-danger alert-dismissible fade show' role='alert'><strong>Error! </strong>Username or Password Invalid.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"); 
		RequestDispatcher rdDispatcher=request.getRequestDispatcher("admin.jsp");
		rdDispatcher.include(request,response);	
	}
	%>
	
	
</body>
</html>