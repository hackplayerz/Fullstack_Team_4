package com.spring_boot.projectEx.model;

import lombok.Getter;
import lombok.Setter;

public class CategoryVO {
    private String ctgId;
    private String ctgName;
    
    public String getCtgId() {
		return ctgId;
	}
	public void setCtgId(String ctgId) {
		this.ctgId = ctgId;
	}
	public String getCtgName() {
		return ctgName;
	}
	public void setCtgName(String ctgName) {
		this.ctgName = ctgName;
	}
}
