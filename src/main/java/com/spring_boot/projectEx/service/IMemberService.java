package com.spring_boot.projectEx.service;

import java.util.HashMap;

import com.spring_boot.projectEx.model.MemberVO;

public interface IMemberService {
	public String loginCheck(HashMap<String, Object> map);
	public void insertMember(MemberVO vo);
	
	//mbId를 매개로 받아, 멤버vo 형태로 반환
	public MemberVO memberRcv(String mbId); 
}
