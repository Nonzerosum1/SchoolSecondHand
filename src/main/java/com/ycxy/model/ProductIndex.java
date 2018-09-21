package com.ycxy.model;

public class ProductIndex {

	private String id;
	private String name;
	private String picSrc;
	private String maxPrice;
	private String hisRecos;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPicSrc() {
		return picSrc;
	}

	public void setPicSrc(String picSrc) {
		this.picSrc = picSrc;
	}

	public String getMaxPrice() {
		return maxPrice;
	}

	public void setMaxPrice(String maxPrice) {
		this.maxPrice = maxPrice;
	}

	public String getHisRecos() {
		return hisRecos;
	}

	public void setHisRecos(String hisRecos) {
		this.hisRecos = hisRecos;
	}

	@Override
	public String toString() {
		return "ProductIndex [id=" + id + ", name=" + name + ", picSrc=" + picSrc + ", maxPrice=" + maxPrice
				+ ", hisRecos=" + hisRecos + "]";
	}

}
