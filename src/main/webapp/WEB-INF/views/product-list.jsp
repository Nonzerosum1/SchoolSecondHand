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
		response.sendRedirect("getLogin.do");
	}
%>
<script type="application/javascript" src="jQuery/jquery-1.11.1.js"></script>
<link type="text/css" rel="stylesheet" href="jQuery/bootstrap_3.3.0/css/bootstrap.min.css">
<script type="application/javascript" src="jQuery/bootstrap_3.3.0/js/bootstrap.min.js"></script>

<script type="text/javascript">
	function transtion(btn) {
		var tr = btn.parentNode.parentNode;
		var proName = tr.cell(2);
		$.ajax({
			type : "post",
			url  : "insertTranstionProduct.do",
			//data : "username="+$("#username").val()+"&password="+$("#password").val(),
			data : {
				"proName" : $("#proName").text(),
				"proSellprice" : $("#proSellprice").text(),
				"proCostprice" : $("#proCostprice").text(),
				"proCondition" : $("#proCondition").text(),
				"proPicsrc" : $("#proPicsrc").text(),
				"proUserid" : $("#proUserid").text()
			},
			dataType : 'json',
			async:true,
			beforeSend : function () {
				$("#tipMsg").text("正在发布");
				return true;
			},
			success : function (jsonObj) {
				if(jsonObj.success){
					$("#tipMsg").text("已发布");
				}else{
					//$("#tipMsg").text("");
					alert("发布未成功");
				}
			}
		});
	}
	
	/*
	$(function () {
		$("#transtionBtn").click(function () {
			$.ajax({
				type : "post",
				url  : "insertTranstionProduct.do",
				//data : "username="+$("#username").val()+"&password="+$("#password").val(),
				data : {
					"proName" : $("#proName").text(),
					"proSellprice" : $("#proSellprice").text(),
					"proCostprice" : $("#proCostprice").text(),
					"proCondition" : $("#proCondition").text(),
					"proPicsrc" : $("#proPicsrc").text(),
					"proUserid" : $("#proUserid").text()
				},
				dataType : 'json',
				beforeSend : function () {
					$("#tipMsg").text("正在发布");
					return true;
				},
				success : function (jsonObj) {
					if(jsonObj.success){
						$("#tipMsg").text("已发布");
					}else{
						//$("#tipMsg").text("");
						alert("发布未成功");
					}
				}
			});
		});
	});
	*/
</script>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<h3 class="text-left">仓库产品列表</h3>
	</div>
	<div class="row">
	<table class="table table-striped table-hover">
	<thead>
		<tr style="color: #B3B3B3;" class="text-center">
			<td><input type="checkbox"></td>
			<td>商品名称</td>
			<td>商品转卖价</td>
			<td>商品原价</td>
			<td>商品成色</td>
			<td>商品地址</td>
			<td>
				操作 
				<!-- <a class="btn btn-info btn-sm active" href="insert-form.jsp" role="button">添加</a> -->
				<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">
				  添加
				</button>
			</td>
			<td>发布状态</td>
	</tr>
	</thead>
	
	<c:forEach items="${products }" var="product">
		<tr class="text-center">
			<td><input type="checkbox"></td>
			<td id="proName">${product.proName }</td>
			<td id="proSellprice">${product.proSellprice }</td>
			<td id="proCostprice">${product.proCostprice }</td>
			<td id="proCondition">${product.proCondition }</td>
			<td id="proPicsrc">${product.proPicsrc }</td>
			<td id="proUserid" style="display: none;">${product.proUserid }</td>
			<td>
				<a class="btn btn-primary btn-sm active" href="getUpdateForm.do?id=${product.id }" role="button">修改</a>&nbsp;
				<!-- 
				<a class="btn btn-danger btn-sm active" href="insertTranstionProduct.do?proName=${product.proName }
																	&proSellprice=${product.proSellprice }
																	&proCostprice=${product.proCostprice }
																	&proCondition=${product.proCondition }
																	&proPicsrc=${product.proPicsrc }
				 													&proUserid=${product.proUserid }" role="button" id="transtionBtn">发布</a>
				 <a class="btn btn-danger btn-sm active" role="button" id="transtionBtn">发布</a>
				 -->
				 <input class="btn btn-danger btn-sm active" type="button" value="发布" onclick="transtion(this)">
				 
				 <!-- 
				 <button type="button" class="btn btn-info btn-sm" id="transtionBtn">发布</button>
				  -->
			</td>
			<td id="tipMsg" style="font-size: 12px; color: green;">未发布</td>
		</tr>
	</c:forEach>
	</table>
	</div>
</div>
</body>
</html>