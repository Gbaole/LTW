<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/layout/style.css">
<title>Sign In</title>
</head>
<body class="body-login">
    <div class="container-login">
        <div class="header-login">
            <h2>Please Sign In</h2>
        </div>
        <form action="<%=request.getContextPath()%>/login" method="post" id="form" class="form-cms" onsubmit="return checkInputs()">
            <div class="form-control-cms">
                <input type="email" placeholder="E-mail" id="email" name="email" value="${email}"/>
                <small>Error message</small>
            </div>
            <div class="form-control-cms">
                <input type="password" placeholder="Password" id="password" name="password" value="${password}"/>
                <small>Error message</small>
            </div>
            <input type="checkbox" id="subscribeNews" name="remember" value="newsletter">
            <label>Remember Me</label>
            <button type="submit">Login</button> <br>
            <div class="login-register">
                <a href="<%=request.getContextPath()%>/layout/register.jsp">Click here to Register</a>
            </div>
        </form>
    </div>
    <script>
        const form = document.getElementById('form');
        const email = document.getElementById('email');
        const password = document.getElementById('password');


        function checkInputs() {
        	   // trim to remove the whitespaces
            const emailValue = email.value.trim();
            const passwordValue = password.value.trim();
            var status_email = 0;
            var status_pw = 0;
            var status = false;

            if(emailValue === '') {
                setErrorFor(email, 'Email cannot be blank');
                status_email = 0;
            } else if (!isEmail(emailValue)) {
                setErrorFor(email, 'Not a valid email');
                status_email = 0;
            } else if (emailValue.length <5) {
                setErrorFor(email, 'More than 5 characters');
                status_email = 0;
            } else if (emailValue.length > 50) {
                setErrorFor(email, 'No more than 50 characters');
                status_email = 0;
            } else {
                setSuccessFor(email);
                status_email = 1;
            }

            if(passwordValue === '') {
                setErrorFor(password, 'Password cannot be blank');
                status_pw = 0;
            } else if (passwordValue.length < 8) {
                setErrorFor(password, 'More than 8 characters');
                status_pw = 0;
            } else if (passwordValue.length > 50) {
                setErrorFor(password, 'No more than 50 characters');
                status_pw = 0;
            } else {
                setSuccessFor(password);
                status_pw = 1;
            }
            if((status_email == 0)||(status_pw=0))
            {
                status = false;
            }
            else 
            {
                status = true;
            }
            return status;
        }

        function setErrorFor(input, message) {
            const formControl = input.parentElement;
            const small = formControl.querySelector('small');
            formControl.className = 'form-control-cms error';
            small.innerText = message;
        }

        function setSuccessFor(input) {
            const formControl = input.parentElement;
            formControl.className = 'form-control-cms success';
        }

        function isEmail(email) {
            return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email);
        }
        function view_content_function(){
            location.href = "view-content.html";
        }
    </script>
</body>
</html>