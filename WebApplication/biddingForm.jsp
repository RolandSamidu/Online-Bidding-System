<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/addNewProduct-style.css">
<title>Add New Product</title>
<style>
.back
{
  color: white;
  margin-left: 2.5%
}
</style>
</head>
<body>
 <h2><a class="back" href="home.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></h2>
<%
String id=request.getParameter("id");
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from product where id='"+id+"'");
	while(rs.next())
	{

%>
<form action="biddingFormAction.jsp" method="post">
<input type="hidden" name="id" value="<% out.println(id);%>">
<div class="left-div">
 <h3>Product Name</h3>
<input class="input-style" type="text" name="name" value="<%=rs.getString(2)%>" required>
<hr>
</div>

<div class="right-div">
<h3>Product Category</h3>
<input class="input-style" type="text" name="category" value="<%=rs.getString(3)%>" required> 
<hr>
</div>

<div class="left-div">
<h3>Product Price</h3>
<input class="input-style" type="number" name="price" value="<%=rs.getString(5)%>" required>
<hr>
</div>

<div class="left-div">
<h3>Enter Bidding Price</h3>
<input class="input-style" type="number" name="bid_Price" required>
<hr>
</div>

<div class="left-div">
<h3>Enter Bidder's Email</h3>
<input class="input-style" type="email" name="email" required>
<hr>
</div>

<button class="button">Bid <i class='far fa-heart'></i></button> 
</form>
<%
	}
	}
	catch(Exception e){
		System.out.println(e);
	}
%>


</body>
<br><br><br>
</body>
</html>