<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>구구단 출력</title>
		<style>
			table,th,td{border-collapse:collapse;border:1px solid #ccc;margin:0 auto;}
			table{width:500px;}
			th,td{width:100px;height:40px;text-align:center;}
		</style>
	</head>
	<body>
	
		<!-- jstl태그 사용 -->
	
		<table>
		<c:forEach var="i" begin="2" end="9" step="1">
			<c:if test="${i%2==1}">
			
			<tr>
				<th colspan='5'>[${i}]단</th>
			</tr>
			<c:forEach var="j" begin="1" end="9" step="1">
			
				<tr>
					<td>${i}</td>
					<td>*</td>
					<td>${j}</td>
					<td>=</td>
					<td>${i*j}</td>
				</tr>
			</c:forEach>
			
			</c:if>			
		</c:forEach>
		</table>
		
		
		<hr>
		
		<!-- jsp태그 사용 -->
		<table>
			<tr>
				<td colspan='5'>JSP태그 사용</td>
			</tr>
		<%
			for(int i=2;i<=9;i++){
				if(i%2==0) continue;
		%>
				<tr><th colspan='5'>[<%= i %>]단 </tr>
		<%
				for(int j=1;j<=9;j++){
					//out.println(i+" * "+j+" = "+(i*j)+"<br>");
		%>
		
					
				<tr>
					<td><%= i %></td>
					<td>*</td>
					<td><%= j %></td>
					<td>=</td>
					<td><%= i*j %></td>
				</tr>					
					
		<%
				}
			}
		
		%>
		</table>		
	</body>
</html>