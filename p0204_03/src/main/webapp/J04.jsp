<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>form</title>
	</head>
	<body>
	
		<%
			// 세션 추가
			session.setAttribute("session_id", "session_aaa");
			
			// 쿠키 추가
			Cookie cookie = new Cookie("cookie_id","cookie_bbb");
			cookie.setMaxAge(60*60);
			response.addCookie(cookie);
		
		%>
	
	
		<h2>폼</h2>
		<form action="./formOk.jsp" method="post" name="frm">
		<input type="text" name="title">
		<br>
		<input type="text" name="name">
		<br>
		<input type="submit" value="전송">		
		</form>
	</body>
</html>