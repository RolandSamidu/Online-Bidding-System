<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login Page</title>
</head>
<body>

<div id='container'>
  <div class='signup'>
  
  <form action="loginAction.jsp" method="post">
  <input type="email" name="email" placeholder="Enter E-mail" required>
  <input type="password" name="password" placeholder="Enter Password" required>
  <input type="submit" value="Login">
  </form>
     
      <h2><a href="signup.jsp">SignUp</a></h2>
       <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
  </div>
  <div class='whysignLogin'>
  <%
  String msg=request.getParameter("msg");
  if("notexist".equals(msg))
  {
  %>
  <h1>Incorrect Username or Password</h1>
  <%} %>
  
  <%
  if("invalid".equals(msg))
  {
  %>
  <h1>Some thing Went Wrong! Try Again !</h1>
  <%} %>

    <h2 style="color:#34282C;font-size:40px;font-family:cursive;">Online Bidding System</h2>
    <p>The Online Bidding System is the application that allows the users can bid on their favorite items and win them.</p>
  </div>
</div>

</body>
</html>