<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Content</title>
<link rel="stylesheet" href="MyStyle.css">
</head>
<body>
<h1>View Content</h1>
	<p>View Content List</p>
	<form action="edit-content.jsp" method="post">
		<table class="ViewTable">
		<tr>
			<th scope="col">#</th>
			<th scope="col">Title</th>
			<th scope="col">Brief</th>
			<th scope="col">Author</th>			
			<th scope="col">Created Date</th>
			<th scope="col">Action</th>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>			
			<td></td>
			<td> 
			<button type="submit">Edit</button>
			<button type="submit">Delete</button>
			</td>
		</tr>
		</table>
	</form>

</body>
</html>