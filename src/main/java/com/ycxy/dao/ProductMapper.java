package com.ycxy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ycxy.model.Product;
import com.ycxy.model.ProductIndex;

public interface ProductMapper {

	/*
	 * ����û�Ҫ������������Ʒ
	 * 
	 */
	List<Product> queryProducts(@Param("proUserid") String proUserid);

	/*
	 * ���������չʾ��������Ʒ
	 */
	List<ProductIndex> queryProductIndexs();

	/**
	 * ������Ʒ����״̬��1 δ���� ��2 �ѷ���
	 *
	 * @param tranStateid
	 * @return
	 */
	int updataProduct(@Param("tranStateid") String tranStateid, @Param("id") String id);
}
