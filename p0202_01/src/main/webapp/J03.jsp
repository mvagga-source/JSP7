<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>폼페이지</title>
	</head>
	<body>
		<h2>회원가입</h2>
		<form action="/p0202_01/Pro4" method='post'>
			<input type='text' name="id" placeholer="아이디를 입력하세요"/>
			<br>
			<input type='password' name="pw" placeholer="패스워드를 입력하세요"/>
			<br>			
			<input type='text' name="name" placeholer="이름을 입력하세요"/>
			<br>
			<h4>취미</h4>
			<input type="checkbox" name="hobby" id="game" value="게임">
			<label for="game">게임</label>
			<input type="checkbox" name="hobby" id="golf" value="골프">
			<label for="golf">골프</label>
			<input type="checkbox" name="hobby" id="swim" value="수영">
			<label for="swim">수영</label>
			<input type="checkbox" name="hobby" id="book" value="독서">
			<label for="book">도서</label>
			<br>
			<input type='submit' value="전송"/>
		</form>
	</body>
</html>