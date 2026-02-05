<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>폼결과</title>
	</head>
	<body>
		<%
			request.setAttribute("nickName3", "임길동");
			request.setCharacterEncoding("utf-8"); 
		%>
		<h2>결과</h2>
		<p>form id : ${param.id }</p>
		<p>form pw : ${param.pw }</p>
		<p>form name : ${param.name }</p>
		<p>request nickName : ${nickName }</p>
		<p>request nickName3 : ${nickName3 }</p>
	</body>
</html>