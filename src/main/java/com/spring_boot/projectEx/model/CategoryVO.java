package com.spring_boot.projectEx.model;

import lombok.Getter;
import lombok.Setter;

public class CategoryVO {
    private String ctgId;
    private String ctgName;
    private String subName;

	// region Getter and setter
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
	public String getSubName() {
		return subName;
	}
	public void setSubName(String subName) {
		this.subName = subName;
	}

	// endregion

	public CategoryVO Clone()
	{
		CategoryVO clone = new CategoryVO();

		clone.setCtgId(ctgId);
		clone.setCtgName(ctgName);
		clone.setSubName(subName);

		return clone;
	}
}
