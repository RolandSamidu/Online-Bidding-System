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
<meta charset="ISO-8859-1">
<title>Bidding List</title>
</head>
<body>

<div style="color: white; text-align: center; font-size: 30px;">Winner <i class="fas fa-heart"></i></div>

<table>
        <thead>
          <tr>
            <th scope="col">Winner Email</th>
            <th scope="col">Winner Name</th>
            <th scope="col">Product ID</th>
            <th scope="col">Product Name</th>
            <th scope="col">Product Category</th>
            <th scope="col"><i class="fa fa-usd"></i> Product Price</th>
            <th scope="col"><i class="fa fa-usd"></i> Bid Price</th>
            <th scope="col">Payment</th>
          </tr>
        </thead>
        <tbody>
<%
try {
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from winner");
	while(rs.next())
	{
%>
          <tr>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %></td>
            <td><%=rs.getString(5) %></td>
            <td><%=rs.getString(6) %></td>
            <td><%=rs.getString(7) %> <i class="fa fa-usd"></i></td>
            <td><%=rs.getString(8) %> <i class="fa fa-usd"></i></td>
            <td><a href="payment.jsp?bidID=<%=rs.getString(1) %> "> Payment</a></td>
          </tr>
<%}
	}
	catch(Exception e){
		System.out.println(e);
	}%>
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>