<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.apache.catalina.valves.JsonAccessLogValve"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메인 페이지</title>
	</head>
	<body>
		<h2>메인페이지</h2>
		<%-- // jsp 5가지 태그 
			 <%  %> : 스크립트릿
			 <%= %> : 표현식
			 <%! %> : 선언식
			 <%@ %> : 지시자
			 
			 controler(urls) -> service -> models
		--%>
		
		<%
		
		Connection conn = null; //db 연결
		PreparedStatement pstmt = null; // sql구문
		ResultSet rs = null; // 결과값
		String id="",pw="",name="",phone="",email="",gender="",hobby=""; 
		
		try{
			
			Context init = new InitialContext();
			DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/Oracle21");
			conn = ds.getConnection();
			String query = "select * from member";
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				
				//rs.getInt(columnIndex);
				//rs.getTimestamp(columnIndex);
				//rs.getDouble(columnIndex);				
				
				id = rs.getString("id");
				pw = rs.getString("pw");
				name = rs.getString("name");
				phone = rs.getString("phone");
				email = rs.getString("email");
				gender = rs.getString("gender");
				hobby = rs.getString("hobby");
				out.println(id+","+pw+","+name+","+phone+","+email+","+gender+","+hobby+"<br>");
			}
			
		}catch(Exception e){ e.printStackTrace();
		}finally{
			try{
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(rs!=null)rs.close();
			}catch(Exception e2){ e2.printStackTrace();
			}
		}
		
		
		%>		
		
	</body>
</html>