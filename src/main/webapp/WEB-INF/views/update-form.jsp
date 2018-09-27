<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="a/css/index1.css" type="text/css"></link>    
<script type="text/javascript" src="a/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
<form action="updateProduct.do" method="post">
<table>
	<tr>
		<td>商品名称</td>
		<td><input type="text" name="tpName" value="${transtionproduct.tpName}"></td>
	</tr>
	<tr>
		<td>商品价格</td>
		<td><input type="text" name="tpSellprice" value="${transtionproduct.tpSellprice}"></td>
	</tr>
	<tr>
		<td>市场价</td>
		<td><input type="text" name="tpCostprice" value="${transtionproduct.tpCostprice }"></td>
	</tr>
	<tr>
		<td>新旧度</td>
		<td><input type="text" name="tpCondition" value="${transtionproduct.tpCondition }"></td>
	</tr>
	
		
		<td><input type="text" name="tpPicsrc"  hidden="hidden" value="${transtionproduct.tpPicsrc}"></td>
	
	
		<td><input type="text" name="tpUserid"  hidden="hidden" value="1"></td>
	
		<td><input type="text" name="proUser"  hidden="hidden" value="null"></td>
	
	<tr>
		<td><input type="submit" value="修改信息"></td>
		<td><input type="text" name="id" value="${transtionproduct.id}" hidden="hidden"></td>
	</tr>
</table>
</form>
</body>
</html>