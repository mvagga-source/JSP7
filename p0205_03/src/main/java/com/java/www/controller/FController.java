package com.java.www.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.service.BoardService;
import com.java.www.service.BoardServiceImpl;
import com.java.www.service.MemberService;
import com.java.www.service.MemberServiceImpl;

@WebServlet("*.do")
public class FController extends HttpServlet {

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("utf-8");
		String viewPage = null;
		
		String uri = request.getRequestURI();
		System.out.println("uri : "+uri);
		String contextPath = request.getContextPath();
		System.out.println("contextPath : "+contextPath);
		String fileName = uri.substring(contextPath.length());
		System.out.println("fileName : "+fileName);
		
		MemberService mService = null;
		BoardService bService = null;
		
		if (fileName.equals("/login.do")) {
			viewPage = "./login.jsp";
			//response.sendRedirect("./login.jsp");
		}else if(fileName.equals("/membership.do")) {
			viewPage = "./membership.jsp";
			//response.sendRedirect("./membership.jsp");
		}else if(fileName.equals("/logout.do")) {
			viewPage = "./logout.jsp";
			//response.sendRedirect("./logout.jsp");
		}else if(fileName.equals("/board.do")) {
			bService = new BoardServiceImpl();			
			bService.execute(request, response); // board의 모든 정보를 가져옴
			viewPage = "./board.jsp";
			//response.sendRedirect("./board.jsp");
		}else if(fileName.equals("/member.do")) {
			mService = new MemberServiceImpl();
			mService.execute(request, response); // member의 모든 정보를 가져옴
			viewPage = "./member.jsp";
			//response.sendRedirect("./member.jsp");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);

	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

}
