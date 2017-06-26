<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>登陆注册</title>
<link rel="shortcut icon" href="img/brandbest.png" />
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="lin_css/loft_index.css" rel="stylesheet" />
<link href="cai_css/c_login.css" rel="stylesheet" />
<script type="text/javascript" src="lin_js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="lin_js/showTip.js"></script>
<script type="text/javascript" src="lin_js/judge2.js"></script>
<script type="text/javascript" src="lin_js/login2.js"></script>
<script type="text/javascript">
   $(function(){
	  $("#gologin").click(function(){
		  $("#login_div").show();
		  $("#regist_div").hide();
	  });
	  $("#goregist").click(function(){
		 $("#login_div").hide();
		 $("#regist_div").show();
	  });
   });
</script>
</head>
<%
     String path = request.getContextPath();
     String basePath = request.getScheme() + "://"
		+ request.getServerName() + ":" + request.getServerPort()
		+ path + "/";
%>
<body style="background: url(img/background.jpg) no-repeat center;background-color:#e1efcc;">
    <div id="regist_div" style="height:auto">
	<form>
	    <p style="text-align:center;font-size:25px;">翰林注册 <a id="gologin" style="font-size:10px;cursor:pointer;">去登录</a></p>
		<div class="form-group">
			<label for="exampleInputEmail1">邮箱</label> <input
				type="email" class="form-control" id="regist_name"
				placeholder="Account"><span id="mark" style="display:hidden;"></span>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">密码</label> <input
				type="password" class="form-control" id="regist_pass"
				placeholder="Password">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">确认密码</label> <input
				type="password" class="form-control" id="regist_pass2"
				placeholder="Confirm Password"><span id="mark2" style="display:hidden;"></span>
		</div>
		<input id="basePath" type="hidden" value="<%=basePath %>"/>	
		<button style="background:#96c656;color:white;margin-top:10px;margin-bottom:10px;" type="button" class="btn btn-default" id="btn_regist">注册</button><span id="mark3" style="display:hidden;"></span>
	</form>
    </div>
    
    <div id="login_div" style="height:auto;">
    <p style="text-align:center;font-size:25px;">翰林登录 <a id="goregist" style="font-size:10px;cursor:pointer;">去注册</a></p>
	<form>
		<div class="form-group">
			<label for="exampleInputEmail1">邮箱</label> <input
				type="email" class="form-control" id="login_name"
				placeholder="Account">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">密码</label> <input
				type="password" class="form-control" id="login_pass"
				placeholder="Password">
		</div>
		<button style="background:#96c656;color:white;margin-top:10px;margin-bottom:10px;" type="button" class="btn btn-default" id="btn_login">登录</button>
	</form>
    </div>
    


	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<!-- <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script> -->
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>