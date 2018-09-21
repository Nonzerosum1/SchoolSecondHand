package com.ycxy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ycxy.model.Product;
import com.ycxy.model.ProductIndex;
import com.ycxy.model.TranstionProduct;
import com.ycxy.service.ProductService;
import com.ycxy.service.TranstionProductService;

@Controller
public class ProductC {

	@Autowired
	private ProductService service;

	@Autowired
	private TranstionProductService service2;

	/*
	 * 跳转至用户管理界面
	 */
	@RequestMapping("/dishomepage.do")
	public ModelAndView DisHomepage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/index");
		return mv;
	}

	/*
	 * 显示用户管理界面的首页内容
	 */
	@RequestMapping("/dishomepageContent.do")
	public ModelAndView DisHomepageContent() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/index-content");
		return mv;
	}

	/*
	 * 显示用户要发布的商品列表
	 */
	@RequestMapping("/queryProducts.do")
	public ModelAndView queryProducts() {
		List<Product> products = service.queryProducts();
		System.out.println("products="+products);
		ModelAndView mv = new ModelAndView();
		mv.addObject("products", products);
		mv.setViewName("/product-list");
		return mv;
	}

	/*
	 * 跳转至商品展示界面（主界面）
	 * 取得用户的所有商品展示到主界面（主界面“什么都能买”下面）
	 */
	@RequestMapping("/getProductIndex.do")
	public ModelAndView getProductIndex() {
		List<ProductIndex> productIndexs = service.queryProductIndexs();
		List<TranstionProduct> transtionProducts = service2.queryTranstionProducts();
		System.out.println("productIndexs="+productIndexs);
		System.out.println("transtionProducts="+transtionProducts);
		ModelAndView mv = new ModelAndView();
		mv.addObject("productIndexs", productIndexs);
		mv.addObject("transtionProducts",transtionProducts);
		mv.setViewName("/product-index");
		return mv;
	}

	/**
	 * 取得用户的所有商品展示到主界面（主界面“什么都能买”下面）
	 * 
	 * @return
	 
	@RequestMapping("/getProductIndex.do")
	public ModelAndView getProductUserPage() {
		List<TranstionProduct> transtionProducts = service2.queryTranstionProducts();
		ModelAndView mv = new ModelAndView();
		mv.addObject("transtionProducts", transtionProducts);
		mv.setViewName("/product-index");
		return mv;
	}
	*/
	/**
	 * 根据商品id，得到商品详情页
	 * 
	 * @param tpUserid
	 * @return
	 */
	@RequestMapping("/getPurchase.do")
	public ModelAndView getProductDetailPage1(String id) {
		TranstionProduct productsByid = service2.queryTranstionProductsByid(id);
		//System.out.println("productsByid="+productsByid);
		ModelAndView mv = new ModelAndView();
		mv.addObject("productsByid", productsByid);
		mv.setViewName("/purchase");
		return mv;
	}

	/**
	 * 根据用户id，取得属于该用户的商品
	 * 
	 * @param tpUserid
	 * @return
	 */
	@RequestMapping("/getUserListProducts.do")
	public ModelAndView getUserListProducts(@RequestParam(name = "tpuserid") String tpuserid) {
		System.out.println("tpUserid="+tpuserid);
		List<TranstionProduct> productsBytpUserids = service2.queryTranstionProductsBytpUserid(tpuserid);
		System.out.println("productsBytpUserids="+productsBytpUserids);
		ModelAndView mv = new ModelAndView();
		mv.addObject("productsBytpUserids", productsBytpUserids);
		mv.setViewName("/repository-products");
		return mv;
	}

}
