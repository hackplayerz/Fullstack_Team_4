package com.spring_boot.projectEx.model;

public class ProductVO {
	private String prdName;     // 상품이름
    private int prdPrice;       // 상품가격
    private String prdCompany;  // 제조회사
    private int prdStock;       // 재고
    private String prdDescript; // 상품 설명
    private String prdImg;      // 상품 이미지 경로
    private int visit;          // 방문횟수
    private int orderCount;     // 주문횟수
    private String ctgId;       // 카테고리 ID
    private String prdNo;       // 상품번호
    
//region Getter and setter
    
    public String getPrdNo() {
		return prdNo;
	}
	public void setPrdNo(String prdNo) {
		this.prdNo = prdNo;
	}
	public String getPrdName() {
		return prdName;
	}
	public void setPrdName(String prdName) {
		this.prdName = prdName;
	}
	public int getPrdPrice() {
		return prdPrice;
	}
	public void setPrdPrice(int prdPrice) {
		this.prdPrice = prdPrice;
	}
	public String getPrdCompany() {
		return prdCompany;
	}
	public void setPrdCompany(String prdCompany) {
		this.prdCompany = prdCompany;
	}
	public int getPrdStock() {
		return prdStock;
	}
	public void setPrdStock(int prdStock) {
		this.prdStock = prdStock;
	}
	public String getPrdDescript() {
		return prdDescript;
	}
	public void setPrdDescript(String prdDescript) {
		this.prdDescript = prdDescript;
	}
	public String getPrdImg() {
		return prdImg;
	}
	public void setPrdImg(String prdImg) {
		this.prdImg = prdImg;
	}
	public int getVisit() {
		return visit;
	}
	public void setVisit(int visit) {
		this.visit = visit;
	}
	public int getOrderCount() {
		return orderCount;
	}
	public void setOrderCount(int orderCount) {
		this.orderCount = orderCount;
	}
	public String getCtgId() {
		return ctgId;
	}
	public void setCtgId(String ctgId) {
		this.ctgId = ctgId;
	}
	
//endregion 

	public ProductVO Clone()
	{
		ProductVO clone = new ProductVO();
		clone.setPrdName(prdName);
		clone.setPrdPrice(prdPrice);
		clone.setPrdCompany(prdCompany);
		clone.setPrdStock(prdStock);
		clone.setPrdDescript(prdDescript);
		clone.setPrdImg(prdImg);
		clone.setVisit(visit);
		clone.setOrderCount(orderCount);
		clone.setCtgId(ctgId);
		clone.setPrdNo(prdNo);

		return clone;
	}
}
