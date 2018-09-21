<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>
	<base href="${pageContext.request.scheme }://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/">
	<!--font-awesome 核心我CSS 文件-->
	<link href="//cdn.bootcss.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
	<!-- 在bootstrap.min.js 之前引入 -->
	<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
 	<script type="application/javascript" src="jQuery/jquery-1.11.1.js"></script>
    <link type="text/css" rel="stylesheet" href="jQuery/bootstrap_3.3.0/css/bootstrap.min.css">
    <script type="application/javascript" src="jQuery/bootstrap_3.3.0/js/bootstrap.min.js"></script>
    
	<style type="text/css">
		*{
			box-sizing: border-box;
		}
		body{
			font-family: -apple-system,BlinkMacSystemFont,
			"Segoe UI",Helvetica,Arial,sans-serif,"Apple Color Emoji",
			"Segoe UI Emoji","Segoe UI Symbol";
			font-size: 14px;
			line-height: 1.5;
			color: #24292e;
			margin: 0;
			padding: 0;
			background-color: #f9f9f9;
		}
		
		.container{
			width: 308px;
			margin: 0 auto;
		}
		
		.container .form-horizontal .form-hrader{
			margin-bottom: 15px;
			color: #333;
			text-align: center;
			text-shadow: none;
			background: transparent;
			border: 0;
		}
		/*
		.container .form-horizontal #flash-container .flash{
			padding: 15px 20px;
			margin: 0 auto;
			margin-bottom: 10px;
			font-size: 13px;
			border-style: solid;
			border-width: 1px;
			border-radius: 5px;
			position: relative;
		}
		.container .form-horizontal #flash-container .flash-error{
			color: #86181d;
			background-color: #ffdce0;
			border-color: rbga(27,31,35,0.15);
		}
		*/
		.container .form-horizontal .form-body{
			border-top: 1px solid #d8dee2;
			border-radius: 5px;
			padding: 20px;
			font-size: 14px;
			background-color: #fff;
			border: 1px solid #d8dee2;
			
		}
		.container .form-horizontal .mt-3{
			margin-top: 16px;
		}
		.container .form-horizontal .form-body label{
			display: block;
			margin-bottom: 7px;
			font-weight: 600;
		}
		.container .form-horizontal .form-body .form-control{
			min-height: 34px;
			padding: 6px 8px;
			font-size: 14px;
			line-height: 20px;
			color: #24292e;
			vertical-align: middle;
			background-color: #fff;
			background-repeat: no-repeat;
			background-position: right 8px center;
			border: 1px solid #d1d5da;
			border-radius: 3px;
			outline: none;
			box-shadow: inset 0 1px 2px rgba(27,31,35,0.075);
		}
		.container .form-horizontal .form-body .input-block{
			margin-top: 5px;
			margin-bottom: 15px;
			display: block;
			width: 100%
		}
		.container .form-horizontal .form-body .btn{
			margin-top: 20px;
			display: block;
			width: 100%;
			text-align: center;
			position: relative;
			padding: 6px 12px;
			font-size: 14px;
			font-weight: 600;
			line-height: 20px;
			border-radius: 0.25em;
			
		}
		.container .form-horizontal .form-body .btn-primary{
			color: #fff;
			background-color: #28a745;
			background-image: linear-gradient(-180deg,#34d058 0%,#28a745 90%);
		}
		.container .form-horizontal .create-account{
			padding: 15px 20px;
			text-align: center;
			border: 1px solid #d8dee2;
			border-radius: 5px;
		}
		.container .form-horizontal p a{
			color: #0366d6;
			text-decoration: none;
			background-color: transparent;
		}
	</style>
	
	<script type="text/javascript">
	function login() {
		//获取用户名和密码
		var trueName = document.getElementById("trueName").value;
		var password = document.getElementById("password").value;
		//创建ajax核心对象
		var xhr = null;
		if(window.XMLHttpRequest){
			xhr = new XMLHttpRequest();
		}else{
			xhr = new ActiveXObject("Microsoft.XMLHTTP");
		}
		//注册回调函数
		xhr.onreadystatechange = function() {
			if(xhr.readyState == 4){
				if(xhr.status == 200){
					//接收服务器响应回来的数据
					//假设服务器响应回来JSON格式的数据
					//接受json
					var jsonString = xhr.responseText;
					eval("var jsonObj = " + jsonString);
					var tipMsg = document.getElementById("container-error");
					if(jsonObj.success){
							//跳转页面
						
						window.location.href = "getProductIndex.do";
						//tipMsg.innerHTML = "用户名或密码可用";
					}else{
						tipMsg.innerHTML = "用户名不存在或者密码错误，请重新登录";
					}
				}else{
					alert(xhr.status)
				}
			}
		}
		//开启通道
		xhr.open("POST","login.do",true);
		//模拟表单提交数据
		xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=UTF-8");
		//发送请求
		xhr.send("trueName="+trueName+"&password="+password);
	}
		
	</script>
</head>
<body>
	<div class="container">
		<div class="form row">
			<div class="form-horizontal">
				<div class="form-hrader">
					<h3 class="form-title">登录</h3>	
				</div>
				
				<div id="flash-container">
					<div class="flash flash-full flash-error">
						<div id="container-error">
							
						</div>
					</div>
				</div>
				
				<div class="form-body mt-3">
					<label>用户名</label>
					<input type="text" class="form-control input-block" id="trueName" 
					 autofocus="autofocus" maxlength="20"/>
					 
					<span id="yanz"></span>
					<label>密码</label>
					<input type="password" class="form-control form-control input-block"  id="password" 
					maxlength="8"/>
					
					<input type="submit" class="btn btn-primary btn-block" id="loginBtn" 
					onclick="login();" value="登录 "/>
					<span id="tipMsg" style="font-size: 12px; color: red;"></span>   
				</div>	
					
				<p class="create-account mt-3">
					New to soft?
					<a href="register.do" id="register_btn" class="">创建账号</a>
				</p>
			
		
			</div>
		</div>	
	</div>
</body>
</html>