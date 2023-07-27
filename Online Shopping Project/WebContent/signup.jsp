<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<style>
  .s1 {
    font-size: 18px ;
    /* position: absolu   te; */
    /* position: absolute; */
width: 157px;
height: 52px;

background: #D2EEE1;
border-radius: 30px;
border-color: #ffffff;
border-bottom: 1px solid #ffffff;

  }
</style>
<body>
<div id='container'>
  <div class='signup'>
  
    <form action="signupAction.jsp" method="post">
    <input type="text" name="name" placeholder="Enter Name" required>
    <input type="email" name="email" placeholder="Enter Email" required>
    <input type="number" name="mobileNumber" placeholder="Enter mobile number" required>
    <select name="securityQuestion" required>
    <option value="What was your first car?">What was your first car? </option>
    <option value="What is the name of your first pet?">What is the name of your first pet? </option>
    <option value="Which school did you go to?">Which school did you go to? </option>
    <option value="Which town were you born in?">Which town were you born in? </option>
    </select>
     <input type="text" name="answer" placeholder="Enter answer" required>
      <input type="password" name="password" placeholder="Enter password" required>
       <input class="s1" type="submit" value="SIGNUP" required style="color:#3BB77E" >
    </form>
      <h2><a href="login.jsp" style="color:#3BB77E">Login</a></h2>
  </div>
  <div class='whysign'></div>
    
  

<h1></h1>
    <h2></h2>
    <p></p>
  </div>
</div>

</body>
</html>