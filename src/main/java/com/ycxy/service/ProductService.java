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
	 * ����û�Ҫ������������Ʒ
	 * 
	 */
	public List<Product> queryProducts(String proUserid) {
		return mapper.queryProducts(proUserid);
	}

	/*
	 * ���������չʾ��������Ʒ
	 */
	public List<ProductIndex> queryProductIndexs() {
		return mapper.queryProductIndexs();
	}

	/**
	 * ������Ʒ����״̬��1 δ���� ��2 �ѷ���
	 * 
	 * @param tranStateid
	 * @param id
	 * @return
	 */
	public int updataProduct(String tranStateid, String id) {
		return mapper.updataProduct(tranStateid, id);
	}
}
