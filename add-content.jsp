<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="MyStyle.css">
<title>Add Content</title>
</head>
<body>
	<h1>Add Content</h1>
	<p>Content From Elements</p>
	<form action="add-content.jsp" method="post">
		<table class="AddTable">
			<tr>
				<td><b>Title:</b></td>
			</tr>
			<tr>
				<td><textarea rows="1" cols="60" style="overflow:hidden"></textarea>
				</td>
			</tr>
			<tr >
				<td><b>Brief:</b></td>
			</tr>
			<tr>
				<td><textarea rows="4" cols="60" style="overflow:hidden"></textarea>
				</td>
			</tr>
			<tr>
				<td><b>Content:</b></td>
			</tr>
			<tr>
				<td><textarea rows="10" cols="60"></textarea> 
				</td>
			</tr>
			<tr>
				<td>
					<button type="submit">Submit</button>
					<button type="submit">Reset</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>