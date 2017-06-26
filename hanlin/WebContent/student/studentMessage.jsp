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
<title>学生消息</title>
<link rel="shortcut icon" href="../img/brandbest.png" />
<!-- Bootstrap -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../cai_css/backmodel.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
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
					<br> <br>欢迎您！某某某&nbsp;&nbsp;<a href="#">退出</a>
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
						<a href="#">首页</a>&gt;<a href="#">我的消息</a>
					</div>
					<div class="col-md-1">
						<input type="button" class="btn btn-default" data-toggle="modal"
							data-target="#myModal" value="删除" />
					</div>
					<div class="col-md-1">
						<input type="button" class="btn btn-default" data-toggle="modal"
							data-target="#myModal" value="全部清空" />
					</div>
				</div>
				<hr>
				<div class="row message-part" style="background-color: #f5f5f6">
					<div class="col-md-10">
						<a href="#"><h4>
								<small>暂时没有您（某某某）的消息</small>
							</h4></a>
						<p></p>
						<p style="float: right">2015-12-29 21:12:09</p>
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
	<div id="myModal" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="mySmallModalLabel">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<h4>向教师提交疑问</h4>
				<form action="" method="post">
					<p>
						问题描述：<br>
						<textarea class="form-control" row="3" placeholder="描述您遇到的困难"></textarea>
					</p>
					<p>
						<input id="sub_comment" class="btn btn-default" type="submit"
							value="提交" />
					</p>
				</form>
			</div>
		</div>
	</div>
	<div id="announce" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="mySmallModalLabel">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<h4>向所有学习课程的学生发布公告</h4>
				<form action="" method="post">
					<p>
						短描述：<br> <input type="input" class="form-control"
							placeholder="公告描述" />
					</p>
					<p>
						问题描述：<br>
						<textarea class="form-control" row="3" placeholder="公告内容"></textarea>
					</p>
					<p>
						<input id="sub_comment2" class="btn btn-default" type="submit"
							value="提交" />
					</p>
				</form>
			</div>
		</div>
	</div>
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