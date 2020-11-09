<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="css/techblog.css" rel="stylesheet"  type="text/css"/>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>

<%@ include file="navbar.jsp" %>
<main class="p-5">
	<div class="container">
		<div class="col-md-6 offset-md-3">
			<div class="card primary-color text-white">
				<div class="card-header text-center">
					<span class="fa fa-user-plus fa-3x"></span>
					<p>Register here</p>
				</div>
				<div class="card-body">
				<form action="register" method="post">
					<div class="form-group">
				    <label for="username">User name</label>
				    <input name="uname" type="text" class="form-control" id="username" aria-describedby="emailHelp" placeholder="Enter name">
				    </div>
				  <div class="form-group">
				    <label for="exampleInputEmail1">Email address</label>
				    <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
				    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1">Password</label>
				    <input name="pass" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
				  </div>
				  <div class="form-group">
				    <label for="gender">Gender</label><br>
				    <input type="radio"  id="gender" name="gender" value="male"> Male
				    <input type="radio"  id="gender" name="gender" value="female"> Female
				  </div>
				  <div class="form-group">
				  <textarea name="about" class="form-control" rows="5" cols="" placeholder="Enter something about yourself"></textarea>
				  </div>
				  <div class="form-group form-check">
				    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
				    <label class="form-check-label" for="exampleCheck1">Agree terms and conditions</label>
				  </div>
				  <button type="submit" class="btn btn-primary btn-outline-light submit"><b>Submit</b></button>
				</form>
				
			</div>
		</div>
	</div>
</main>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</body>
</html>