package com.Kproject.example.domain;

public class Product {
	private int pId;		// 상품번호
	private String pName;	// 상품이름
	private String pPrice;	// 상품가격
	private String pDetail;	// 상품상세
	private String pPhoto;	// 상품사진
	
	public int getpId() {
		return pId;
	}
	public void setpId(int pId) {
		this.pId = pId;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpPrice() {
		return pPrice;
	}
	public void setpPrice(String pPrice) {
		this.pPrice = pPrice;
	}
	public String getpDetail() {
		return pDetail;
	}
	public void setpDetail(String pDetail) {
		this.pDetail = pDetail;
	}
	public String getpPhoto() {
		return pPhoto;
	}
	public void setpPhoto(String pPhoto) {
		this.pPhoto = pPhoto;
	}
	@Override
	public String toString() {
		return "Product [pId=" + pId + ", pName=" + pName + ", pPrice=" + pPrice + ", pDetail=" + pDetail + ", pPhoto="
				+ pPhoto + ", getpId()=" + getpId() + ", getpName()=" + getpName() + ", getpPrice()=" + getpPrice()
				+ ", getpDetail()=" + getpDetail() + ", getpPhoto()=" + getpPhoto() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
	
	
	
	
}
