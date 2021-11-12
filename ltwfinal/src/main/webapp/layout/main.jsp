<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trang chu</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/MyStyle.css"/>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
</head>
<body>
	<!-- HEADER -->
	<header>
		<tiles:insertAttribute name="header"/>
	</header>
	<!-- MENU -->
	<aside>
		<tiles:insertAttribute name="menu"/>
	</aside>
</body>
</html>