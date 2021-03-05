<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<jsp:useBean id="newcandidatebean" class="pack.NewCandidateBean"></jsp:useBean>
	
	<jsp:setProperty property="*" name="newcandidatebean"/>
	<jsp:useBean id="newcandidateDao" class="pack.NewCandidateDao"></jsp:useBean>
	
	<%
	if(newcandidateDao.newCandidateLogin(newcandidatebean).equals("success")){
		RequestDispatcher rd=request.getRequestDispatcher("candidate.jsp");
		rd.forward(request, response);
	}
	else{
		response.setContentType("text/html");
		 response.getWriter().println("<div class='alert alert-danger alert-dismissible fade show' role='alert'><strong>Error! </strong>Email already used!!! Or Party name doesn't exists!!!<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>"); 
		RequestDispatcher rd=request.getRequestDispatcher("newcandidate.jsp");
		rd.include(request,response);	
	}
	
	%>
		
</body>
</html>