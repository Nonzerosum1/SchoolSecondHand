package com.ycxy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ycxy.dao.TranstionProductMapper;
import com.ycxy.model.TranstionProduct;

@Service
public class TranstionProductService {

	@Autowired
	private TranstionProductMapper mapper;

	/**
	 * 根据商品id取得该的商品
	 * 
	 * @param tpUserid
	 * @return
	 */
	public TranstionProduct queryTranstionProductsBytpUserid(String id) {
		return mapper.queryTranstionProductsBytpUserid(id);
	}

	/**
	 * 取得所有商品
	 * 
	 * @return
	 */
	public List<TranstionProduct> queryTranstionProducts() {
		return mapper.queryTranstionProducts();
	}

}
