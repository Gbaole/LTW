<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<title><tiles:getAsString name="title" /></title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="<%=request.getContextPath()%>/layout/MyStyle.css"/> 


</head>
<body>
	<header>
		<tiles:insertAttribute name="header" />
	</header>
	<div class="container-fluid">
		<div class="row content">

			<aside>
				<tiles:insertAttribute name="menu" />
			</aside>
			<section>
				<tiles:insertAttribute name="body" />
			</section>

		</div>
	</div>

<!--	<footer>
		<tiles:insertAttribute name="footer" />
	</footer>  -->
</body>
</html>