package com.java.www;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;


@WebServlet("/Pro4")
public class Pro4 extends HttpServlet {
       
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String[] hobby = request.getParameterValues("hobby");
		Enumeration e = request.getParameterNames();
		while(e.hasMoreElements()) {
			String hobbys = (String)e.nextElement();
			System.out.println("취미 : "+hobbys);
		}
		System.out.println(Arrays.toString(hobby));
		
		request.setCharacterEncoding("utf-8"); // post 한글처리
		response.setContentType("text/html;charset=utf-8");
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head><title>결과</title></head>");
		writer.println("<body>");
		writer.println("<h2>결과화면 출력</h2>");
		writer.println("<h3>아이디 : "+id+"</h3>");
		writer.println("<h3>비밀번호 : "+pw+"</h3>");
		writer.println("<h3>이름 : "+name+"</h3>");
		writer.println("</body>");
		writer.println("</html>");		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet..");
		doAction(request, response);		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost..");		
		doAction(request, response);
	}

}
