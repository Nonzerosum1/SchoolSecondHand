<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品列表</title>
<base href="${pageContext.request.scheme }://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/">

<%
	/*
	quan xian kong zhi
	*/
	if(session.getAttribute("username")==null){
		response.sendRedirect("login.do");
	}
%>
<script type="application/javascript" src="jQuery/jquery-1.11.1.js"></script>
<link type="text/css" rel="stylesheet" href="jQuery/bootstrap_3.3.0/css/bootstrap.min.css">
<script type="application/javascript" src="jQuery/bootstrap_3.3.0/js/bootstrap.min.js"></script>

</script>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<h3 class="text-left">产品列表</h3>
	</div>
	<div class="row">
	<table class="table table-striped table-hover">
	<thead>
		<tr style="color: #B3B3B3;" class="text-center">
			<td>商品名称</td>
			<td>商品价格</td>
			<td>市场价</td>
			<td>商品类型</td>
			<td>商品描述</td>
			<td>
				操作 
				<!-- <a class="btn btn-info btn-sm active" href="insert-form.jsp" role="button">添加</a> -->
				<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">
				  添加
				</button>
			</td>
	</tr>
	</thead>
	
	<c:forEach items="${products }" var="product">
		<tr class="text-center">
			<td>${product.proName }</td>
			<td>${product.price }</td>
			<td>${product.marketPrice }</td>
			<td>${product.proClass }</td>
			<td>${product.proDetail }</td>
			<td>
				<a class="btn btn-primary btn-sm active" href="getUpdateForm.do?id=${product.id }" role="button">修改</a>&nbsp;
				<a class="btn btn-danger btn-sm active" href="deleteProduct.do?id=${product.id }" role="button">删除</a>
			</td>
		</tr>
	</c:forEach>
	</table>
	</div>
</div>
</body>
</html>