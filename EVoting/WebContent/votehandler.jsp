<%@page import="java.sql.ResultSet"%>
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
		
		PreparedStatement preparedStatement2=connection.prepareStatement("select *from candidate where id=(?)");
		preparedStatement2.setInt(1, i);
		ResultSet resultSet=preparedStatement2.executeQuery();
		
		int vote=0;
		
		if(resultSet.next()){
			vote=resultSet.getInt("vote");
		}
		
		vote=vote+1;
		
		PreparedStatement preparedStatement=connection.prepareStatement("update candidate set vote=(?) where id=(?)");
		preparedStatement.setInt(1, vote);
		preparedStatement.setInt(2, i);
		
		int result=preparedStatement.executeUpdate();
		if(result>0){
			RequestDispatcher requestDispatcher=request.getRequestDispatcher("voterlogin.jsp");
			requestDispatcher.forward(request, response);
		}
		else{
			response.setContentType("text/html");
			response.getWriter().println("<div class='alert alert-danger alert-dismissible fade show' role='alert'><strong>Error! </strong>Something Went Wrong!!!!<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"); 
			RequestDispatcher requestDispatcher=request.getRequestDispatcher("voterProfile.jsp");
			requestDispatcher.include(request, response);
		}
		}
	catch(Exception exception){
		
		
		System.out.println(exception.getMessage());	
	}

%>
</body>
</html>