<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 확인</title>
	</head>
	<%-- 페이지전환시 전달방법 : form, 파라메터, ajax, pathvalable, dispatcher(스프링) ---%>	
	<body>
		<!-- 스크립트릿,표현식,선언식,지시자,주석 -->
		<%-- jsp주석
		
			<% %> : 스크립트릿
			<%= %> : 표현식
			<%! %> : 선언식
			<%@ %> : 지시자
		
			getParamether : 1개 데이터 받기
			getParametherValues : checkbox 여러개 받기
		 --%>
		
		<h2>로그인결과</h2>
		<p>아이디 : <%= request.getParameter("id") %> </p>
		<p>비밀번호 : <%= request.getParameter("pw") %> </p>
		<%
			String cook_id = request.getParameter("id");
			String cook_save;
			if(request.getParameterValues("cook_save") != null){
				cook_save = request.getParameterValues("cook_save")[0];
				// 쿠키 저장
				Cookie cookie = new Cookie("cookie_id",cook_id);
				cookie.setMaxAge(60*60);
				response.addCookie(cookie);
				
			}else{
				// 쿠키 삭제
				Cookie[] cookies = request.getCookies();
				for(Cookie cookie:cookies){
					if(cookie.getName().equals("cookie_id")){
						cookie.setMaxAge(0);
						response.addCookie(cookie);						
					}
				}
			}
		%>
		<a href="./login.jsp"><button>로그인</button></a>		
		<%-- 아이디 저장이 클릭 되어 있으면 쿠키저장 --%>
		<%-- cookie_id --%>

	</body>
	

</html>

