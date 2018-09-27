package com.ycxy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ycxy.model.Product;
import com.ycxy.model.ProductIndex;
import com.ycxy.model.TranstionProduct;

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

	/***************************************************************************************************/
	// ������Ʒ
	int insertProduct(Product product);

	// ɾ����Ʒ
	int deleteProduct(String id);

	// ͨ��id��ѯ��Ʒ
	TranstionProduct queryProduct(String id);

	// ������Ʒ
	int updateProduct(TranstionProduct product);
}
