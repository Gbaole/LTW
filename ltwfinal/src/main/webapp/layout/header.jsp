<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/MyStyle.css"/>

</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">CMS</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<div class="dropdown" style="float: right">
						<button class="dropbtn">
							<span class="glyphicon glyphicon-user"></span> <span
								class="glyphicon glyphicon-triangle-bottom"></span>
						</button>
						<div class="dropdown-content">
							<a href="/views/edit-profile.jsp"><span class="glyphicon glyphicon-user"></span>User Profile</a> 
							<a href="/views/login.jsp"><span class="glyphicon glyphicon-log-out"></span>Logout</a>
						</div>
					</div>
				</ul>
			</div>

		</div>
	</nav>
</body>
</html>