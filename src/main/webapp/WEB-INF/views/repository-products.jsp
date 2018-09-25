<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>仓库商品</title>
<base href="${pageContext.request.scheme }://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/">

<script type="application/javascript" src="jQuery/jquery-1.11.1.js"></script>
<link type="text/css" rel="stylesheet" href="jQuery/bootstrap_3.3.0/css/bootstrap.min.css">
<script type="application/javascript" src="jQuery/bootstrap_3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<h3 class="text-left">出售中产品列表</h3>
	</div>
	<div class="row">
	<table class="table table-striped table-hover">
	<thead>
		<tr style="color: #B3B3B3;" class="text-center">
			<td>商品名称</td>
			<td>转卖价</td>
			<td>原价</td>
			<td>成色</td>
			<td>商品图片</td>
			
			<td>
				操作 
				<!-- <a class="btn btn-info btn-sm active" href="insert-form.jsp" role="button">添加</a> -->
				<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">
				  添加
				</button>
			</td>
	</tr>
	</thead>
	
	<c:forEach items="${productsBytpUserids }" var="productsBytpUserid">
		<tr class="text-center">
			<td>${productsBytpUserid.tpName }</td>
			<td>${productsBytpUserid.tpSellprice }</td>
			<td>${productsBytpUserid.tpCostprice }</td>
			<td>${productsBytpUserid.tpCondition }</td>
			<td>${productsBytpUserid.tpPicsrc }</td>
			<td>
				<a class="btn btn-primary btn-sm active" href="getUpdateForm.do?id=${productsBytpUserid.id }" role="button">修改</a>&nbsp;
				<a class="btn btn-danger btn-sm active" href="deleteProduct.do?id=${productsBytpUserid.id }" role="button">删除</a>
			</td>
		</tr>
	</c:forEach>
	</table>
	</div>
</div>
</body>
</html>