<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="a/css/index1.css" type="text/css"></link>
<script type="text/javascript" src="a/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
	<form action="insertProduct.do" method="post">
		<table>
			<tr>
				<td>商品名称</td>
				<td><input type="text" name="proSellprice"></td>
			</tr>
				<tr>
				<td>商品转卖价</td>
				<td><input type="text" name="proName"></td>
			</tr>
			<tr>
				<td>商品原价</td>
				<td><input type="text" name="proCostprice"></td>
			</tr>
			<tr>
				<td>商品成色</td>
				<td><input type="text" name="proCondition"></td>
			</tr>
            
                <td><input type="text" name="proPicsrc" hidden="hidden"
					value="images/images2/imagerongyao10.jpg"></td>
				<td><input type="text" name="proUserid" hidden="hidden"
					value="1"></td>
				<td><input type="text" name="tranStaeid" hidden="hidden"
					value="2"></td>
			<tr>
				
				<td><input type="submit" value="发布"></td>
			</tr>
		</table>
	</form>
</body>
</html>