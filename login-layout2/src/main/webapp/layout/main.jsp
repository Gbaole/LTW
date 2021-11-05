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

<!-- <style>
        /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
        
        .row.content {
            height: 1500px
        }
        
        .navbar {
            background-color: #f1f1f1;
            margin-bottom: 0;
            border-radius: 0;
        }
        /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
        
        .row.content {
            height: 450px
        }
        /* Set gray background color and 100% height */
        
        .sidenav {
            background-color: #f1f1f1;
            height: 100%;
        }
        /* Set black background color, white text and some padding */
        
        footer {
            background-color: #555;
            color: white;
            padding: 15px;
        }
        /* On small screens, set height to 'auto' for sidenav and grid */
        
        @media screen and (max-width: 767px) {
            .sidenav {
                height: auto;
                padding: 15px;
            }
            .row.content {
                height: auto;
            }
        }
        
        .dropbtn {
            background-color: #f1f1f1;
            color: rgb(28, 19, 163);
            padding: 16px;
            font-size: 16px;
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
            right: 0;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }
        
        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }
        
        .dropdown-content a:hover {
            background-color: #f1f1f1;
        }
        
        .dropdown:hover .dropdown-content {
            display: block;
        }
        
        .dropdown:hover .dropbtn {
            background-color: #f1f1f1;
        }
        
        .viewcontentlist {
            text-align: left;
            border: 1px solid rgb(207, 200, 200);
            border-radius: 5px;
            margin: 0 auto;
            background-color: white;
        }
        
        .viewcontentlist h4 {
            border-style: solid;
            border-width: 0px 0px 1px 0px;
            margin: 0;
            background: rgb(230, 255, 230);
            border-radius: 5px 5px 0px 0px;
            padding: 10px;
            border-color: rgb(207, 200, 200);
        }
        
        .viewcontentlist table {
            width: 97%;
        }
        
        .viewcontentlist table,
        th,
        td {
            border: 1px solid rgb(207, 200, 200);
            border-collapse: collapse;
            margin: 10px 10px 20px 10px;
            padding: 5px;
        }
    </style> -->


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