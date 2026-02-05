<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원정보리스트</title>
	<style>
		table,td{border:1px solid black;}
	</style>
</head>
<body>
	<h2>회원정보 리스트</h2>
	<h3>${list.size()}</h3>
	<table>
		<c:forEach var="member" items="${list }">

			<tr>
				<td>${member.id }</td>
				<td>${member.pw }</td>
				<td>${member.name }</td>
				<td>${member.phone }</td>
				<td>${member.email }</td>
				<td>${member.gender }</td>
				<td>${member.hobby }</td>
			</tr>
		
		</c:forEach>

	
	</table>
	
</body>
</html>