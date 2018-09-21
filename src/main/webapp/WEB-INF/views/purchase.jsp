<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="application/javascript" src="jQuery/jquery-1.11.1.js"></script>
<link type="text/css" rel="stylesheet"
	href="jQuery/bootstrap_3.3.0/css/bootstrap.min.css">
<script type="application/javascript"
	src="jQuery/bootstrap_3.3.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="a/css/detail-min.css" type="text/css"></link>
<link rel="stylesheet" href="a/css/global-min.css" type="text/css"></link>
<title>购物界面</title>

<style type="text/css">
	.idle-header-wrap .idle-header .idle-logo a img{
 		margin-top: 10px;
		padding-bottom: 10px;
 	}
 	
 	#content #page #idle-detail .grid-s730m0 .col-main .main-wrap .property .buy-now a .btn{
 		display: block;
 		height: 45px;
 		margin: 0 0 10px;
 		overflow: hidden;
 		text-indent: -9999px;
 		width: 202px;
 		background: url(//img.alicdn.com/tps/i3/T1WKhTFjXXXXaxWDH8-202-267.png) no-repeat;
 	}
</style>
</head>
<body>
	<!-- 表头*************************************************************************** -->
	<!-- S GLOBAL HTML -->
	<div id="J_SiteNav" class="site-nav">
		<div id="J_SiteNavBd" class="site-nav-bd">
			<ul id="J_SiteNavBdL" class="site-nav-bd-l"></ul>
			<ul id="J_SiteNavBdR" class="site-nav-bd-r"></ul>
		</div>
	</div>
	<!-- E GLOBAL HTML -->


	<div class="idle-header-wrap">
		<div class="idle-header" id="J_IdleHeader">
			<div class="idle-logo">
				<a href="#" target="_top"><img src="images/img/logodetail.jpg"
					alt="二手校园交易" width="50" height="50" /></a>
			</div>

			<div class="idle-nav">
				<div class="idle-menu">
					<ul>
						<li class="m-home"><a href="#">首页</a></li>
						<li class="m-app"><a href="#">手机二手</a></li>
						<li><a href="#">二手车估价</a></li>
						<li class="m-auction"><a href="#">降降降</a></li>
					</ul>
				</div>

				<div class="idle-manage">
					<span class="idle-manage-sp">|</span>
					<ul>
						<li><a class="pub-overlay-btn">发布闲置</a></li>
						<li id="J_IdleLi" class="my-idle-li"><a class="my-idle-link"
							id="J_IdleLink" href="#">我的闲置<i class="iconfont icon-down">&#xe601;</i><i
								class="iconfont icon-up">&#xe600;</i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>


	<!-- **购买大盒子开死**************************************************************************************************************************** -->
	<div id="content">
		<div id="page">
			<div id="idle-detail" data-token="e1ebbb3011a5e">


				<!-- 购买头部界面开始********************************************************************************************* -->
				<div class="top-nav clearfix">

					<div class="others-wrap">
						<ul class="others clearfix">

							<li id="J_Browse">
								<h5>宝贝浏览次数</h5> 
							</li>
							<li><h5>最近编辑</h5> <span></span></li>
							<li class="tn-item-from"><a target="_blank" href="#">
									<h5>来自</h5>
								    <p></p>
							</a></li>
						</ul>
					</div>

					<div class="seller-info" id="J_SellerInfo">
						<div class="simple">

							<div class="wangwang">
								<a href="dishomepage.do" class="hCard fn" target="_blank">${productsByid.proUser.trueName }</a>
							</div>
							<div class="user-icons">
								<span>${productsByid.proUser.phone }</span>
							</div>
						</div>
					</div>


					<div>
						<a href="#" class="inform">举报该宝贝</a>
					</div>

				</div>
				<!-- 购买界面头部结束*************************************************************************************************** -->

				<!-- 购买界面开始******************************************************************************************************* -->
				<div class="layout grid-s730m0">

					<div class="col-main">
						<div class="main-wrap">
							<div class="property" id="J_Property">
								<h1 class="title">${productsByid.tpName }</h1>
								<ul class="price-info">
									<li class="price-block"><span class="para">转&nbsp;&nbsp;卖&nbsp;&nbsp;价：</span>
										<span class="price big"><b>&yen;</b><em>${productsByid.tpSellprice }</em></span></li>
									<li class="price-block"><span class="para">原&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价：</span>
										<span class=""><b>&yen;</b>${productsByid.tpCostprice }</span></li>
								</ul>
								<ul class="idle-info" data-spm="2007.1000338.3">
									<li><span class="para">成&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;色：</span> <em>${productsByid.tpCondition }</em></li>
									<li><span class="para">所&nbsp;&nbsp;在&nbsp;地：</span>
										<em>${productsByid.proUser.faculty }</em></li>
									<li class="contact"><span class="para">联系方式：</span>
										<span>${productsByid.proUser.phone }</span></li>

									<li class="trade-terms" id="J_TradeWrap"><span
										class="para">交易方式：</span></li>
								</ul>
								<div class="buy-now">
									<a id="J_BuyNow" class="btn" href="#">立刻购买</a>
								</div>

								<div class="do-more clearfix">
									<div class="share" id="J_Share">
										<a class="btn" href="#">分享 </a>
									</div>
									<div class="favorite">
										<a class="btn" id="J_AddFav" href="#">赞 </a>
									</div>
								</div>

								<div class="guarantee_new">
									<div class="dbjy">
										<span class="tit"></span> <strong class="desc">由支付宝先行保管,验货OK再付款到卖家账户。</strong>
									</div>
									<div class="smrz">
										<span class="tit"></span> <strong class="desc">经支付宝核实会员身份和银行账户信息,真实可靠。</strong>
									</div>
								</div>

							</div>

							<!-- ******************************************************************************************************************* -->
							<div id="J_OtherIdles" class="idle-box other-idles">
								<h4>
									卖家的其它闲置<span class="total"></span>
								</h4>
								<a href="#" target="_blank" class="more">更多</a>
								<div class="entity loading"></div>
							</div>
						</div>
					</div>
					<div class="col-sub">
						<div id="J_Slider" class="slider">
							<ul class="album">
								<li class="item sh-pic"><img class="big-img"
									src="${productsByid.tpPicsrc }"></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- ***************************************************************************************************************************************** -->
			</div>
		</div>
	</div>

</body>
</html>