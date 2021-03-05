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
	      form{
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        height: 340px;
      }
      input{
          display: block;
          width: 400px;
      } 
      
	    </style>
	    
	  </head>
	  <body class="img-fluid">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
          <a class="navbar-brand" href="index.jsp">E-Vote</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarText">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item mx-2">
                    <a class="nav-link " aria-current="page" href="index.jsp">Home</a>
                  </li>
                  <li class="nav-item mx-2">
                    <a class="nav-link" aria-current="page" href="about.jsp">About Us</a>
                  </li>
                  <li class="nav-item mx-2">
                    <a class="nav-link " href="admin.jsp">Admin</a>
                  </li>
                   <li class="nav-item mx-2">
                    <a class="nav-link" href="party.jsp">Party Login</a>
                  </li>
                  <li class="nav-item mx-2">
                    <a class="nav-link active" href="candidate.jsp">Candidate Login</a>
                  </li>
                   <li class="nav-item mx-2">
                    <a class="nav-link" href="voter.jsp">Voter Login</a>
                  </li>
                  <li class="nav-item mx-2">
                    <a class="nav-link" href="help.jsp">Help</a>
                  </li>
            </ul>
          </div>
        </div>
      </nav>

	  <form action="candidatelogin.jsp" method="post">
          
        <div class="mb-3 ">
          <label for="exampleInputEmail1" class="form-label">Email address</label>
          <input type="email"  id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
          <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
        </div>
        <div class="mb-3 ">
          <label for="exampleInputPassword1" class="form-label">Password</label>
          <input type="password"  id="exampleInputPassword1" name="pass"]>
        </div>
        <button type="submit" class="btn btn-success ">Submit</button>
   		<a href="newcandidate.jsp" class="my-2">Don't have an account?</a>
      </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>	    
	</body>
	</html>