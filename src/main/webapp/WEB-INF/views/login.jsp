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
		body{background-size:cover;font-size: 16px;}
		.form{background: rgba(255,255,255,0.2);width:400px;margin:100px auto;}
		#login_form{display: block;}
		.fa{display: inline-block;top: 27px;left: 6px;position: relative;color: #ccc;}
		input[type="text"],input[type="password"]{padding-left:26px;}
		.checkbox{padding-left:21px;}
		h3{
			margin-left: 82px;
		}
	</style>
	
	<script type="text/javascript">
		/*	
		function login() {
			$.ajax({
				type : "get",
				url  : "login.do",
				//data : "username="+$("#username").val()+"&password="+$("#password").val(),
				data : {
					"trueName" : $("#trueName").val(),
					"password" : $("#password").val()
				},
				xhrFields:{
					withCredentials:true
				},
				beforeSend : function (XMLHttpRequest) {
					$("#tipMsg").text("正在身份认证请稍后...");
					return true;
				},
				
				success : function (data, textStatus) {
					alert(data.success);
					if(data.success){
						//$("#tipMsg").text("认证成功");
						localStorage.setItem("trueName",data.trueName);
						
						window.location.href = "getProductIndex.do";
					}else{
						$("#tipMsg").text("用户名不存在或者密码错误");
					}
				}
			});
		}
		*/
	
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
					var tipMsg = document.getElementById("tipMsg");
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
			<div class="form-horizontal col-sm-offset-3 col-md-offset-3">
			<!-- <form class="form-horizontal col-sm-offset-3 col-md-offset-3" id="login_form" action="login.do" method="post"> -->
				<h3 class="form-title">登                   录</h3>
				<div class="col-sm-9 col-md-9">
					<div class="form-group">
						<i class="fa fa-user fa-lg"></i>
						<input class="form-control required" type="text" placeholder="trueName" id="trueName" 
						 autofocus="autofocus" maxlength="20"/>
						<span id="yanz"></span>
					</div>
					<div class="form-group">
							<i class="fa fa-lock fa-lg"></i>
							<input class="form-control required" type="password" placeholder="Password" id="password" maxlength="8"/>
					</div>
					<div class="form-group">
						<label class="checkbox">
							<input type="checkbox" name="ten" value="true"/> 10 天免登陆
						</label>
						<hr />
						<a href="javascript:;" id="register_btn" class="">注册</a>
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-success pull-right" id="loginBtn" onclick="login();" value="登录 "/>
						<br>
						<br>
						<span id="tipMsg" style="font-size: 12px; color: red;"></span>   
					</div>
				</div>
			<!-- </form> -->
			</div>
		</div>	
	</div>
</body>
</html>