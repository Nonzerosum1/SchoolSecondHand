package com.ycxy.dao;

import java.util.List;

import com.ycxy.model.TranstionProduct;

public interface TranstionProductMapper {

	/**
	 * 根据用户id取得所有属于该用户的商品
	 * 
	 * @param tpUserid
	 * @return
	 */
	TranstionProduct queryTranstionProductsBytpUserid(String id);

	/**
	 * 取得所有商品
	 * 
	 * @return
	 */
	List<TranstionProduct> queryTranstionProducts();
}
