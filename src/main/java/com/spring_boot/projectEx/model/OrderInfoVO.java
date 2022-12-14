package com.spring_boot.projectEx.model;

public class OrderInfoVO {
	private String ordNo;
	//@DateTimeFormat(pattern="yyyy-MM-dd")
	//private Date ordDate;
	//날짜를 DB에서 보내주기 때문에 편하게 스트링으로 선언함
	private String ordDate;
	private String mbId;
	private String ordReceiver;
	private String ordRcvZipcode;
	private String ordRcvAddress1;
	private String ordRcvAddress2;
	private String ordRcvPhone;
	private String ordRcvMsg;
	private String ordPay;
	
	//게터 & 세터 구현
	public String getOrdNo() {
		return ordNo;
	}
	public String getMbId() {
		return mbId;
	}
	public void setMbId(String mbId) {
		this.mbId = mbId;
	}
	public void setOrdNo(String ordNo) {
		this.ordNo = ordNo;
	}
	public String getOrdDate() {
		return ordDate;
	}
	public void setOrdDate(String ordDate) {
		this.ordDate = ordDate;
	}

	public String getOrdReceiver() {
		return ordReceiver;
	}
	public void setOrdReceiver(String ordReceiver) {
		this.ordReceiver = ordReceiver;
	}
	public String getOrdRcvZipcode() {
		return ordRcvZipcode;
	}
	public void setOrdRcvZipcode(String ordRcvZipcode) {
		this.ordRcvZipcode = ordRcvZipcode;
	}
	public String getOrdRcvAddress1() {
		return ordRcvAddress1;
	}
	public void setOrdRcvAddress1(String ordRcvAddress1) {
		this.ordRcvAddress1 = ordRcvAddress1;
	}
	public String getOrdRcvAddress2() {
		return ordRcvAddress2;
	}
	public void setOrdRcvAddress2(String ordRcvAddress2) {
		this.ordRcvAddress2 = ordRcvAddress2;
	}
	public String getOrdRcvPhone() {
		return ordRcvPhone;
	}
	public void setOrdRcvPhone(String ordRcvPhone) {
		this.ordRcvPhone = ordRcvPhone;
	}
	public String getOrdRcvMsg() {
		return ordRcvMsg;
	}
	public void setOrdRcvMsg(String ordRcvMsg) {
		this.ordRcvMsg = ordRcvMsg;
	}
	public String getOrdPay() {
		return ordPay;
	}
	public void setOrdPay(String ordPay) {
		this.ordPay = ordPay;
	}
	
}

