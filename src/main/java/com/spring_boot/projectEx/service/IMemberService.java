package com.spring_boot.projectEx.service;

import java.util.HashMap;

import com.spring_boot.projectEx.model.memberVO;

public interface IMemberService {
	public String loginCheck(HashMap<String, Object> map);
	public void insertMember(memberVO vo);
}
