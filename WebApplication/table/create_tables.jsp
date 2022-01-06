<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String q1="create table users(name varchar(100),email varchar(100)primary key,mobileNumber bigint,securityQuestion varchar(200),answer varchar(100),password varchar(100),address varchar(300),city varchar(100),state varchar(100),country varchar(100))";
	String q2="create table product(id int primary key,name varchar(500),category varchar(200),image varchar(500),price int,active varchar(10))";
	String q3="create table biditem(bidID int primary key,productID int,product_Name varchar(500),product_Category varchar(200),product_Price int,bid_Price int,email varchar(100))";
	//System.out.print(q1);
	//System.out.print(q2);
	System.out.print(q3);
	
	//st.execute(q1);
	//st.execute(q2);
	st.execute(q3);
	System.out.print("Table created");
	con.close();
}
catch(Exception e){
	System.out.print(e);
}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Table</title>
</head>
<body>

</body>
</html>