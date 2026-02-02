<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>JSP 테그 - 스크립트릿</title>
	</head>
	<body>
		<h2>jsp태그</h2>
		<%-- 1. jsp주석 : 실행시 코드에 주석이 보이지 않음 --%>
		<!-- html 주석 : 실행시 코드에 주석이 보여짐 -->
		
		<!-- 2.스크립트릿 -->
		<%
			int[] num = {1,2,3};
			int a = 10;
			Arrays.toString(num);
			out.println(Arrays.toString(num));
		%> 
		
		<!-- 3.표현식 -->
		<h4><%=a %></h4>
		 
		<!-- 4.선언식 : 변수,매서드 선언 변수 : 전역변수같은 개념으로 사용가능 -->
		<!-- 선언식은 무조건 외부 출력이 됨 -->
		<%! int b = 20; %>
		
		<!-- 5.지시자 : import, 최초선언 --> 
		<%-- <%@ %> --%>
		
		<!-- 엑션태그 --> 
	</body>
</html>