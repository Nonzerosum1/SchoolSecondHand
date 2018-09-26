<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台首页</title>
<%
	/*
	quan xian kong zhi
	*/
	if(session.getAttribute("username")==null){
		response.sendRedirect("getLogin.do");
	}
%>
<script type="application/javascript" src="jQuery/jquery-1.11.1.js"></script>
<link type="text/css" rel="stylesheet" href="jQuery/bootstrap_3.3.0/css/bootstrap.min.css">
<script type="application/javascript" src="jQuery/bootstrap_3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
<script type="text/javascript">
	$(function() {
		var height=document.documentElement.clientHeight;
		document.getElementById('iframe-page-content').style.height=height+'px';		
	});
	function menuClick(menuUrl) {
		$("#iframe-page-content").attr('src',menuUrl);
	};
</script>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-2">
            <ul id="main-nav" class="nav nav-tabs nav-stacked" style="">
                <li class="active">
                    <a href="#">
                        <i class="glyphicon glyphicon-th-large"></i>
                       	 首页
                    </a>
                </li>
                <li>
                    <a href="#proManage" class="nav-header collapsed" data-toggle="collapse">
                        <i class="glyphicon glyphicon-cog"></i>
                                                            宝贝管理
                        <span class="pull-right glyphicon glyphicon-chevron-down"></span>
                    </a>
                    <ul id="proManage" class="nav nav-list collapse secondmenu" style="height: 0px;">
                        <li><a href="#" onclick="menuClick('${pageContext.request.contextPath}/queryProducts.do?proUserid=<%=session.getAttribute("userId")%>')"><i class="glyphicon glyphicon-th-list"></i>仓库中的宝贝</a></li>
                        <li><a href="#" onclick="menuClick('${pageContext.request.contextPath}/getUserListProducts.do?tpuserid=<%=session.getAttribute("userId")%>')"><i class="glyphicon glyphicon-user"></i>出售中的宝贝</a></li>
                        <li><a href="#"><i class="glyphicon glyphicon-asterisk"></i>体验中心</a></li>
                        
                    </ul>
                </li>
                <li>
                    <a href="#logisticManage" class="nav-header collapsed" data-toggle="collapse">
                        <i class="glyphicon glyphicon-credit-card"></i>
                                                            物料管理
                        <span class="pull-right glyphicon glyphicon-chevron-down"></span>
                    </a>
                    <ul id="logisticManage" class="nav nav-list collapse secondmenu" style="height: 0px;">
                    	<li><a href="#"><i class="glyphicon glyphicon-edit"></i>发货</a></li>
                        <li><a href="#"><i class="glyphicon glyphicon-eye-open"></i>物流工具</a></li>
                        <li><a href="#"><i class="glyphicon glyphicon-edit"></i>物流服务</a></li>
                        <li><a href="#"><i class="glyphicon glyphicon-eye-open"></i>我要寄快递</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#transactionManage" class="nav-header collapsed" data-toggle="collapse">
                        <i class="glyphicon glyphicon-globe"></i>
                       	 交易管理
                        <span class="pull-right glyphicon glyphicon-chevron-down"></span>
                    </a>
                    <ul id="transactionManage" class="nav nav-list collapse secondmenu" style="height: 0px;">
                    	<li><a href="#"><i class="glyphicon glyphicon-edit"></i>已卖出的宝贝</a></li>
                        <li><a href="#"><i class="glyphicon glyphicon-eye-open"></i>评价管理</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#customerService" class="nav-header collapsed" data-toggle="collapse">
                        <i class="glyphicon glyphicon-calendar"></i>
                                                            客户服务
                        <span class="pull-right glyphicon glyphicon-chevron-down"></span>
                    </a>
                    <ul id="customerService" class="nav nav-list collapse secondmenu" style="height: 0px;">
                    	<li><a href="#"><i class="glyphicon glyphicon-edit"></i>退款管理</a></li>
                        <li><a href="#"><i class="glyphicon glyphicon-eye-open"></i>举报管理</a></li>
                        <li><a href="#"><i class="glyphicon glyphicon-edit"></i>违规记录</a></li>
                        <li><a href="#"><i class="glyphicon glyphicon-eye-open"></i>基金还款</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#shopManage" class="nav-header collapsed" data-toggle="collapse">
                        <i class="glyphicon glyphicon-fire"></i>
                       	 店铺管理
                       	<span class="pull-right glyphicon glyphicon-chevron-down"></span>
                    </a>
                    <ul id="shopManage" class="nav nav-list collapse secondmenu" style="height: 0px;">
                    	<li><a href="#"><i class="glyphicon glyphicon-eye-open"></i>我要开店</a></li>
                    </ul>
                </li>
                
            </ul>
        </div>
        <div class="col-md-10">
            <!-- 内容展示页 -->
			<div>
			<iframe id="iframe-page-content" src="${pageContext.request.contextPath}/dishomepageContent.do" width="100%"  frameborder="no" border="0" marginwidth="0"
			marginheight=" 0" scrolling="no" allowtransparency="yes"></iframe>
			</div>
        </div>
    </div>
</div>
</body>
</html>