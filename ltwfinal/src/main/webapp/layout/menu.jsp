<!DOCTYPE html>
<html lang="en">
<head>
<title>CMS</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/MyStyle.css"/>

</head>
<body>
	<div class="container-fluid">
		<div class="row content">
			<div class="col-sm-3 sidenav">
				<br>
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search Blog..">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</span>
				</div>
				<br>
				<ul class="nav nav-pills nav-stacked">
					<li><a href="../views/view-content.jsp">View Conntent</a></li>
					<li><a href="../views/add-content.jsp">Form Content</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>
