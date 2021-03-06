package com.ycxy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ycxy.dao.ProductMapper;
import com.ycxy.model.Product;
import com.ycxy.model.ProductIndex;
import com.ycxy.model.TranstionProduct;

@Service
public class ProductService {

	@Autowired
	private ProductMapper mapper;

	/*
	 * 获得用户要发布的所有商品
	 * 
	 */
	public List<Product> queryProducts(String proUserid) {
		return mapper.queryProducts(proUserid);
	}

	/*
	 * 获得主界面展示的所有商品
	 */
	public List<ProductIndex> queryProductIndexs() {
		return mapper.queryProductIndexs();
	}

	/**
	 * 更新商品发布状态：1 未发布 ，2 已发布
	 * 
	 * @param tranStateid
	 * @param id
	 * @return
	 */
	public int updataProduct(String tranStateid, String id) {
		return mapper.updataProduct(tranStateid, id);
	}

	/********************************************************************************************/
	public int insertProduct(Product product) {

		return mapper.insertProduct(product);
	}

	public int deleteProduct(String id) {
		return mapper.deleteProduct(id);
	}
	/***************/
	public TranstionProduct queryProduct(String id) {
		TranstionProduct product = mapper.queryProduct(id);
		return product;
	}
	public int updateProduct(TranstionProduct product) {
		return mapper.updateProduct(product);
	}
}
