<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Side Menu</title>
<script src="https://kit.fontawesome.com/07d9449646.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="MyStyle.css" >
</head>
<body>
<div class="sidemenu">
	<nav class="sidenav">
		<ul class="nobullets">
			<li class ="sidenav-item" >
				<input type="text" placeholder="Search...">
				<button class="navbutton" type="submit"><i class="fas fa-search"></i></button>
			</li>
			<li class ="sidenav-item" ><i class="far fa-calendar-alt"></i><a href="view-content.jsp">View Content</a></li>
			<li class ="sidenav-item" ><i class="fas fa-edit"></i><a href="add-content.jsp">Form Content</a></li>
		</ul>
	</nav>
</div>
</body>
</html>