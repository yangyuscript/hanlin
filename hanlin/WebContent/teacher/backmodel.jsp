<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>翰林学院</title>
<link rel="shortcut icon" href="../img/brandbest.png" />
<!-- Bootstrap -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../lin_css/backmodel.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<!-- brand部分 -->
	<div id="head_part" class="container-fluid" style="background-color:#f5f5f6">
	<div class="row">
	   <div class="col-md-4 col-md-offset-1"><h2><img src="../img/brandbest.png" width="70px" height="70px"/>翰林学院</h2></div>
	   <div class="col-md-1"><h3 style="margin-top:28px;">首页</h3><h5 style="margin-top:-5px;">home</h5></div>
	   <div class="col-md-3"><h3 style="margin-top:28px;">课程</h3><h5 style="margin-top:-5px;">courses</h5></div>
	   <div class="col-md-2"><h5><br><br>欢迎您！某某教师&nbsp;&nbsp;<a href="#">退出</a></h5></div>
	</div>
	</div>
	<!-- brand部分结束 -->
    <!-- 主体区 -->
    <div id="middle_part" class="container-fluid">      
       <div class="row">
       <!-- 左侧功能区 -->
          <div id="left_part" class="col-md-2 col-md-offset-1">
				<div class="row">
					<div id="lefthead">
						<img class="img-circle" src="../img/defaulthead.jpg">
					</div>
				</div>
				<div class="row function_b">
					<div>
						<h5>林光翔教授</h5>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b" style="margin-top: 10px;">
						<div>
							<a href="#"><h5>
									<img src="../img/course.jpg"
										style="margin-left: -70px; margin-right: 30px;" />我的课程
								</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="learningCourse.jsp"><h5>正在学课程</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="managerCourse.jsp"><h5>收藏课程</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="managerCourse.jsp"><h5>创建课程</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="managerCourse.jsp"><h5>课程管理</h5></a>
						</div>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="#"><h5>
									<img src="../img/homework.png"
										style="margin-left: -70px; margin-right: 30px;" />我的习题
								</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="foundTest.jsp"><h5>发布习题</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="managerTest.jsp"><h5>习题管理</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="checkTest.jsp"><h5>批改习题</h5></a>
						</div>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="myPost.jsp"><h5>
									<img src="../img/tiezi3.png"
										style="margin-left: -70px; margin-right: 36px;" />我的帖子
								</h5></a>
						</div>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="myMessage.jsp"><h5>
									<img src="../img/message.png"
										style="margin-left: -70px; margin-right: 25px;" />我的消息
								</h5></a>
						</div>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="myInfo.jsp"><h5>
									<img src="../img/info.png"
										style="margin-left: -70px; margin-right: 30px;" />个人信息
								</h5></a>
						</div>
					</div>
				</div>
			</div>
       <!-- 左侧功能区结束 -->
       <!-- 右侧内容展示 -->
          <div id="content_part" class="col-md-*">
             
          </div>
       <!-- 右侧内容展示结束 -->
       </div>      
    </div>
    <!-- 主体区结束 -->
    <!-- footer区 -->
    <div class="container-fluid">
    <div class="row foot">
       <p>南京邮电大学&nbsp;&nbsp;|&nbsp;&nbsp;计算机学院与软件学院&nbsp;&nbsp;林光翔&nbsp;联系方式：1837475870@qq.com</p>
    </div>
    </div>
    <!-- footer区结束 -->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/jquery.min.js"></script>
	<script type="text/javascript">
	   $(function(){
		   $(".function_s").hide();
		   $(".function_b").click(function(){
			   //alert($(this).parent(".onemodel").find(".function_s").html());
			   $(this).parent(".onemodel").find(".function_s").show(500);
			   $(this).parent(".onemodel").siblings().find(".function_s").hide(500);
		   });
	   });	   
	</script>
	
</body>
</html>