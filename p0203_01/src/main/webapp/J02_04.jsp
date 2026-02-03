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
			String key = request.getParameter("cookie_key");	
		
			Cookie[] cs = request.getCookies();
			
			int temp =0;
			for(Cookie cookie:cs){
				
				if(cookie.getName().equals(key)){
					cookie.setMaxAge(0);
					response.addCookie(cookie);
					out.println(key+" 쿠키가 삭제되었습니다.<br>");
					temp = 1;
				}
			}
			
			if(temp==0){
				out.println("입력한 쿠키정보가 없습니다. 삭제가 되지 않았습니다.<br>");
			}
		%>		
		
		<a href="./J02_02.jsp"><button>쿠키 확인</button></a>
	</body>
</html>