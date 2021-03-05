<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		<jsp:useBean id="voterbean" class="pack.VoterBean"></jsp:useBean>
		<jsp:setProperty property="*" name="voterbean"/>
		
		<jsp:useBean id="voterDao" class="pack.VoterDao"></jsp:useBean>
		
	<%
	if(voterDao.voterLogin(voterbean).equals("success")){
		RequestDispatcher rd=request.getRequestDispatcher("voterProfile.jsp");
		String email=voterbean.getEmail();
		request.setAttribute("email",email);
		rd.forward(request, response);
	}
	else{
		response.setContentType("text/html");
		 response.getWriter().println("<div class='alert alert-danger alert-dismissible fade show' role='alert'><strong>Error! </strong>Username or Password Invalid.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"); 
		RequestDispatcher rd=request.getRequestDispatcher("voter.jsp");
		rd.include(request,response);

	}	
	%>
	
</body>
</html>