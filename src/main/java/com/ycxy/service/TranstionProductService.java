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
	 * ������Ʒidȡ�øõ���Ʒ
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
	 * ȡ��������Ʒ
	 * 
	 * @return
	 */
	public List<TranstionProduct> queryTranstionProducts() {
		return mapper.queryTranstionProducts();
	}

	/**
	 * �����û�idȡ���������ڸ��û�����Ʒ
	 * 
	 * @param tpUserid
	 * @return
	 */
	public List<TranstionProduct> queryTranstionProductsBytpUserid(String tpUserid) {
		return mapper.queryTranstionProductsBytpUserid(tpUserid);		
	}

}
