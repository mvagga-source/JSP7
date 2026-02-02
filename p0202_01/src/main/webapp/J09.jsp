<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>현재IP주소</title>
</head>
<body>
	<%
		out.println("컨택스트 패스 : "+request.getContextPath()+"<br>");
		out.println("서버네임 : "+request.getServerName()+"<br>");
		out.println("서버URL네임 : "+request.getRequestURL() +"<br>");		
		out.println("서버URI네임 : "+request.getRequestURI() +"<br>");
		out.println("서버 파일명 추출 : "+request.getRequestURI().substring(request.getServerName().length()+1) +"<br>");
		out.println("IP주소 : "+request.getRemoteAddr()+"<br>");
		
		
	%>
</body>
</html>