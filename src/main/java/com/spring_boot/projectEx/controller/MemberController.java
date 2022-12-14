package com.spring_boot.projectEx.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring_boot.projectEx.model.MemberVO;
import com.spring_boot.projectEx.service.MemberService;


@Controller
public class MemberController {
	@Autowired
	MemberService service;
	
	// 로그인 폼 열기
	@RequestMapping("/member/loginForm")
	public String loginForm() {
		return "html/login";
	}
	
	// 비밀번호 암호화한 경우의 로그인 처리 방식
	@ResponseBody
	@RequestMapping("/member/login")
	public String loginCheck(@RequestParam HashMap<String, Object> param,
												HttpSession session) {
		// 로그인 체크 결과 
		String result = service.loginCheck(param); // result : "success" 또는 "fail"
		System.out.println(param.values());
		// 아이디와 비밀번호 일치하면 (로그인 성공하면)
		// 서비스에서 "success" 반환받았으면
		if(result.equals("success")) {
			//로그인 성공하면 세션 변수 지정
			session.setAttribute("sid", param.get("id"));			
		}
		
		return result;
	}
	
	
	
	
	// 로그아웃
	@RequestMapping("/member/logout")
	public String logout(HttpSession session) {
		//세션 무효화
		session.invalidate();		
		return "redirect:/"; // index로 포워딩 -> ProductController에 있는 @RequestMapping("/") 
	}
	
	// 회원가입 폼 열기
	@RequestMapping("/member/hwForm")
	public String hwForm() {
		return "html/hw";
	}
	
	// 회원가입
	@RequestMapping("/member/insert")
	public String insert(MemberVO vo,
									  @RequestParam("memHp1") String memHp1,
									  @RequestParam("memHp2") String memHp2,
									  @RequestParam("memHp3") String memHp3,
									  @RequestParam("mbBirthY") String mbBirthY,
									  @RequestParam("mbBirthM") String mbBirthM,
									  @RequestParam("mbBirthD") String mbBirthD) {
		vo.setMbHp(memHp1 + "-" + memHp2 + "-" + memHp3);
		vo.setMbBirth(mbBirthY + "-" + mbBirthM + '-' + mbBirthD);
		System.out.println(vo.toString());
		
		service.insertMember(vo);
		return "html/login"; // 회원 가입 후 로그인 폼으로 이동
	}
}








