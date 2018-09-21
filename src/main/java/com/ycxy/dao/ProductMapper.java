package com.ycxy.dao;

import java.util.List;

import com.ycxy.model.Product;
import com.ycxy.model.ProductIndex;

public interface ProductMapper {

	/*
	 * 获得用户要发布的所有商品
	 * 
	 */
	List<Product> queryProducts();
	
	/*
	 * 获得主界面展示的所有商品
	 */
	List<ProductIndex> queryProductIndexs();
}
