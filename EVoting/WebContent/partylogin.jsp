<%@page import="pack.PartyBean"%>
<%@page import="sqlConnection.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<jsp:useBean id="partybean" class="pack.PartyBean"></jsp:useBean>
	<jsp:setProperty property="*" name="partybean"/>
	<jsp:useBean id="partyDao" class="pack.PartyDao"></jsp:useBean>
	<%
	
	if(partyDao.partyLogin(partybean).equals("success")){
		RequestDispatcher rd=request.getRequestDispatcher("partyProfile.jsp");
		rd.forward(request, response);
	}
	else{
		response.setContentType("text/html");
		 response.getWriter().println("<div class='alert alert-danger alert-dismissible fade show' role='alert'><strong>Error! </strong>Username or Password Invalid.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"); 
		RequestDispatcher rd=request.getRequestDispatcher("party.jsp");
		rd.include(request,response);

	}	
	%>

</body>
</html>