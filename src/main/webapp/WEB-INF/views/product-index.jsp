<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ycxy.model.ProUser" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品展示页面</title>
<base href="${pageContext.request.scheme }://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/">
<link href="jQuery/bootstrap_3.3.0/css/bootstrap.min.css" rel="stylesheet">
<script src="jQuery/jquery-1.11.1.js"></script>
<script src="jQuery/bootstrap_3.3.0/js/bootstrap.min.js"></script>

<style>
    @font-face {font-family: 'webfont101';
        src: url('//at.alicdn.com/t/5ru3setwat9be29.eot'); /* IE9*/
        src: url('//at.alicdn.com/t/5ru3setwat9be29.eot?#iefix') format('embedded-opentype'), /* IE6-IE8 */
        url('//at.alicdn.com/t/5ru3setwat9be29.woff') format('woff'), /* chrome、firefox */
        url('//at.alicdn.com/t/5ru3setwat9be29.ttf') format('truetype'), /* chrome、firefox、opera、Safari, Android, iOS 4.2+*/
        url('//at.alicdn.com/t/5ru3setwat9be29.svg#思源黑体-极细') format('svg'); /* iOS 4.1- */
    }
    .webfont101{
        font-family: webfont101;
    }
    h1, h2, h3, h4, h5, h6{
        font-family: normal;
    }
    /*
    nav{
        width:1200px;
        margin: 40px auto;
    }*/
    .navbar #header_nav {
        width:1200px;
        margin: 0 auto;
    }
    /*官方商品展示区*/
	/************************************************************************************************/
	.navbar .pro-3 {
		width:1200px;
        margin: 0 auto;
	}
	.navbar .container-fluid .pro-3 .col-md-3 li a .imgbox img {
		display: block;
		margin: 0 auto;
		position: relative;
		left: 0;
	}
	.navbar .container-fluid .pro-3 .col-md-3 span.name {
		width: 250px;
		margin: 0 auto 18px;
		white-space: nowrap;
		overflow: hidden;
		text-overflow: ellipsis;
		color: #333;
	}
	.navbar .container-fluid .pro-3 .col-md-3 span{
		text-align: center;
		display: block;
		font-size: 14px;
		color: #333;
	}
	.navbar .container-fluid .pro-3 .col-md-3 li {
		list-style-type: none;
		list-style-position: outside;
		padding-top: 25px
	}
	.navbar .container-fluid .pro-3 .col-md-3 li a{
		text-decoration: none;
	}
	.navbar .container-fluid .pro-3 .col-md-3 span i{
		font-style: normal;
		color: #FC6232;
		display: inline-block;
		padding-right: 10px;
		font-size: 14px;
	}
	
	/*****************************************************************************/
	.navbar .container-fluid #section-flow2{
		margin: 50px 0 0;
	}
    #section-banner #category-pop{
        z-index: 2;
        position: absolute;
        width: 200px;
        height: 357px;
        left: 50%;
        margin-left: -595px;
        top:50px;

    }
    #section-banner #category-pop .list-group .list-group-item{
        line-height: 50px;
        font-size: 16px;
        color: #fff;
        background-color: #565442;
    }
    
    #section-banner #category-pop .list-group .list-group-item:hover{
    	background-color: #FFFFFF;
    	color: #3782ff;
    }
    
    .navbar .container-fluid #classify{
    	width: 1200px;
    	margin: 0 auto;
    	padding: 84px 0 0;
    	text-align: center;
    }
    
    .navbar .container-fluid #classify #classify-h1{
    	font-weight: bold;
    	font-size: 36px;
    	color: #504A4D;
    }
    
    .navbar .container-fluid #classify #classify-h2{
    	font-size: 14px;
    	color: #3D3D3D;
    	padding-top: 10px;
    }
    
    .navbar .container-fluid #classify2{
    	width: 1200px;
    	margin: 0 auto;
    	padding: 84px 0 0;
    	text-align: center;
    }
    
    .navbar .container-fluid #classify2 #classify2-h1{
    	font-weight: bold;
    	font-size: 36px;
    	color: #504A4D;
    }
    
    .navbar .container-fluid #classify2 #classify2-h2{
    	font-size: 14px;
    	color: #3D3D3D;
    	padding-top: 10px;
    }
    #subnav-warp #subnav #no-plpr ul li:visited {
    	background-color: #FCDB00;
    }
</style>

</script>
</head>
<body>
<nav class="navbar">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">
                <img src="images/logo.PNG" alt="Brand" width="35" height="35">
            </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="header_nav">
            <ul class="list-inline list-styled center nav navbar-nav">
                <li class="active"><a href="#">首页 <span class="sr-only">(current)</span></a></li>
                <li><a href="#">关于我们</a></li>
                <li><a href="#">企业回收</a></li>
                <li><a href="#">帮助中心</a></li>
                <li><a href="#">网址导航</a></li>
             </ul>


            <ul class="nav navbar-nav navbar-right">
                <li>
                     <a href="#"><i class="glyphicon glyphicon-shopping-cart"></i>&nbsp;购物车</a>
                </li>
                
                <% if (session.getAttribute("username") == null){%>
                	
                	<li><a href="#">免费注册</a></li>
	                <li><a href="getLogin.do">登录</a></li>
                	
                <% }if (session.getAttribute("username") != null){ %>
                	<li><a href="dishomepage.do" target="_blank">欢迎您：<%=session.getAttribute("username")%></a></li>
                <% } %>  
                  
            </ul>

        </div><!-- /.container-fluid -->

        <div class="row" id="section-banner" style="height: 357px;overflow: hidden;background: url('images/beijing1.png') no-repeat center;background-size: cover">
            <div class="container no-plpr">
                <h2 class="webfont101" style="color: #fff;font-size: 38px;padding-top: 20px;"></h2>
            </div>
            <div id="category-pop">
                <div class="list-group">
                    <a href="#" class="list-group-item "><i class="glyphicon glyphicon-phone"></i>&nbsp;手机回收</a>
                    <a href="#" class="list-group-item "><i class="glyphicon glyphicon-inbox"></i>&nbsp;平板电脑回收</a>
                    <a href="#" class="list-group-item "><i class="glyphicon glyphicon-credit-card"></i>&nbsp;&nbsp;笔记本回收</a>
                    <a href="#" class="list-group-item "><i class="glyphicon glyphicon-camera"></i>&nbsp;摄影摄像回收</a>
                    <a href="#" class="list-group-item "><i class="glyphicon glyphicon-dashboard"></i>&nbsp;智能数码回收</a>
                </div>
            </div>

        </div>

		<div class="row" id="classify">
			<div id="classify-h1">什么都能收</div>
			<div id="classify-h2">二手轻松换成钱</div>
		</div>
        
        <div class="row" id="section-flow" style="height: 173px;overflow: hidden;background: url('images/liucheng.PNG') no-repeat center">
        </div>
        

        <div class="subnav-warp">
            <div class="section subnav">
                <div class="container no-plpr">
                    <ul class="list-inline list-styled center nav nav-tabs nav-justified">
                        <li class="active"><a href=" ">手机</a></li>
                        <li class=""><a href=" ">笔记本</a></li>
                        <li class=""><a href=" ">平板电脑</a></li>
                        <li class=""><a href=" ">摄影摄像</a></li>
                        <li class=""><a href=" ">智能数码</a></li>
                     </ul>
                </div>
            </div>
        </div>
		
		<!-- 显示官方商品信息 -->
        <div class="row pro-3" id="displayProductIndex">
        	<c:forEach items="${productIndexs }" var="productIndex">
        		<div class="col-md-3">
	                <li>
	                	<a href="#">
		                    <div class="imgbox">
 		                        <img src="${productIndex.picSrc }">
 		                    </div>
		                    <span class="name">${productIndex.name }</span> 
		                    <span>回收最高价&nbsp;<i>￥${productIndex.maxPrice }</i></span>
 	                    </a>
	                </li>
            	</div>
        	</c:forEach>
        </div>
        
        
        <div class="row" id="section-flow2" style="height: 224px;overflow: hidden;background: url('images/jinamianli.png') no-repeat center">
        
        </div>

		<div class="row" id="classify2">
			<div id="classify2-h1">什么都能买</div>
			<div id="classify2-h2">买啥都省一半钱</div>
		</div>
		
		<div class="subnav-warp">
            <div class="section subnav">
                <div class="container no-plpr">
                    <ul class="list-inline list-styled center nav nav-tabs nav-justified">
                        <li class="active"><a href=" ">生活用品</a></li>
                        <li class=""><a href=" ">学习用品</a></li>
                        <li class=""><a href=" ">运动健身</a></li>
                        <li class=""><a href=" ">球鞋配饰</a></li>
                        <li class=""><a href=" ">珠宝收藏</a></li>
                     </ul>
                </div>
            </div>
        </div>
        
		<!-- 用户展示商品区 -->
		<div class="row pro-3" id="displayUserProductIndex">
        	<c:forEach items="${transtionProducts }" var="transtionProduct">
        		<div class="col-md-3">
	                <li>
	                	<a href="getPurchase.do?id=${transtionProduct.id} }">
		                    <div class="imgbox">
 		                        <img src="${transtionProduct.tpPicsrc }" width="168px" height="168px">
 		                    </div>
		                    <span class="name">${transtionProduct.tpName }</span> 
		                    <span>回收最高价&nbsp;<i>￥${transtionProduct.tpCostprice }</i></span>
 	                    </a>
	                </li>
            	</div>
        	</c:forEach>
        </div>
    </div>
</nav>
</body>
</html>