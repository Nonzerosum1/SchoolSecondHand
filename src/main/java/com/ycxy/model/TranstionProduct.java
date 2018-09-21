package com.ycxy.model;

/**
 * 待交易的商品类 ，显示在主页面“什么都能买”下面
 * 
 * @author ASUS
 *
 */
public class TranstionProduct {

	// 商品id
	private String id;
	// 商品 名字
	private String tpName;
	// 商品 转卖价
	private String tpSellprice;
	// 商品 原价
	private String tpCostprice;
	// 商品 成色
	private String tpCondition;
	// 商品 图片路径
	private String tpPicsrc;
	// 用户id（对应prouser表中的id）
	private String tpUserid;

	// 多表查询时使用
	private ProUser proUser;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTpName() {
		return tpName;
	}

	public void setTpName(String tpName) {
		this.tpName = tpName;
	}

	public String getTpSellprice() {
		return tpSellprice;
	}

	public void setTpSellprice(String tpSellprice) {
		this.tpSellprice = tpSellprice;
	}

	public String getTpCostprice() {
		return tpCostprice;
	}

	public void setTpCostprice(String tpCostprice) {
		this.tpCostprice = tpCostprice;
	}

	public String getTpCondition() {
		return tpCondition;
	}

	public void setTpCondition(String tpCondition) {
		this.tpCondition = tpCondition;
	}

	public String getTpPicsrc() {
		return tpPicsrc;
	}

	public void setTpPicsrc(String tpPicsrc) {
		this.tpPicsrc = tpPicsrc;
	}

	public String getTpuserid() {
		return tpUserid;
	}

	public void setTpuserid(String tpUserid) {
		this.tpUserid = tpUserid;
	}

	public ProUser getProUser() {
		return proUser;
	}

	public void setProUser(ProUser proUser) {
		this.proUser = proUser;
	}

	@Override
	public String toString() {
		return "TranstionProduct [id=" + id + ", tpName=" + tpName + ", tpSellprice=" + tpSellprice + ", tpCostprice="
				+ tpCostprice + ", tpCondition=" + tpCondition + ", tpPicsrc=" + tpPicsrc + ", tpUserid=" + tpUserid
				+ ", proUser=" + proUser + "]";
	}

}
