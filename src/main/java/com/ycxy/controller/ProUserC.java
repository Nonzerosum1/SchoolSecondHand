package com.ycxy.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ycxy.model.ProUser;
import com.ycxy.model.ProductIndex;
import com.ycxy.service.UserService;

@Controller
@CrossOrigin
public class ProUserC {

	@Autowired
	private UserService service;

	/*
	 * 跳转至登录页面 用户名 Tom ，密码 123456
	 */
	@RequestMapping("/getLogin.do")
	public ModelAndView getLogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/login");
		return mv;
	}

	/*
	 * 查询数据库验证用户登录
	 */
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public void login(@RequestParam(name = "trueName") String trueName,
			@RequestParam(name = "password") String password,HttpServletRequest req,HttpServletResponse resp)
			throws IOException {
		System.out.println("trueName:"+trueName+" "+"password:"+password);
		ProUser proUser = service.queryProUser(trueName, password);
		System.out.println(proUser);
		StringBuffer json = new StringBuffer();
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out = resp.getWriter();
		Map<String, Object> map = new HashMap<>();
		if (proUser != null) {
			
			HttpSession session = req.getSession();
			session.setAttribute("username", proUser.getTrueName());
			String session_id = session.getId();
			
			/*
			 * 将sessionid保存到cookie中，这样就不需要每次进入页面时都要登录
			 */
			Cookie cookie = new Cookie("JSESSIONID", session_id);
			//设置cookie保存时间
			cookie.setMaxAge(30*60);
			//将cookie放入响应中
			resp.addCookie(cookie);
			System.out.println("ssessionId:"+session.getId());
			System.out.println("session="+session.getAttribute("username"));
			//map.put("success", true);
			//map.put("trueName", proUser.getTrueName());
			json.append("{\"success\" : true}");
		} else {
			json.append("{\"success\" : false}");
			//map.put("success", false);
		}
		//发送json格式数据到前台页面
		out.print(json);
		//out.print(map);
 	}
	
	

}
