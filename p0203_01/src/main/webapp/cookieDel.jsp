<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키 삭제</title>
	</head>
	<body>
		<%
			// 쿠키 모두 가져오기
			Cookie[] cs = request.getCookies();
			
			// 쿠키 삭제
			if(cs != null){
				
				// 해당 쿠키만 삭제
				for(Cookie cookie:cs){
					
					if(cookie.getName().equals("cook_id")){
						out.println("cook_id가 존재함");
						//쿠키 시간 설정
						cookie.setMaxAge(0);
						// 쿠키로컬에 저장시커애 삭제 완료됨
						response.addCookie(cookie);
					}
				}
				
				out.println("---------------------------------------------<br>");
				
				// 모든 쿠키 삭제
				for(Cookie cookie:cs){
					out.println(cookie.getName()+" 쿠키 삭제<br>");
					
					//쿠키 시간 설정
					cookie.setMaxAge(0);
					// 쿠키로컬에 저장시커애 삭제 완료됨
					response.addCookie(cookie);					
				}
			}
		
		%>
		
		<a href="./cookieView.jsp"><button>쿠키 확인</button></a>
	</body>
</html>