<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="newpartybean" class="pack.NewPartyBean"></jsp:useBean>
	<jsp:setProperty property="*" name="newpartybean"/>
	<jsp:useBean id="newpartyDao" class="pack.NewPartyDao"></jsp:useBean>
	
	
	<%
	if(newpartyDao.newpartyLogin(newpartybean).equals("success")){
		RequestDispatcher rd=request.getRequestDispatcher("party.jsp");
		rd.forward(request, response);
	}
	else{
		response.setContentType("text/html");
		 response.getWriter().println("<div class='alert alert-danger alert-dismissible fade show' role='alert'><strong>Error! </strong>Email already used!!!<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"); 
		RequestDispatcher rd=request.getRequestDispatcher("newparty.jsp");
		rd.include(request,response);	
	}
	
	%>

</body>
</html>