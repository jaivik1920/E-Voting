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

	<h1 class="text-center my-4">Voter List Below!!!</h1>
		<h4 class="text-center my-4">Please first see document after active the voter.</h4>
	
 	<table class="table table-dark table-striped">
  <thead>
    <tr>
      <th scope="col">Sr.No</th>      
      <th scope="col">Email</th>
      <th scope="col">Name</th>
      <th scope="col">State</th>
      <th scope="col">District</th>
      <th scope="col">Password</th>
      <th scope="col">Status</th>
      <th scope="col">Activation</th>
      <th scope="col">Document</th>
    </tr>
  </thead>
  <tbody>
  <%
  
  Connection connection=ConnectionProvider.getConnection();
  
  try{
	  PreparedStatement preparedStatement=connection.prepareStatement("select *from voter");
	  ResultSet resultSet=preparedStatement.executeQuery();
	  int i=1;
	  String s="";
  while(resultSet.next()){
  int id=resultSet.getInt("id");
  s=s+"<tr> <td class='one'>"+id+"</td> <td>"+resultSet.getString("email")+"</td> <td>"+resultSet.getString("name")+"</td> <td>"+resultSet.getString("sname")+"</td> <td>"+resultSet.getString("dname")+"</td> <td>"+resultSet.getString("password")+"</td> <td>"+resultSet.getString("status")+"</td> <td ><button type='button' class='btn btn-success activeclass' value="+id+">Active</button></td><td ><button type='button' class='btn btn-success viewclass' value="+id+">View</button></td></tr>";
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
	$(".activeclass").click(function(){
		var id=this.value;
		alert("Do you want to Active the user?");
		window.location.href="adminprofilehandler.jsp?id="+id+"";
	});
	$(".viewclass").click(function(){
		var id=this.value;
		window.location.href="viewvoter.jsp?id="+id+"";
	});
});
</script>
</body>
</html>