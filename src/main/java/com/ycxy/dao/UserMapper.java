package com.ycxy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ycxy.model.ProUser;
import com.ycxy.model.ProductIndex;

public interface UserMapper {

	/*
	 * 查询数据库验证用户登录
	 */
	ProUser queryProUser(@Param("trueName") String trueName,@Param("password") String password);
	
	
}
