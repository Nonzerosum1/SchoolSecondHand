package com.ycxy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ycxy.dao.ProductMapper;
import com.ycxy.model.Product;
import com.ycxy.model.ProductIndex;

@Service
public class ProductService {

	@Autowired
	private ProductMapper mapper;
	
	/*
	 * 获得用户要发布的所有商品
	 * 
	 */
	public List<Product> queryProducts(){
		return mapper.queryProducts();
	}
	
	/*
	 * 获得主界面展示的所有商品
	 */
	public List<ProductIndex> queryProductIndexs(){
		return mapper.queryProductIndexs();
	}

}
