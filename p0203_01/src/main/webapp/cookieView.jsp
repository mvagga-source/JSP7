<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 확인</title>
</head>
<body>
<%
	Cookie[] c = request.getCookies();
	if(c != null){
		int temp = 0;
		for(int i=0;i<c.length;i++){
			c[i].getName();
			c[i].getValue();
			
			out.println(c[i].getName()+","+c[i].getValue()+"<br>");
			
			if(c[i].getName().equals("cook_id")){
				out.println("cook_id가 존재 : "+c[i].getValue()+"<br>");
			}
			
			if(c[i].getName().equals("cook_pw")){
				temp = 1;
			}
			
		}// for
		
		if(temp == 0){
			out.println("cook_pw는 존재하지 않습니다.");
		}
		
		out.println("<br>-------------------------------------------------------<br>");
		
		//배열for문
		for(Cookie cookie:c){
			out.println(cookie.getName()+","+cookie.getValue()+"<br>");
		}

	}// if
	
%>
	<br>
	<a href="./cookieDel.jsp"><button>쿠키 모두 삭제하기</button></a>
	<a href="./cookieInsert.jsp"><button>쿠키 추가하기</button></a>

</body>
</html>