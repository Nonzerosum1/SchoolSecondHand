package com.ycxy.dao;

import java.util.List;

import com.ycxy.model.Product;
import com.ycxy.model.ProductIndex;

public interface ProductMapper {

	/*
	 * ����û�Ҫ������������Ʒ
	 * 
	 */
	List<Product> queryProducts();
	
	/*
	 * ���������չʾ��������Ʒ
	 */
	List<ProductIndex> queryProductIndexs();
}
