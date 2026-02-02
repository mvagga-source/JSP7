package com.java.www;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


//@WebServlet("/Program1")
@WebServlet("/Pro1")
public class Program1 extends HttpServlet {

//    public Program1() { //기본생성자
//
//    }

	// get방식 - url, 주소입력, 링크 
	// private-같은 클래스, default-같은 패키지, protected-같은 자손클래스(상속받은)
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("주소로 잘 들어와서 출력되었습니다.");
	}

	// post방식
	// form -> post
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
