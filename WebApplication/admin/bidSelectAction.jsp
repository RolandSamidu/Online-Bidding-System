<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String winnerID=request.getParameter("winnerID");
String email=request.getParameter("email");
String b_name =request.getParameter("b_name");
String productID=request.getParameter("productID");
String product_Name=request.getParameter("product_Name");
String product_Category=request.getParameter("product_Category");
String product_Price=request.getParameter("product_Price");
String bid_Price=request.getParameter("bid_Price");


try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	PreparedStatement ps=con.prepareStatement("insert into winner values(?,?,?,?,?,?,?,?)");
	ps.setString(1, winnerID);
	ps.setString(2, email);
	ps.setString(3, b_name);
	ps.setString(4, productID);
	ps.setString(5, product_Name);
	ps.setString(6, product_Category);
	ps.setString(7, product_Price);
	ps.setString(8, bid_Price);
	ps.executeUpdate();
	response.sendRedirect("A_biddingList.jsp?msg=select");
	
}
catch(Exception e)
{
	response.sendRedirect("A_biddingList.jsp?msg=invalid");	
}

%>