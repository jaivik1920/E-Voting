<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="sqlConnection.ConnectionProvider"%>
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
	    	}
	    
	    </style>
</head>
<body>
	
	<h1 class="text-center my-4">Voting Result!!!</h1>
    <h4 class="text-center my-4">Please Select winner carefully</h4>
	
	
 	<table class="table table-dark table-striped">
  <thead>
    <tr>
      <th scope="col">Candidate id</th>      
      <th scope="col">Name</th>
      <th scope="col">Party Name</th>
      <th scope="col">District</th>
      <th scope="col">Vote</th>
      <th scope="col">Winner</th>
      <th scope="col">Make Winner</th>

    </tr>
  </thead>
  <tbody>
  <%
  
  session.setAttribute("name", "jaivik");
  Connection connection=ConnectionProvider.getConnection();
  
  try{
	  PreparedStatement preparedStatement=connection.prepareStatement("select *from candidate");
	  ResultSet resultSet=preparedStatement.executeQuery();
	  int i=1;
	  String s="";
  	while(resultSet.next()){
  	int id=resultSet.getInt("id");
  
  s=s+"<tr> <td class='one'>"+id+"</td><td>"+resultSet.getString("name")+"</td> <td>"+resultSet.getString("paname")+"</td><td>"+resultSet.getString("dname")+"</td><td>"+resultSet.getInt("vote")+"</td><td>"+resultSet.getString("win")+"</td><td ><button type='button' class='btn btn-success winnerclass' value="+id+">Make Winner</a></td></tr>";
  	i++;
  }
  out.println(s);	
  }
  catch(Exception e){
	  e.printStackTrace();
  }
  %>
  </tbody>
</table>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>	    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
	$(".winnerclass").click(function(){
		var id=this.value;
		alert("Are u sure?");
		window.location.href="adminprofilehandler4.jsp?id="+id+"";
	});
	});
</script>
</body>
</html>