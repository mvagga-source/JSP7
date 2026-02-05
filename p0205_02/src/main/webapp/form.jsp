<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>폼</title>
	</head>
	<body>
	<%
		request.setAttribute("nickName", "최길동");
	%>
		<h2>폼 페이지</h2>
		<h3>request nickName : ${nickName }</h3>
		<%
			// 페이지 이동 가능 request, response reset 해서 전송
			// response.sendRedirect("./formOk.jsp");
		
			// 페이지 이동 가능 request, response 추가해서 전송
			RequestDispatcher dispatcher = request.getRequestDispatcher("./formOk.jsp");
			dispatcher.forward(request, response);
		
		%>
		<form action="./formOk.jsp" method="post" name="frm">
			<input type="text" name="id" placeholer="아이디"><br>
			<input type="text" name="pw" placeholer="비밀번호"><br>
			<input type="text" name="name" placeholer="이름"><br>
			<input type="text" name="phone" placeholer="전화번호"><br>
			<input type="text" name="email" placeholer="이메일"><br>
			<input type="text" name="gender" placeholer="성별"><br>
			<input type="text" name="hobby" placeholer="취미"><br>
			<input type="submit" value="전송">
		</form>
	</body>
</html>