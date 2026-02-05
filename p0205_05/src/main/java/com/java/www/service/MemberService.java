package com.java.www.service;

import java.net.http.HttpRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface MemberService {
	void execute(HttpServletRequest request, HttpServletResponse response);
}
