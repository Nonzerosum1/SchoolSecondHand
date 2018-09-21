package com.ycxy.model;

/**
 * 用户要发布的商品列表，
 * 不是主界面展示的商品，
 * 发布后才在主界面显示。
 * @author ASUS
 *
 */
public class Product {

	//商品id
	private String id;
	//商品名字
	private String proName;
	//发布时要买的价钱
	private String price;
	//现今该商品的市场价
	private String marketPrice;
	//商品分类
	private String proClass;
	//商品描述
	private String proDetail;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getMarketPrice() {
		return marketPrice;
	}

	public void setMarketPrice(String marketPrice) {
		this.marketPrice = marketPrice;
	}

	public String getProClass() {
		return proClass;
	}

	public void setProClass(String proClass) {
		this.proClass = proClass;
	}

	public String getProDetail() {
		return proDetail;
	}

	public void setProDetail(String proDetail) {
		this.proDetail = proDetail;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", proName=" + proName + ", price=" + price + ", marketPrice=" + marketPrice
				+ ", proClass=" + proClass + ", proDetail=" + proDetail + "]";
	}

}
