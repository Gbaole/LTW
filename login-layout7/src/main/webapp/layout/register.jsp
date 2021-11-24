<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="style.css">
<title>Register</title>
</head>
<body>
<body class="body-login">
	<div class="container-login">
        <div class="header-login">
            <h2>Register</h2>
        </div>
        <form id="form" class="form-cms">
            <div class="form-control-cms">
                <input type="text" placeholder="Username" id="username" />
                <small>Error message</small>
            </div>
            <div class="form-control-cms">
                <input type="email" placeholder="E-mail" id="email" />
                <small>Error message</small>
            </div>
            <div class="form-control-cms">
                <input type="password" placeholder="Password"
					id="password" />
                <small>Error message</small>
            </div>
            <div class="form-control-cms">
                <input type="password" placeholder="Re Password"
					id="repassword" />
                <small>Error message</small>
            </div>
            <button>Register</button> <br>
            <div class="login-register">
                <a href="Login.html">Click here to Login</a>
            </div>
        </form>
    </div>
    <script>
        const form = document.getElementById('form');
        const username = document.getElementById('username');
        const email = document.getElementById('email');
        const password = document.getElementById('password');
        const repassword = document.getElementById('repassword');


        form.addEventListener('submit', e => {
            e.preventDefault();
            checkInputs();
        });

        function checkInputs() {
            // trim to remove the whitespaces
            const usernameValue = username.value.trim();
            const emailValue = email.value.trim();
            const passwordValue = password.value.trim();
            const repasswordValue = repassword.value.trim();

            if(usernameValue === '') {
                setErrorFor(username, 'Username cannot be blank');
            } else if (usernameValue.length <3) {
                setErrorFor(username, 'More than 3 characters');
            } else if (usernameValue.length > 50) {
                setErrorFor(username, 'No more than 50 characters');
            } else {
                setSuccessFor(username);
            }

            if(emailValue === '') {
                setErrorFor(email, 'Email cannot be blank');
            } else if (!isEmail(emailValue)) {
                setErrorFor(email, 'Not a valid email');
            } else if (emailValue.length <5) {
                setErrorFor(email, 'More than 5 characters');
            } else if (emailValue.length > 50) {
                setErrorFor(email, 'No more than 50 characters');
            } else {
                setSuccessFor(email);
            }

            if(passwordValue === '') {
                setErrorFor(password, 'Password cannot be blank');
            } else if (passwordValue.length < 8) {
                setErrorFor(password, 'More than 8 characters');
            } else if (passwordValue.length > 50) {
                setErrorFor(password, 'No more than 50 characters');
            } else {
                setSuccessFor(password);
            }

            if(repasswordValue === '') {
                setErrorFor(repassword, 'Password cannot be blank');
            } else if (repasswordValue.length < 8) {
                setErrorFor(repassword, 'More than 8 characters');
            } else if (repasswordValue.length > 50) {
                setErrorFor(repassword, 'No more than 50 characters');
            } else if(passwordValue !== repasswordValue) {
                setErrorFor(repassword, 'Password does not match');
            } else {
                setSuccessFor(repassword);
            }
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
    </script>
</body>


</html>