<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sorry, Something went wrong..</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="css/techblog.css" rel="stylesheet"  type="text/css"/>

</head>
<body>
<div class="container text-center">
	<img src="img/error.png" class="img-fluid" width="350px">
	<h3 class="display-3">Sorry, Something went wrong...</h3>
	<%= exception %>
	<a href="index.jsp" class="btn btn-primary primary-color mt-4" type="submit" >Home</a>
</div>
</body>
</html>