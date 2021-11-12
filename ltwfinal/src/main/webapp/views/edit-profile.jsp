<!DOCTYPE html>
<html lang="en">
<head>
  <title>Edit Profile</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/MyStyle.css"/>

  
  </head>
<body>
      <h2>Edit Profile</h2>
      <header class="w3-container w3-light-grey">
        <h4>Profile Form Elements</h4>
      </header>
      <br>
      <div class="w3-container">
        <form>
          <div class="form-group">
            <label for="formGroupExampleInput">First Name</label>
            <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Enter the first name">
          </div>
          <div class="form-group">
            <label for="formGroupExampleInput">Last Name</label>
            <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Enter the last name">
          </div>
          <div class="form-group">
            <label for="exampleFormControlInput1">Email address</label>
            <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
          </div>
          <div class="form-group">
            <label for="formGroupExampleInput">Phone</label>
            <input type="number" class="form-control" id="formGroupExampleInput" placeholder="Enter the phone number">
          </div>
          <div class="form-group">
            <label for="exampleFormControlTextarea1">Discription</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
          </div>
          
          <button type="button" class="btn btn-outline-primary">Submit Button</button>
          <button type="button" class="btn btn-outline-secondary">Reset Button</button>
        </form>
      </div>
</body>
</html>
