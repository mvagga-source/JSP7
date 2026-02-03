<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키 확인</title>
	</head>
	<body>
		<h2>쿠키 확인</h2>
		
		<%
			Cookie[] cs = request.getCookies();
		
			for(Cookie cookie:cs){
				out.println(cookie.getName()+" : "+cookie.getValue()+"<br>");
			}

		%>

		<a href="./J02_03.jsp"><button>쿠키 삭제</button></a>
		<a href="./J02.jsp"><button>쿠키 추가</button></a>
	</body>
</html>