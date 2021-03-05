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
	        height: 100vh;
            background-image: url('background.jpg');
            background-size: cover;
            background-repeat: no-repeat;
        }
        .description{
            opacity: 0.8;
            height: 400px;
            background-color: black;
            width: 800px;
            display: block;
            margin-left: auto;
            margin-right: auto;
            margin-top: 70px;
            border: 2px solid black;

        }
        .votingdesc{
            width: 600px;
            height: 300px;
            display: block;
            margin-left: auto;
            margin-right: auto;
            margin-top: 30px;
            font-size: 20px;
            font-weight: bold;
            color:rgb(10, 230, 76);
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
                    <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                  </li>
                  <li class="nav-item mx-2">
                    <a class="nav-link" aria-current="page" href="about.jsp">About Us</a>
                  </li>
                  <li class="nav-item mx-2">
                    <a class="nav-link" href="admin.jsp">Admin</a>
                  </li>
                   <li class="nav-item mx-2">
                    <a class="nav-link" href="party.jsp">Party Login</a>
                  </li>
                  <li class="nav-item mx-2">
                    <a class="nav-link" href="candidate.jsp">Candidate Login</a>
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

	<div class="result my-4 text-center " style="font-weight:bold; color:yellow; font-size:20px;">
	
	      <marquee><a href="result.jsp" style="font-weight:bold; color:yellow; font-size:20px;">Click here to see result...</a></marquee>
	
	</div>

	<div class="description ">
          <div class="votingdesc">
                Voting is a big part of our democracy. Many things in the country are decided by voting and elections.
                It’s, therefore, surprising that many people choose to stay away from the ballot; even though they could determine the 
                future of the country.
                Although many citizens may feel as if their vote doesn’t really count, there are plenty of reasons you should regularly hit the polls.
                No matter what side of the political divide you subscribe to, your voice is an important one.
                Voting is a crucial, meaningful way to express yourself and support the issues you care about. 
                It gives you the ability to choose who is in office and have a say on what goes on in the political world.
        </div>
      </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>	    
	</body>
	</html>