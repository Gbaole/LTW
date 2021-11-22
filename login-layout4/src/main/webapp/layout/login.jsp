<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="style.css">
<title>Sign In</title>
</head>
<body>
	<div class="container-login">
		<div class="header-login">
			<h2>Please Sign In</h2>
		</div>
		<form id="form" class="form-cms">
			<div class="form-control-cms">
				<input type="email" placeholder="E-mail" id="email" /> <small>Error
					message</small>
			</div>
			<div class="form-control-cms">
				<input type="password" placeholder="Password" id="password" /> <small>Error
					message</small>
			</div>
			<input type="checkbox" id="subscribeNews" name="subscribe"
				value="newsletter"> <label>Remember Me</label>
			<button>Login</button>
			<br>
			<div class="login-register">
				<a href="Register.html">Click here to Register</a>
			</div>
		</form>
	</div>
	<script>
        const form = document.getElementById('form');
        const email = document.getElementById('email');
        const password = document.getElementById('password');


        form.addEventListener('submit', e => {
            e.preventDefault();
            checkInputs();
        });

        function checkInputs() {
            // trim to remove the whitespaces
            const emailValue = email.value.trim();
            const passwordValue = password.value.trim();
 
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