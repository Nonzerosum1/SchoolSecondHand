package com.ycxy.dao;

import java.util.List;

import com.ycxy.model.TranstionProduct;

public interface TranstionProductMapper {

	/**
	 * �����û�idȡ���������ڸ��û�����Ʒ
	 * 
	 * @param tpUserid
	 * @return
	 */
	List<TranstionProduct> queryTranstionProductsBytpUserid(String tpUserid);

	/**
	 * ȡ��������Ʒ
	 * 
	 * @return
	 */
	List<TranstionProduct> queryTranstionProducts();
}
