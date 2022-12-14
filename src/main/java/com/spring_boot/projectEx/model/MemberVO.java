package com.spring_boot.projectEx.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class MemberVO {
	private String mbId;
	private String mbPw;
	private String mbName;
	private String mbBirth;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date mbDate;
	private String mbEmail;
	private String mbGen;
	private String mbHp;
	private String mbZipcode;
	private String mbAddress1;
	private String mbAddress2;
	
	public String getMbId() {
		return mbId;
	}
	public void setMbId(String mbId) {
		this.mbId = mbId;
	}
	public String getMbPw() {
		return mbPw;
	}
	public void setMbPw(String mbPw) {
		this.mbPw = mbPw;
	}
	public String getMbName() {
		return mbName;
	}
	public void setMbName(String mbName) {
		this.mbName = mbName;
	}
	public String getMbBirth() {
		return mbBirth;
	}
	public void setMbBirth(String mbBirth) {
		this.mbBirth = mbBirth;
	}
	public Date getMbDate() {
		return mbDate;
	}
	public void setMbDate(Date mbDate) {
		this.mbDate = mbDate;
	}
	public String getMbEmail() {
		return mbEmail;
	}
	public void setMbEmail(String mbEmail) {
		this.mbEmail = mbEmail;
	}
	public String getMbGen() {
		return mbGen;
	}
	public void setMbGen(String mbGen) {
		this.mbGen = mbGen;
	}
	public String getMbHp() {
		return mbHp;
	}
	public void setMbHp(String mbHp) {
		this.mbHp = mbHp;
	}
	public String getMbZipcode() {
		return mbZipcode;
	}
	public void setMbZipcode(String mbZipcode) {
		this.mbZipcode = mbZipcode;
	}
	public String getMbAddress1() {
		return mbAddress1;
	}
	public void setMbAddress1(String mbAddress1) {
		this.mbAddress1 = mbAddress1;
	}
	public String getMbAddress2() {
		return mbAddress2;
	}
	public void setMbAddress2(String mbAddress2) {
		this.mbAddress2 = mbAddress2;
	}

	
	
	
}
