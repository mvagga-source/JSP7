package com.java.www.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.service.MemberList;
import com.java.www.service.MemberService;

@WebServlet("*.do")
public class FController extends HttpServlet {
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		
		System.out.println("uri : "+request.getRequestURI());
		String uri = request.getRequestURI();
		System.out.println("contextPath : "+request.getContextPath());
		String contextPath = request.getContextPath();
		System.out.println("fileName : "+uri.substring(contextPath.length()));
		String fileName = uri.substring(contextPath.length());
		String viewPage = "";
		
		// Controller : 페이지분기
		switch (fileName) {
		case "/member.do":
			
			MemberService mService = new MemberList();
			mService.execute(request, response);
			
			viewPage = "member.jsp";
			break;
		case "/membership.do":
			viewPage = "membership.jsp";
			break;
		case "/board.do":
			viewPage = "board.jsp";
			break;
		case "/bwrite.do":
			viewPage = "bwrite.jsp";
			break;

		default:
			break;
		}
		
//		request.setAttribute("nickName", "test");
//		String nickName = (String)request.getAttribute("nickName");
//		response.sendRedirect(viewPage);
		
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
