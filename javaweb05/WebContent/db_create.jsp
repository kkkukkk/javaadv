<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터베이스 생성</title>
</head>
<body>
	<%
		// 드라이버 로딩
	Class.forName("com.mysql.jdbc.Driver");

	String url = "jdbc:mysql://localhost:3306/";
	String id = "root";
	String pw = "0000";

	Connection conn = null; 			// 연결 객체
	PreparedStatement pstmt = null;		// 구문 객체
	
	conn = DriverManager.getConnection(url, id, pw);
	String sql = "CREATE DATABASE visit";  
	pstmt = conn.prepareStatement(sql);	
	pstmt.executeUpdate();
	
	if (pstmt != null) pstmt.close();
	if (conn != null) conn.close();
		
	
	%>



</body>
</html>