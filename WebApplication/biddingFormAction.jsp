<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String bidID=request.getParameter("bidID");
String productID=request.getParameter("id");
String product_Name=request.getParameter("name");
String product_Category=request.getParameter("category");
String product_Price=request.getParameter("price");
String bid_Price=request.getParameter("bid_Price");
String email=request.getParameter("email");

int z=0;

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	PreparedStatement ps=con.prepareStatement("insert into biditem values(?,?,?,?,?,?,?)");
	ps.setString(1, bidID);
	ps.setString(2, productID);
	ps.setString(3, product_Name);
	ps.setString(4, product_Category);
	ps.setString(5, product_Price);
	ps.setString(6, bid_Price);
	ps.setString(7, email);
	ps.executeUpdate();
	response.sendRedirect("home.jsp?msg=added");
	
}
catch(Exception e)
{
	response.sendRedirect("home.jsp?msg=invalid");	
}
%>
