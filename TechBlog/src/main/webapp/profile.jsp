<%@page import="com.kritima.TechBlog.web.model.categoryData"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.kritima.TechBlog.web.dao.connectsql"%>
<%@page import="com.kritima.TechBlog.web.dao.PostDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    <%@page import="com.kritima.TechBlog.web.model.UserData" %>
    <% UserData user=(UserData)session.getAttribute("currentUser");
    
  response.setHeader("Cache-control", "no-cache, no-store, must-revalidate"); 
    if(user==null)
    	response.sendRedirect("login.jsp");
    %>
<!DOCTYPE html>
<html>
<head>


<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="css/techblog.css" rel="stylesheet"  type="text/css"/>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark primary-color">
  <a class="navbar-brand" href="index.jsp">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Features</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Pricing</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="#">Contact</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link " href="#" data-toggle="modal" data-target="#addblogModal"><span class="	fa fa-plus-square"></span> Add Blog</a>
      </li>
    </ul>
    <ul class="navbar-nav mr-right">
    <li class="nav-item">
        <a class="nav-link" href="#!" data-toggle="modal" data-target="#profileModal" ><span class="fa fa-user-circle"> </span> <%= user.getUname() %></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="logoutUser"><span class="fa fa-sign-out"> </span> Logout</a>
      </li>
    </ul>
  </div>
</nav>

<!-- Modal -->
<div class="modal fade" id="profileModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header primary-color text-white">
        <h5 class="modal-title" id="exampleModalLabel">TechBlog</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center">
      <img src="profilepics/<%=user.getProfile()%>" class="img-fluid" style="border-radius:50%;max-width:150px">
      <br>
       <%= user.getUname()%>
       
       <table class="table">
  
  <tbody>
    <tr>
      <th scope="row">Username</th>
      <td><%= user.getUname() %></td>
     
    </tr>
    <tr>
      <th scope="row">Email ID</th>
      <td><%= user.getEmail() %></td>
     
    </tr>
     <tr>
      <th scope="row">Gender</th>
      <td><%= user.getGender() %></td>
     
    </tr>
    <tr>
      <th scope="row">Status</th>
      <td><%= user.getAbout() %></td>
     
    </tr>
  </tbody>
</table>
       
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Edit profile</button>
      </div>
    </div>
  </div>
</div>

<main>

<div class="container">
	<div class="row mt-4">
		<div class="col-md-4">
			<div class="list-group">
  <a href="#" onclick="getAllPosts(0,this)" class="c-link list-group-item list-group-item-action active">
   All Posts
  </a>
  <%
        	PostDao dao=new PostDao(connectsql.getConnect());
        	ArrayList<categoryData> list=dao.getCategories();
        	for(categoryData c:list){
        			%>       	
        	  <a href="#" onclick="getAllPosts(<%=c.getCid()%>,this)" class="c-link list-group-item list-group-item-action"><%= c.getCname() %></a>
        	<%} %>
		</div>
		</div>
		<div class="col-md-8">
			<div class="container text-center" id="loader">
			<i class="fa fa-refresh fa-4x fa-spin"></i>
			<h3 class="mt-2">Loading...</h3>			
			</div>
			<div class="container-fluid" id="post-container">
			</div>
	</div>
</div>

</main>

<!-- Modal -->
<div class="modal fade" id="addblogModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Enter your Blog details here</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="add-blog-form" action="addBlog" method="POST">
        <div class="form-group">
        	<select name="cid" class="form-control">
        	<option selected disabled>---Select category---</option>
        	<%
        	
        	for(categoryData c:list){
        			%>       	
        	<option value="<%= c.getCid() %>" ><%= c.getCname() %></option>
        	<%} %>
        	</select>
        </div>
        	<div class="form-group">        	
        	<input name="ptitle" type="text" placeholder="Enter your post title" class="form-control">
        	</div>
        	<div class="form-group">        	
        	<textarea name="pcontent" placeholder="Enter your post content" style="height:200px" class="form-control"></textarea>
        	</div>
        	<div class="form-group">        	
        	<textarea name="pcode" placeholder="Enter programs/code if any" style="height:150px" class="form-control"></textarea>
        	</div>
        	<div class="form-group">   
        	<label>Upload pictures here, if required</label>    
        	<input name="pfile" type="file" class="form-control">        	 	
        	</div>
        <div class="container text-center">
        <button type="submit" class="btn btn-primary text-white primary-color">Post</button>
      </div>
        </form>
      </div>
      
    </div>
  </div>
</div>

<script type="text/javascript">
$('#myModal').on('shown.bs.modal', function () {
	  $('#myInput').trigger('focus');
	});
</script>

<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
 

 <script>
	$(document).ready(function (e){
		$("#add-blog-form").on("submit",function(event){
			event.preventDefault();
			console.log("you submitted form");
			let form=new FormData(this);
			$.ajax({
				url: "addBlog",
				type: 'POST',
				data : form,
				success : function (data,textStatus, jqXHR){
					console.log(data);
					if(data.trim()=='ok')
						swal("Good job!", "You posted your Blog!", "success");
					else
						swal("Error!", "Sorry, Something went wrong...", "error");
				},
				error : function(jqXHR,textStatus, errorThrown){
					swal("Error!", "Sorry, Something went wrong...", "error");
				},
				processData : false,
				contentType : false
			});
		});
	});
</script>

<script>

$(document).ready(function (e){
	getAllPosts(0,$('.c-link')[0]);
});

	function getAllPosts(cid,temp)
	{
		$("#loader").show();
		$("#post-container").hide();
		$(".c-link").removeClass('active primary-color');
		$.ajax({
			url : "loadposts.jsp",
			data : {cid: cid},
			success : function (data,textStatus, jqXHR){
				$(temp).addClass('active primary-color');
			$("#loader").hide();
			
			$("#post-container").html(data);
			$("#post-container").show();
			
			}
			});
	}
	

	</script>


</body>
</html>