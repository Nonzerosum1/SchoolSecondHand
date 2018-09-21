package com.ycxy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ycxy.dao.TranstionProductMapper;
import com.ycxy.model.ProUser;
import com.ycxy.model.TranstionProduct;

@Service
public class TranstionProductService {

	@Autowired
	private TranstionProductMapper mapper;

	/**
	 * 根据商品id取得该的商品
	 * 
	 * @param id
	 * @return
	 */
	public TranstionProduct queryTranstionProductsByid(String id) {
		TranstionProduct transtionProductsByid = mapper.queryTranstionProductsByid(id);
		System.out.println("wwww="+transtionProductsByid.getTpuserid());
		ProUser proUser = mapper.queryProUser(transtionProductsByid.getTpuserid());
		transtionProductsByid.setProUser(proUser);
		return transtionProductsByid;
	}

	/**
	 * 取得所有商品
	 * 
	 * @return
	 */
	public List<TranstionProduct> queryTranstionProducts() {
		return mapper.queryTranstionProducts();
	}

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
