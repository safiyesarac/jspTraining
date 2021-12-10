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
	st.execute(q1);
	System.out.println("table created");
	con.close();
} catch (Exception e) {

}
%>
</body>
</html>