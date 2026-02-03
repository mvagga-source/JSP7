<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 추가</title>
</head>
<body>
	<h2>쿠키 추가하기</h2>
	<h3>form데이터 확인</h3>
	<p><%=request.getParameter("cookie_key") %></p>
	<p><%=request.getParameter("cookie_value") %></p>
	
	<h3>쿠키 저장</h3>
	<%
		Cookie c = new Cookie(request.getParameter("cookie_key"),request.getParameter("cookie_value"));
		
		c.setMaxAge(60*60);
		
		response.addCookie(c);
		
		out.println(request.getParameter("cookie_key")+" 쿠키가 저장되었습니다.");
	%>
	
	<a href="./J02_02.jsp"><button>쿠키 확인</button></a>
</body>
</html>