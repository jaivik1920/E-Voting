<%@page import="java.sql.PreparedStatement"%>
<%@page import="sqlConnection.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String id=request.getParameter("id");
	int i=Integer.parseInt(id);
	out.println(i);
	
	Connection connection=ConnectionProvider.getConnection();
	
	try{
		PreparedStatement preparedStatement=connection.prepareStatement("update voter set status=(?) where id=(?)");
		preparedStatement.setString(1, "active");
		preparedStatement.setInt(2,i);
		int result=preparedStatement.executeUpdate();
		if(result>0){
			RequestDispatcher rdDispatcher=request.getRequestDispatcher("AdminProfile.jsp");
			rdDispatcher.forward(request, response);
		}
		else{
			response.setContentType("text/html");
			response.getWriter().println("<div class='alert alert-danger alert-dismissible fade show' role='alert'><strong>Error! </strong>Something Went Wrong!!!!<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"); 
			RequestDispatcher rdDispatcher=request.getRequestDispatcher("AdminProfile.jsp");
			rdDispatcher.include(request, response);
		}
	}
	catch(Exception e){
		
	}
%>
</body>
</html>