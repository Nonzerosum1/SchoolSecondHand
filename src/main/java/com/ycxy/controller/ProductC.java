package com.ycxy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ycxy.model.Product;
import com.ycxy.model.ProductIndex;
import com.ycxy.service.ProductService;

@Controller
public class ProductC {

	@Autowired
	private ProductService service;
	
	/*
	 * ��ת���û��������
	 */
	@RequestMapping("/dishomepage.do")
	public ModelAndView DisHomepage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/index");
		return mv;
	}
	
	/*
	 * ��ʾ�û�����������ҳ����
	 */
	@RequestMapping("/dishomepageContent.do")
	public ModelAndView DisHomepageContent() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/index-content");
		return mv;
	}
	
	/*
	 * ��ʾ�û�Ҫ��������Ʒ�б�
	 */
	@RequestMapping("/queryProducts.do")
	public ModelAndView queryProducts() {
		List<Product> products = service.queryProducts();
		ModelAndView mv = new ModelAndView();
		mv.addObject("products",products);
		mv.setViewName("/product-list");
		return mv;
	}
	
	/*
	 * ��ת����Ʒչʾ���棨�����棩
	 */
	@RequestMapping("/getProductIndex.do")
	public ModelAndView getProductIndex() {
		List<ProductIndex> productIndexs = service.queryProductIndexs();
		System.out.println(productIndexs);
		ModelAndView mv = new ModelAndView();
		mv.addObject("productIndexs",productIndexs);
		mv.setViewName("/product-index");
		return mv;
	}
	
}
