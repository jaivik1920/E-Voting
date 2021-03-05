<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="candidatebean" class="pack.CandidateBean"></jsp:useBean>
	<jsp:setProperty property="*" name="candidatebean"/>
	<jsp:useBean id="candidateDao" class="pack.CandidateDao"></jsp:useBean>
	<%
	if(candidateDao.candidateLogin(candidatebean).equals("success")){
		RequestDispatcher rd=request.getRequestDispatcher("candidateProfile.jsp");
		rd.forward(request, response);
	}
	else{
		response.setContentType("text/html");
		 response.getWriter().println("<div class='alert alert-danger alert-dismissible fade show' role='alert'><strong>Error! </strong>Username or Password Invalid.<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"); 
		RequestDispatcher rd=request.getRequestDispatcher("candidate.jsp");
		rd.include(request,response);

	}	
	%>

</body>
</html>