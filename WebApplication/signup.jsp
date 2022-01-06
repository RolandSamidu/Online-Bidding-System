<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>SignUp</title>
</head>
<body>

<div id='container'>
  <div class='signup'>
  <form action="signupAction.jsp" method="post">
  <input type="text" name="name" placeholder="Enter Name" required>
  <input type="email" name="email" placeholder="Enter Email" required>
  <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
  <select name="securityQuestion" required>
  <option value="What is your favorite country?">What is your favorite country?</option>
  <option value="What is the name of your first pet?">What is the name of your favorite pet?</option>
  <option value="What was your favorite subject in high school?">What was your favorite subject in high school?</option>
  <option value="What is your favorite color?">What is your favorite color?</option>
  </select>
  <input type="text" name="answer" placeholder="Enter Answer" required>
  <input type="password" name="password" placeholder="Enter Password" required>
  <input type="submit" value="Signup"><br>
  </form>
    
      <h2><a href="Login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
  
<%
String msg = request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h1>Successfully Registered !</h1>
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