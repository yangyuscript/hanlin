<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生学习的课程</title>
<link rel="shortcut icon" href="../img/brandbest.png" />
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../cai_css/backmodel.css" rel="stylesheet">
</head>
<body>
	<!-- brand部分 -->
	<div id="head_part" class="container-fluid"
		style="background-color: #f5f5f6">
		<div class="row">
			<div class="col-md-4 col-md-offset-1">
				<h2>
					<img src="../img/brandbest.png" width="70px" height="70px" />翰林学院
				</h2>
			</div>
			<div class="col-md-1">
				<h3 style="margin-top: 28px;">首页</h3>
				<h5 style="margin-top: -5px;">home</h5>
			</div>
			<div class="col-md-3">
				<h3 style="margin-top: 28px;">课程</h3>
				<h5 style="margin-top: -5px;">courses</h5>
			</div>
			<div class="col-md-2">
				<h5>
					<br> <br>欢迎您！(昵称)&nbsp;&nbsp;<a href="#">退出</a>
				</h5>
			</div>
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
						<h5>某某学员</h5>
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
							<a href="studentLearning.jsp"><h5>正在学习的课程</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="studentCollect.jsp"><h5>已收藏的课程</h5></a>
						</div>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="#"><h5>
									<img src="../img/zhengshu.png"
										style="margin-left: -70px; margin-right: 30px;" />我的证书
								</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="studentCertificate.jsp"><h5>已获取证书</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="payCertificate.jsp"><h5>代付款证书</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="applyCertificate.jsp"><h5>未申请证书</h5></a>
						</div>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="studentNote.jsp"><h5>
									<img src="../img/homework.png"
										style="margin-left: -70px; margin-right: 36px;" />我的笔记
								</h5></a>
						</div>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="studentMessage.jsp"><h5>
									<img src="../img/message.png"
										style="margin-left: -70px; margin-right: 25px;" />我的消息
								</h5></a>
						</div>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="studentPersonal.jsp"><h5>
									<img src="../img/info.png"
										style="margin-left: -70px; margin-right: 30px;" />个人信息
								</h5></a>
						</div>
					</div>
				</div>
			</div>
			<!-- 左侧功能区结束 -->
			<!-- 右侧内容展示 -->
			<div id="content_part" class="col-md-9">
				<div class="row">
					<div class="col-md-8">
						<a href="#">我的课程</a>&gt;<a href="#">正在学习的课程</a>
					</div>
					<div class="col-md-4">
						<form class="form-inline">
							<div class="form-group">
								<input type="text" class="form-control" id="search"
									placeholder="搜索您想要的课程">
							</div>
							<button type="submit" class="btn btn-default">搜索</button>
						</form>
					</div>
				</div>
				<div class="row course_learning">
					<div class="col-md-10">
						<div class="media">
							<div class="media-left mask-wrapper">
								<a href="#"> <img class="media-object"
									src="../img/defaultcourse.jpg" alt="...">
								</a>
								<div class="mask-inner">
									<p>
										<span class="glyphicon glyphicon-facetime-video"
											style="font-size: 30px;" aria-hidden="true"></span>去学习
									</p>
								</div>
							</div>
							<div class="media-body">
								<h4 class="media-heading">计算机基础</h4>
								<a href="#"><img src="../img/defaulthead.jpg"
									class="img-circle" width="35px" height="30px" />&nbsp;李康华</a> <br>
								<br> <br>
								<br> <font style="size: 20px;">2015-12-29</font>
							</div>
						</div>
					</div>
					<div class="col-md-1">
						<br> <a href="#">课程详情</a><br> <br> <a href="#">学习统计</a><br>
						<br> <a href="#" data-toggle="modal" data-target="#myModal">退课</a>
					</div>
				</div>
				<div class="row course_learning">
					<div class="col-md-10">
						<div class="media">
							<div class="media-left mask-wrapper">
								<a href="#"> <img class="media-object"
									src="../img/defaultcourse.jpg" alt="...">
								</a>
								<div class="mask-inner">
									<p>
										<span class="glyphicon glyphicon-facetime-video"
											style="font-size: 30px;" aria-hidden="true"></span>去学习
									</p>
								</div>
							</div>
							<div class="media-body">
								<h4 class="media-heading">计算机基础</h4>
								<a href="#"><img src="../img/defaulthead.jpg"
									class="img-circle" width="35px" height="30px" />&nbsp;李康华</a> <br>
								<br> <br>
								<br> <font style="size: 20px;">2015-12-29</font>
							</div>
						</div>
					</div>
					<div class="col-md-1">
						<br> <a href="#">课程详情</a><br> <br> <a href="#">学习统计</a><br>
						<br> <a href="#" data-toggle="modal" data-target="#myModal">退课</a>
					</div>
				</div>
			</div>
			<!-- 右侧内容展示结束 -->
		</div>
	</div>
	<!-- 主体区结束 -->
	<!-- footer区 -->
	<div class="container-fluid">
		<div class="row foot">
			<div class="col-md-12">
				<p>南京工业职业技术学院&nbsp;&nbsp;|&nbsp;&nbsp;计算机与软件学院&nbsp;&nbsp;林光翔&蔡明雪&nbsp;联系方式：1837475870@qq.com</p>
			</div>
		</div>
	</div>
	<!-- footer区结束 -->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/jquery.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$(".function_s").hide();
			$(".function_b").click(
					function() {
						//alert($(this).parent(".onemodel").find(".function_s").html());
						$(this).parent(".onemodel").find(".function_s").show(
								500);
						$(this).parent(".onemodel").siblings().find(
								".function_s").hide(500);
					});
		});
	</script>

</body>
</html>