	<%@page import="com.kritima.TechBlog.web.dao.connectsql"%>
<%@page import="com.kritima.TechBlog.web.dao.PostDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>


<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="css/techblog.css" rel="stylesheet"  type="text/css"/>
</head>
<body>

<%@ include file="navbar.jsp" %>

<div class="container-fluid  p-0 m-0">
	
	<div class="primary-color jumbotron text-white">
	<div class="container">
		<h3 class="display-3">Welcome to TechBlog</h3>
		<p>The world of emerging Technologies</p>
		
		<button class="btn btn-outline-light btn-lg"> <span class="fa fa-user-plus"> </span> Get Started</button>
		<a href="login.jsp" class="btn btn-outline-light btn-lg">	<span class="fa fa-user-circle"> </span> Log in</a>
		</div>
	</div>

<div class="container">

	<%
		//PostDao post=new PostDao(connectsql.getConnect());
		//List<PostsData> list=PostDao.getAllLists
	%>
	<div class="row mb-2">
	
	<div class="col-md-4">
	<div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Java Programming</h5>
    <p class="card-text">Java is a class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible.</p>
    <a href="register.jsp" class="btn btn-primary primary-color text-white">Read more</a>
  </div>
</div>
</div>

<div class="col-md-4">
	<div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Data Structures</h5>
    <p class="card-text">In computer science, a data structure is a data organization, management, and storage format that enables efficient access and modification. </p>
    <a href="register.jsp" class="btn btn-primary primary-color text-white">Read more</a>
  </div>
</div>
</div>

<div class="col-md-4">
	<div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Python Programming</h5>
    <p class="card-text">Python is an interpreted, high-level and general-purpose programming language. </p>
    <a href="register.jsp" class="btn btn-primary primary-color text-white">Read more</a>  </div>
</div>
</div>


	</div>
	<div class="row mb-2">
	
	<div class="col-md-4">
	<div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Machine Learning</h5>
    <p class="card-text">Machine learning is the study of computer algorithms that improve automatically through experience. It is seen as a subset of artificial intelligence</p>
   <a href="register.jsp" class="btn btn-primary primary-color text-white">Read more</a>
  </div>
</div>
</div>

<div class="col-md-4">
	<div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Database Management System</h5>
    <p class="card-text">A Database Management System (DBMS) is software designed to store, retrieve, define, and manage data in a database.</p>
    <a href="register.jsp" class="btn btn-primary primary-color text-white">Read more</a>
  </div>
</div>
</div>

<div class="col-md-4">
	<div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Android Development</h5>
    <p class="card-text">Android software development is the process by which applications are created for devices running the Android operating system.</p>
   <a href="register.jsp" class="btn btn-primary primary-color text-white">Read more</a>
  </div>
</div>
</div>


	</div>
</div>



</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>