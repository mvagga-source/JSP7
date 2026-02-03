<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키</title>
	</head>
	<body>
		<%
		
		// 쿠키생성
		Cookie c1 = new Cookie("cook_id","aaa_cook");
		Cookie c2 = new Cookie("cook_name","박길동");
		
		// 쿠키 시간 설정
		c1.setMaxAge(60*10); //60초*10분 = 10분동안 쿠키 유지
		c2.setMaxAge(60*60*24); //60초*60분*24시간 = 1일동안 쿠키 유지
		
		// 로컬에 저장하기
		response.addCookie(c1);
		response.addCookie(c2);
		
		%>
		
		
		<a href="./cookieView.jsp"><button>쿠키 확인</button></a>
		
		
	</body>
</html>