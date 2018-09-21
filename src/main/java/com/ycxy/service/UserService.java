package com.ycxy.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.ycxy.dao.UserMapper;
import com.ycxy.model.ProUser;
import com.ycxy.model.ProductIndex;

@Service
public class UserService {

	@Autowired
	private UserMapper mapper;

	/*
	 * 查询数据库验证用户登录
	 */
	public ProUser queryProUser(String trueName, String password) {
		return mapper.queryProUser(trueName, password);
	}
	
	
}
