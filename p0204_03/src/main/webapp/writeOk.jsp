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
<%

	String uploadPath = "C:/upload";
	int size = 10*1024*1024;
	
	// MultipartRequest(request,파일위치,사이즈,한글인코딩,파일정책)
	MultipartRequest multi = new MultipartRequest(request,uploadPath,size,"UTF-8",new DefaultFileRenamePolicy());
	
	String id = multi.getParameter("id");
	String btitle = multi.getParameter("bTitle");
	String bcontent = multi.getParameter("bContent");
	String bfile = multi.getFilesystemName("bfile");
	
	out.println("작성자 : "+id+"<br>");
	out.println("제목 : "+btitle+"<br>");
	out.println("내용 : "+bcontent+"<br>");
	out.println("파일명 : "+bfile+"<br>");
%>

</body>
</html>