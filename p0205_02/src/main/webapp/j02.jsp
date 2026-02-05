<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원정보 출력</title>
		<style>
			h2{text-align:center;}
			table,th,td{border-collapse:collapse;border:1px solid #ccc;margin:0 auto;}
			table{width:1000px;}
			th,td{width:100px;height:40px;text-align:center;}
		</style>		
	</head>
	<body>

	
		<h2>메인페이지</h2>
		<table>
	     <tr>
	       <th>아이디</th>
	       <th>패스워드</th>
	       <th>이름</th>
	       <th>전화번호</th>
	       <th>이메일</th>
	       <th>성별</th>
	       <th>취미</th>
	     </tr>
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