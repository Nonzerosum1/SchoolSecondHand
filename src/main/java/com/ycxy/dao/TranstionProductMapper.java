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
	TranstionProduct queryTranstionProductsBytpUserid(String id);

	/**
	 * ȡ��������Ʒ
	 * 
	 * @return
	 */
	List<TranstionProduct> queryTranstionProducts();
}
