package com.ycxy.model;

/**
 * �û�Ҫ��������Ʒ�б�
 * ����������չʾ����Ʒ��
 * �����������������ʾ��
 * @author ASUS
 *
 */
public class Product {

	//��Ʒid
	private String id;
	//��Ʒ����
	private String proName;
	//����ʱҪ��ļ�Ǯ
	private String price;
	//�ֽ����Ʒ���г���
	private String marketPrice;
	//��Ʒ����
	private String proClass;
	//��Ʒ����
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
