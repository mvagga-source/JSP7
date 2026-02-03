<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	</head>
	<body>
		<h2>쿠키 삭제</h2>
		
		<%
			Cookie[] cs = request.getCookies();
		
			for(Cookie cookie:cs){
				out.println(cookie.getName()+" : "+cookie.getValue()+"<br>");
			}

		%>		

		<form action="./J02_04.jsp" method="post" name="frm">
			<input type="text" name="cookie_key" placeholder="쿠키의 key값을 입력하세요"><br>
			<input type="submit" value="쿠키 삭제">
		</form>
		
		<a href="./J02_02.jsp"><button>쿠키 확인</button></a>
	</body>
</html>