<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String bidID=request.getParameter("bidID");
String productID=request.getParameter("productID");
String product_Name=request.getParameter("product_Name");
String product_Category=request.getParameter("product_Category");
String product_Price=request.getParameter("product_Price");
String bid_Price=request.getParameter("bid_Price");
String email=request.getParameter("email");

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("delete from biditem where bidID='"+bidID+"'");
	response.sendRedirect("biddingList.jsp?msg=delete");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("biddingList.jsp?msg=invalid");
}
%>