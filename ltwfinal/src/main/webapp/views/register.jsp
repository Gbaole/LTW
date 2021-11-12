<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/MyStyle.css"/>

	
    <title>Register</title>

</head>
<body>
<main class="my-form">
    <div class="cotainer">
        <br>
        <div class="row justify-content-center">
            <div class="col-md-4">
                    <div class="card">
                        <div class="card-header">Register</div>
                        <div class="card-body">
                            <form>
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user"> </i></span>
                                        <input type="text" class="form-control" placeholder="Username">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-envelope"> </i></span>
                                        <input type="email" class="form-control" placeholder="E-mail">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-key"> </i></span>
                                        <input type="password" class="form-control" placeholder="Password">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-key"> </i></span>
                                        <input type="password" class="form-control" placeholder="Re Password">
                                    </div>
                                </div>
                                  <button type="submit" class="btn btn-success btn-block">Register</button><br>
                                <div class="login-register">
                                    <a href="login.jsp">Click here to Login</a>
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
        </div>
    </div>

</main>
</body>
</html>