<%@page import="org.apache.catalina.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션추가</title>
</head>
<body>
	<h2>세션추가</h2>
	<%
	
	String id = request.getParameter("session_id");
	String name = request.getParameter("session_name");
	out.println("아이디 : "+id+"<br>");
	out.println("이름 : "+name+"<br>");
	
	session.setAttribute("session_id", id);
	session.setAttribute("session_name", name);
	
	%>
	
	<a href="session_02.jsp"><button>세션확인</button></a>
	
	
</body>
</html>