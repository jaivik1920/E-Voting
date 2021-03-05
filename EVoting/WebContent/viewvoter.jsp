<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Blob"%>
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
		
		Connection connection=ConnectionProvider.getConnection();
		String id=request.getParameter("id");
		int i=Integer.parseInt(id);
	
		try{
			
			PreparedStatement preparedStatement=connection.prepareStatement("select *from voter where id=(?)");
			preparedStatement.setInt(1, i);
			
			ResultSet resultSet=preparedStatement.executeQuery();
			
			if(resultSet.next()){
			
			Blob blob=resultSet.getBlob("sign");
			if(blob==null){
				out.println("Page nof Found Error 404");
			}
			else{
			byte barry[]=blob.getBytes(1, (int)blob.length());
  			response.setContentType("application/pdf");
  			OutputStream os=response.getOutputStream();
  			os.write(barry);
			}
			}
			
		}catch(Exception e){
			out.println(e.getMessage());
		}
	%>
</body>
</html>