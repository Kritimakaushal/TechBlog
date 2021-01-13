<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.kritima.TechBlog.web.model.Message" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="css/techblog.css" rel="stylesheet"  type="text/css"/>
</head>
<body>

<%@ include file="navbar.jsp" %>

<main class="d-flex align-items-center " style="height:70vh">
<div class="container">
	<div class="row">
		<div class="col-md-4 offset-md-4">
			<div class="card  primary-color text-white ">
				<div class="card-header text-center">
				<span class="fa fa-user-circle-o fa-3x"></span>
				<p>Login here</p>
				</div>
				<%
					HttpSession s=request.getSession();
				Message m=(Message)s.getAttribute("msg");
				if(m!=null){
					%>
					<div class="<%=m.getCss() %>" role="alert">
					  <%= m.getContent() %>
					</div>
					<%
				}
				s.removeAttribute("msg");
				%>
				<div class="card-body">
				<form action="login" method="get">
				  <div class="form-group">
				    <label for="exampleInputEmail1">Email address</label>
				    <input name="email" required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
				    <small id="emailHelp" class="form-text" style="color:#E0E0E0">We'll never share your email with anyone else.</small>
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1">Password</label>
				    <input name="pass" required type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
				  </div>
				  <div class="form-group form-check">
				    <input type="checkbox" class="form-check-input" id="exampleCheck1">
				    <label class="form-check-label" for="exampleCheck1">Check me out</label>
				  </div>
				  <div class="container text-center">
				  <button type="submit" class="btn btn-primary btn-outline-light submit"><b>Submit</b></button>
				  </div>
				</form>
				</div>			
			</div>
		</div>	
	</div>
</div>
</main>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</body>
</html>