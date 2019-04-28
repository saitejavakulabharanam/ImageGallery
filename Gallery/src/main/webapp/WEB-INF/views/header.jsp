<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Artist Lomesh</title>


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style>
a.w {
	color: white;
	text-decoration: none;
}

.border {
	border: 1px solid #F9F4E6;
	border-collapse: collapse;
}

.shadow {
	box-shadow: 2px 3px 6px -1px rgba(0, 0, 0, 0.3), 0 4px 6px 0
		rgba(0, 0, 0, 0.10);
}

a.goline {
	color: black;
	text-decoration: none;
	margin-left: 15px;
}

a.sellline {
	margin-left: 30px;
	color: white;
	text-decoration: none;
}

hr.style13 {
	height: 10px;
	border: 0;
	box-shadow: 0 10px 10px -10px #8c8b8b inset;
}

hr.style14 {
	border: 0;
	height: 1px;
	background-image: -webkit-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0);
	background-image: -moz-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0);
	background-image: -ms-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0);
	background-image: -o-linear-gradient(left, #f0f0f0, #8c8b8b, #f0f0f0);
}

.dropbtn {
	border: none;
	cursor: pointer;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: #f1f1f1
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: #3e8e41;
}
</style>


<script>
function myFunction(ang) {
if(ang==1){
	ang=0;}
else if(ang==0){
	ang=1;}
}
</script>



</head>
<body style="background-color:#535769">


<center>
		<c:choose>
			<c:when test="${isAdmin == 1}">
				<div class="container">
					<br> <span style="float: left; font-size: 25px"><b>Welcome : Artist Lomesh</b></span>
					<p>
						<a href="logout"
							style="text-decoration: none; font-size: 25px; float: right">Log
							Out</a>
					</p>
					<br>
					<br>

					<ul class="list-inline" style="min-width: 825px">
						
						<li>
							<a href="aboutlist"><button class="btn btn-primary shadow"
									style="height: 40px" type="button">About</button></a>
						</li>
						
						
						<li>
							<div class="dropdown">
								<button class="btn btn-primary dropdown-toggle shadow"
									style="height: 40px" type="button" data-toggle="dropdown">
									Manage Products <span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a href="Addproduct">Add Product</a></li>
									<li class="divider"></li>
									<li><a href="productlist">Product List</a></li>
								</ul>
							</div>
						</li>
						<li>
							<div class="dropdown">
								<button class="btn btn-primary dropdown-toggle shadow"
									style="height: 40px" type="button" data-toggle="dropdown">
									Manage Categories <span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a href="Addcategory">Add Category</a></li>
									<li class="divider"></li>
									<li><a href="categorylist">Category List</a></li>
								</ul>
							</div>
						</li>
						<li>
								<a href="messagelist"><button class="btn btn-primary shadow"
									style="height: 40px" type="button">
									Manage Messages </button></a>
							
			
						</li>
					</ul>
				</div>
				<hr class="style14">

			</c:when>
			<c:otherwise>
				<div class="shadow"
					style="background-color: black; position: fixed; width: 100%; z-index: 20">
					<div class="container">

						<table
							style="float: right; font-size: 12.5px; margin: 10px 0px 10px">
							<tr>
								<td><a class="sellline" href="adinfo">About</a></td>


								<td><a class="sellline" href="" data-toggle="modal"
									data-target="#myModal"> <span
										class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;LogIn</a></td>

							</tr>
						</table>

						<br>
						<table style="float: left">
							<tr>
								<td><a class="w" href="logout" style="font-size: 25px"><i>Gallery</i></a></td>
								

							</tr>
						</table>
<br>
						<table style="width: 80%; margin: 20px 0px 7px">
							<tr>
								<c:forEach items="${catline}" var="cat">
								
									<td style="padding-left: 10px;text-align:center"><a class="sellline" href="<c:url value='selectcat${cat.name}'/>">${cat.name}</a></td>
								</c:forEach>

							</tr>
						</table>
					</div>
				</div>



				<!--Login Modal -->
				<div class="modal fade" id="myModal" role="dialog">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title">Welcome To SignIn Page</h4>
							</div>
							<div class="modal-body">
								<form method="POST" action="admin">
									<table style="height: 100px; width: 400px; text-align: center">
										<tr>
											<td>User Name:</td>
											<td><input type="text" name="username"></td>
										</tr>
										<tr>
											<td>Password:</td>
											<td><input type="password" name="password"></td>
										</tr>

									</table>
									<input type="submit" value="Log In"
										class="btn btn-primary shadow" style="height: 38px">
								</form>
							</div>
							<div class="modal-footer"></div>
						</div>
					</div>
				</div>

			</c:otherwise>
		</c:choose>
</center>