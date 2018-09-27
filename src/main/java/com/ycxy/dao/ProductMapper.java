package com.ycxy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ycxy.model.Product;
import com.ycxy.model.ProductIndex;
import com.ycxy.model.TranstionProduct;

public interface ProductMapper {

	/*
	 * 获得用户要发布的所有商品
	 * 
	 */
	List<Product> queryProducts(@Param("proUserid") String proUserid);

	/*
	 * 获得主界面展示的所有商品
	 */
	List<ProductIndex> queryProductIndexs();

	/**
	 * 更新商品发布状态：1 未发布 ，2 已发布
	 *
	 * @param tranStateid
	 * @return
	 */
	int updataProduct(@Param("tranStateid") String tranStateid, @Param("id") String id);

	/***************************************************************************************************/
	// 插入物品
	int insertProduct(Product product);

	// 删除物品
	int deleteProduct(String id);

	// 通过id查询物品
	TranstionProduct queryProduct(String id);

	// 更新物品
	int updateProduct(TranstionProduct product);
}
