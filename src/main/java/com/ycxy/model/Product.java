package com.ycxy.model;

/**
 * 用户要发布的商品列表， 不是主界面展示的商品， 发布后才在主界面显示。
 * 
 * @author ASUS
 *
 */
public class Product {

	// 商品id
	private String id;
	// 商品名字
	private String proName;
	// 发布时要买的价钱(转卖价)
	private String proSellprice;
	// 现今该商品的市场价(原价)
	private String proCostprice;
	// 商品成色
	private String proCondition;
	// 商品地址
	private String proPicsrc;
	// 用户id
	private String proUserid;

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

	public String getProSellprice() {
		return proSellprice;
	}

	public void setProSellprice(String proSellprice) {
		this.proSellprice = proSellprice;
	}

	public String getProCostprice() {
		return proCostprice;
	}

	public void setProCostprice(String proCostprice) {
		this.proCostprice = proCostprice;
	}

	public String getProCondition() {
		return proCondition;
	}

	public void setProCondition(String proCondition) {
		this.proCondition = proCondition;
	}

	public String getProPicsrc() {
		return proPicsrc;
	}

	public void setProPicsrc(String proPicsrc) {
		this.proPicsrc = proPicsrc;
	}

	public String getProUserid() {
		return proUserid;
	}

	public void setProUserid(String proUserid) {
		this.proUserid = proUserid;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", proName=" + proName + ", proSellprice=" + proSellprice + ", proCostprice="
				+ proCostprice + ", proCondition=" + proCondition + ", proPicsrc=" + proPicsrc + ", proUserid="
				+ proUserid + "]";
	}

}
