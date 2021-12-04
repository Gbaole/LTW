
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <link rel="stylesheet" href="style.css">
    <title>Register</title>

</head>
<body class="body-login">
    <div class="container-login">
        <div class="header-login">
            <h2>Register</h2>
        </div>
        <form action="<%=request.getContextPath()%>/register" method="post" id="form" class="form-cms" onsubmit="return checkInputs()">
            <div class="form-control-cms">
                <input type="text" placeholder="Username" id="username" name="uname"/>
                <small>Error message</small>
            </div>
            <div class="form-control-cms">
                <input type="email" placeholder="E-mail" id="email" name="email"/>
                <small>Error message</small>
            </div>
            <div class="form-control-cms">
                <input type="password" placeholder="Password" id="password" name="password"/>
                <small>Error message</small>
            </div>
            <div class="form-control-cms">
                <input type="password" placeholder="Re Password" id="repassword"/>
                <small>Error message</small>
            </div>
            <button type="submit" value="register">Register</button> <br>
            <div class="login-register">
                <a href="<%=request.getContextPath()%>/layout/login.jsp">Click here to Login</a>
            </div>
        </form>
    </div>
    <script>
        const form = document.getElementById('form');
        const username = document.getElementById('username');
        const email = document.getElementById('email');
        const password = document.getElementById('password');
        const repassword = document.getElementById('repassword');

        function checkInputs() {
            // trim to remove the whitespaces
            const usernameValue = username.value.trim();
            const emailValue = email.value.trim();
            const passwordValue = password.value.trim();
            const repasswordValue = repassword.value.trim();
            var status_uname = 0;
            var status_email = 0;
            var status_pw = 0;
            var status_repw = 0;
            var status = false;

            if(usernameValue === '') {
                setErrorFor(username, 'Username cannot be blank');
                status_uname = 0;
            } else if (usernameValue.length <3) {
                setErrorFor(username, 'More than 3 characters');
                status_uname = 0;
            } else if (usernameValue.length > 50) {
                setErrorFor(username, 'No more than 50 characters');
                status_uname = 0;
            } else {
                setSuccessFor(username);
                status_uname = 1;
            }

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

            if(repasswordValue === '') {
                setErrorFor(repassword, 'Password cannot be blank');
                status_repw = 0;
            } else if (repasswordValue.length < 8) {
                setErrorFor(repassword, 'More than 8 characters');
                status_repw = 0;
            } else if (repasswordValue.length > 50) {
                setErrorFor(repassword, 'No more than 50 characters');
                status_repw = 0;
            } else if(passwordValue !== repasswordValue) {
                setErrorFor(repassword, 'Password does not match');
                status_repw = 0;
            } else {
                setSuccessFor(repassword);
                status_repw = 1;
            }

            if((status_email == 1) && (status_repw == 1) && (status_pw == 1) && (status_uname == 1))
            {
                status = true;
            }
            else 
            {
                status = false;
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
    </script>
</body>
</html>