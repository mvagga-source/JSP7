<%@page import="dto.Member"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원정보 출력</title>
		<style>
			h2{text-align:center;}
			table,th,td{border-collapse:collapse;border:1px solid #ccc;margin:0 auto;}
			table{width:1000px;}
			th,td{width:100px;height:40px;text-align:center;}
		</style>		
	</head>
	<body>
	
	<%
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = null;
		
		String id="",pw="",name="",phone="",email="",gender="",hobby="";
		
		List<Member> list = new ArrayList();

		try{
			Context init = new InitialContext();
			DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/Oracle21");
			conn = ds.getConnection();
			
			query = "select * from member";
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				id = rs.getString("id");
				pw = rs.getString("pw");
				name = rs.getString("name");
				phone = rs.getString("phone");
				email = rs.getString("email");
				gender = rs.getString("gender");
				hobby = rs.getString("hobby");
				
				//out.println(id+","+pw+","+name+","+phone+","+email+","+gender+","+hobby+"<br>");
				
				list.add(new Member(id,pw,name,phone,email,gender,hobby));
			}
			
			request.setAttribute("list", list);
			
		}catch(Exception e){ e.printStackTrace();
		}finally{
			try{
				if(rs!=null) rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null) conn.close();
			}catch(Exception e2){ e2.printStackTrace();
			}
		}
	%>
	
		<h2>메인페이지</h2>
		<table>
	     <tr>
	       <th>아이디</th>
	       <th>패스워드</th>
	       <th>이름</th>
	       <th>전화번호</th>
	       <th>이메일</th>
	       <th>성별</th>
	       <th>취미</th>
	     </tr>
			<c:forEach var="member" items="${list }">
				<tr>
					<td>${member.get }</td>
					<td>${member.pw }</td>
					<td>${member.name }</td>
					<td>${member.phone }</td>
					<td>${member.email }</td>
					<td>${member.gender }</td>
					<td>${member.hobby }</td>
				</tr>
			</c:forEach>	
		  </table>	
			
	</body>
</html>