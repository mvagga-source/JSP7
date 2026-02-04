<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>결과</h2>
		<%
			// post 방식은 setCharacterEncoding 정의해야함 (한글깨짐 처리)
			request.setCharacterEncoding("utf-8");
			int i = 10;
		%>
		<!-- el태그랑 jstl태그를 사용하게됨 -->
		<p>el태그 사용 : ${ param.title }</p>
		<p>el태그 사용 : ${ param.name }</p>
		<p>el태그 session : ${ sessionScope.session_id }</p>
		<p>el태그 session 이름만 : ${ session_id }</p>
		<p>el태그 cookie : ${ cookie.cookie_id.value }</p>
		
		<p><%= request.getParameter("title") %> </p>
		<p><%= request.getParameter("name") %> </p>
		<p>jsp세션 : <%= session.getAttribute("session_id") %> </p>
		<p>jsp쿠키 : 
		<%
			Cookie[] cs = request.getCookies();
			for(Cookie c : cs){
				out.println("쿠키 :"+c.getValue()+"<br>");
			}
		
		%> </p>
		
		<!-- jstl,el태그 : 디자이나 편의 위해사용 -->
		<p>변수선언 i : ${i}</p>

	</body>
</html>