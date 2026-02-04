<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>파일 업로드 완료</h2>
	<%
	//request.getParameter("title");
	//String uploadPath = "C:/workspace/JSP7/p0204_01/src/main/webapp/upload";
	
	// 톰켓 폴더는 이미지 초기화되므로 주의 필요함
	//String uploadPath = request.getSession().getServletContext().getRealPath("/upload");
	String uploadPath = "C:/upload";
	int size = 10*1024*1024; // 1kb=1024, 1mb =1024kb, 10mb=10*1024*1024
	
	// MultipartRequest(request,파일위치,사이즈,한글인코딩,파일정책)
	MultipartRequest multi = new MultipartRequest(request,uploadPath,size,"UTF-8",new DefaultFileRenamePolicy());
	
	String title = multi.getParameter("title");
	String bfile = multi.getFilesystemName("bfile");
	
	out.println("파일업로드 제목 : "+title+"<br>");
	out.println("파일업로드 파일명 : "+bfile+"<br>");
	
	
	%>
</body>
</html>