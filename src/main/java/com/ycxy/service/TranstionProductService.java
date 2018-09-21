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
	 * 根据用户id取得所有属于该用户的商品
	 * 
	 * @param tpUserid
	 * @return
	 */
	public List<TranstionProduct> queryTranstionProductsBytpUserid(String tpUserid) {
		return mapper.queryTranstionProductsBytpUserid(tpUserid);
	}

}
