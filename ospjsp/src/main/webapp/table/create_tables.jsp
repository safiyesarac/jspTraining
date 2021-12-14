<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="project.ConnectionProvider"%>
	<%@ page import="java.sql.*"%>
	<%
try {
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	String q1 = "create table users(name varchar(100), email varchar(100) primary key , mobilenumber bigint , securityQuestion varchar(200),answer varchar(100), password varchar(100), address varchar(200) , city varchar(100), country varchar(100) )";
	String q2 ="create table product(id int , name varchar(500) , category varchar(200) , price int , active varchar(10))";
	String q3= "create table cart(email varchar(100), product_id int , quantity  int , price int ,  total int ,address varchar(500), city varchar(100) , country varchar(100) , mobileNumber bigint , orderDate varchar(100) , deliveryDate varchar(100) , paymentMethod varchar(100) , transactionId varchar(100) , status varchar(10))";
	//st.execute(q1);
	//st.execute(q2);
	st.execute(q3);
	System.out.println("table created");
	con.close();
} catch (Exception e) {
	System.out.println(e);
}
%>
</body>
</html>