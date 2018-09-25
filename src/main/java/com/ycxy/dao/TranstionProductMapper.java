package com.ycxy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ycxy.model.ProUser;
import com.ycxy.model.Product;
import com.ycxy.model.TranstionProduct;

public interface TranstionProductMapper {

	/**
	 * 根据商品id取得该商品
	 * 
	 * @param tpUserid
	 * @return
	 */
	TranstionProduct queryTranstionProductsByid(String id);

	/**
	 * 取得所有商品
	 * 
	 * @return
	 */
	List<TranstionProduct> queryTranstionProducts();

	/**
	 * 根据用户id取得所有属于该用户的商品
	 * 
	 * @param tpUserid
	 * @return
	 */
	List<TranstionProduct> queryTranstionProductsBytpUserid(@Param("tpuserid") String tpuserid);

	/**
	 * 根据id取得该用户信息
	 * 
	 * @param id
	 * @return
	 */
	ProUser queryProUser(String id);

	/**
	 * 将仓库中的商品发布到商品展示页面
	 * 
	 * @return
	 */
	int insertTranstionProduct(@Param("proName") String proName, @Param("proSellprice") String proSellprice,
			@Param("proCostprice") String proCostprice, @Param("proCondition") String proCondition,
			@Param("proPicsrc") String proPicsrc, @Param("proUserid") String proUserid);
}
