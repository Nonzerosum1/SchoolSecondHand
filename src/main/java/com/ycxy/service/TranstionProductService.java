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
	 * �����û�idȡ���������ڸ��û�����Ʒ
	 * 
	 * @param tpUserid
	 * @return
	 */
	public List<TranstionProduct> queryTranstionProductsBytpUserid(String tpUserid) {
		return mapper.queryTranstionProductsBytpUserid(tpUserid);
	}

}
