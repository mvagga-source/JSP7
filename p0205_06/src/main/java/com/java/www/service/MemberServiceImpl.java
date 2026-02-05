package com.java.www.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.Dao.MemberDao;
import com.java.www.Dto.MemberDto;

public class MemberServiceImpl implements MemberService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		List<MemberDto> list = new ArrayList<MemberDto>();
		MemberDao mdao = new MemberDao();
		list = mdao.memberList();
		request.setAttribute("list", list);
	}

}
