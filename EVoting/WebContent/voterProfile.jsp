<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="sqlConnection.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html lang="en">
	  <head>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <link rel="icon" href="favicon.png" type="image/gif" sizes="16x16">
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"  integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
	
	    <title>E-Voting</title>
	    <style>
	    	body{
	    		background-color:grey;
	    	}
	    
	    </style>
</head>
<body>
	
	<h1 class="text-center my-4">Candidate List Below!!!</h1>
		<h4 class="text-center my-4">Please choose your future president wisely.</h4>
	
 	<table class="table table-dark table-striped">
  <thead>
    <tr>
      <th scope="col">Candidate id</th>      
      <th scope="col">Candidate Name</th>
      <th scope="col">Party Name</th>
      <th scope="col">Vote</th>

    </tr>
  </thead>
  <tbody>
	<%
	
	String email=request.getParameter("email");
	
	Connection connection=ConnectionProvider.getConnection();
	
	try{
	
	PreparedStatement preparedStatement=connection.prepareStatement("select *from voter where email=(?)");
	
	preparedStatement.setString(1, email);
	
	ResultSet resultSet=preparedStatement.executeQuery();
	
	int id=0;
	String dnameString="";
	
	if(resultSet.next()){
		id=resultSet.getInt("id");
		dnameString=resultSet.getString("dname");
	}
	
	PreparedStatement preparedStatement2=connection.prepareStatement("select *from candidate where dname=(?)");
	
			preparedStatement2.setString(1, dnameString);
			
			ResultSet resultSet2=preparedStatement2.executeQuery();
			
			String s="";
			
			
			while(resultSet2.next()){
				int i=resultSet2.getInt("id");
				System.out.println(dnameString +"  "+resultSet2.getString("name"));
			 s=s+"<tr> <td class='one'>"+i+"</td> <td>"+resultSet2.getString("name")+"</td><td>"+resultSet2.getString("paname")+"</td> <td><button type='button' class='btn btn-success voteclass' value="+i+">Vote</button></td></tr>";

			}
			
			out.println(s);
	
	}
	catch(Exception exception){
		out.println(exception.getMessage());
		System.out.println(exception.getMessage());
	}
	
	%>
	 </tbody>
</table>
	
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>	    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$(".voteclass").click(function(){
		var id=this.value;
		alert("Are you sure?");
		window.location.href="votehandler.jsp?id="+id+"";
	});
});
	
</script>
</body>
</html>