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
<title>Bid Update</title>
<style>
.back
{
  color: white;
  margin-left: 2.5%
}

</style>
</head>
<body>

 <h2><a class="back" href="biddingList.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></h2>
<%
String bidID=request.getParameter("bidID");
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from biditem where bidID='"+bidID+"'");
	while(rs.next())
	{

%>
<form action="bidUpdateAction.jsp" method="post">
<input type="hidden" name="bidID" value="<% out.println(bidID);%>">
<div class="left-div">
 <h3>Product ID</h3>
 <input class="input-style" type="number" name="productID" value="<%=rs.getString(2)%>" required>
<hr>
</div>

<div class="right-div">
<h3>Product Name</h3>
<input class="input-style" type="text" name="product_Name" value="<%=rs.getString(3)%>" required> 
<hr>
</div>

<div class="left-div">
<h3>Product Category</h3>
<input class="input-style" type="text" name="product_Category" value="<%=rs.getString(4)%>" required> 
<hr>
</div>

<div class="right-div">
<h3>Product Price</h3>
<input class="input-style" type="number" name="product_Price" value="<%=rs.getString(5)%>" required>
<hr>
</div>

<div class="left-div">
<h3>Bid Price</h3>
<input class="input-style" type="number" name="bid_Price" value="<%=rs.getString(6)%>" required>
 <hr>
</div>

<div class="right-div">
<h3>Bidder's E-mail</h3>
<input class="input-style" type="text" name="email" value="<%=rs.getString(7)%>" required>
 <hr>
</div>

<button class="button">Update Save<i class='far fa-arrow-alt-circle-right'></i></button> 
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