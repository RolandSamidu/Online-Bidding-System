<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<meta charset="ISO-8859-1">
<title>Bidding List</title>
</head>
<body>

<div style="color: white; text-align: center; font-size: 30px;">Bidding List <i class="fas fa-heart"></i></div>
<%
String msg=request.getParameter("msg");
if("select".equals(msg))
{
%>
<h3 class="alert">!!! Select Winner !!!</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 class="alert">Something went wrong! Try Again!</h3>
<%} %>
<table>
        <thead>
          <tr>
            <th scope="col">Product ID</th>
            <th scope="col">Product Name</th>
            <th scope="col">Product Category</th>
            <th scope="col"><i class="fa fa-usd"></i> Product Price</th>
            <th scope="col"><i class="fa fa-usd"></i> Bid Price</th>
            <th scope="col">Bidder Email <i class='fas fa-heart'></i></th>
            <th scope="col">Select</th>
          </tr>
        </thead>
        <tbody>
<%
try {
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from biditem");
	while(rs.next())
	{
%>
          <tr>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %></td>
            <td><%=rs.getString(5) %> <i class="fa fa-usd"></i></td>
            <td><%=rs.getString(6) %> <i class="fa fa-usd"></i></td>
            <td><%=rs.getString(7) %></td>
            <td><a href="bidSelect.jsp?bidID=<%=rs.getString(1) %> ">Select</a></td>
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
