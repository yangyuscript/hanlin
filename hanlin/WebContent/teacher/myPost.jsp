<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>翰林学院</title>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
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
	<div id="head_part" class="container-fluid"
		style="background-color: #f5f5f6">
		<div class="row">
			<div class="col-xs-11 col-xs-offset-1 col-md-4 col-md-offset-1">
				<h2>
					<a href="<%=basePath%>course_beginWebsiteB.do"><img src="<%=basePath%>/img/brandbest.png" width="70px"
						height="70px" />翰林学院</a>
				</h2>
			</div>
			<a href="<%=basePath%>student/index.jsp">
				<div class="col-xs-3 col-xs-offset-1 col-md-1">
					<h3 style="margin-top: 28px;margin-left:5px;">首页</h3>
					<h5 style="margin-top: -5px;margin-left:10px;">home</h5>
				</div>
			</a> <a href="<%=basePath%>course_goMain.do">
				<div class="col-xs-4 col-md-3">
					<h3 style="margin-top: 28px;">课程</h3>
					<h5 style="margin-top: -5px;">courses</h5>
				</div>
			</a>
			<div class="col-xs-4 col-md-2">
				<h5>
					<br> <br>
					<s:if test="#session.loginUser==null">
						<a href="<%=basePath%>loft_index.jsp"><h5>注册/登陆</h5></a>
					</s:if>
					<s:else>
						<div class="dropdown">
							<input type="hidden" id="loginUserId"
								value="<s:property value='#session.loginUser.userId'/>" /> <a
								id="dLabel" type="button" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"> <img
								class="img-circle"
								src="<%=basePath %>head/<s:property value='#session.loginUser.head'/>"
								width="20px" height="20px" /><span style="cursor: pointer;"><s:property
										value="#session.loginUser.nickname" /><span class="caret"></span></span>
							</a>
							<ul class="dropdown-menu" aria-labelledby="dLabel">
								<li><a
									href="teacher_goToTeacher.do?teacherId=<s:property value='#session.loginUser.userId'/>">课程管理</a></li>
								<li><a
									href="teacher_goToTeacherCenter.do?teacherId=<s:property value='#session.loginUser.userId'/>">个人中心</a></li>
								<li role="separator" class="divider"></li>
								<li><a id="checkout" href="user_removeUserSession.do">退出</a></li>
							</ul>
						</div>
					</s:else>
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
						<img class="img-circle" src="<%=basePath%>/head/<s:property value='#session.loginUser.head'/>">
					</div>
				</div>
				<div class="row function_b">
					<div>
						<h5><s:property value="#session.loginUser.nickname"/></h5>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b" style="margin-top: 10px;">
						<div>
							<a href="#"><h5>
									<img src="<%=basePath %>/img/course.jpg"
										style="margin-left: -70px; margin-right: 30px;" />我的课程
								</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="<%=basePath %>teacher/learningCourse.jsp"><h5>正在学课程</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="<%=basePath %>/teacher/likeCourse.jsp"><h5>收藏课程</h5></a>
						</div>
					</div>
					<s:if test="#session.loginUser.condi!=0">
					<div class="row function_s">
						<div>
							<a href="<%=basePath %>/teacher/foundCourse.jsp"><h5>创建课程</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="<%=basePath %>/teacher/managerCourse.jsp"><h5>课程管理</h5></a>
						</div>
					</div>
					</s:if>
					<s:else>
					<div class="row function_s">
					   <div>
					      <a href="<%=basePath %>/teacher/toBeTea.jsp"><h5>申请成为教师</h5></a>
					   </div>
					</div>
					</s:else>
				</div>
				<s:if test="#session.loginUser.condi==10">
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="#"><h5>
									<img src="<%=basePath %>/img/homework.png"
										style="margin-left: -70px; margin-right: 30px;" />我的习题
								</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="<%=basePath %>teacher/managerCourse.jsp"><h5>发布习题</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="<%=basePath %>teacher/managerCourse.jsp"><h5>习题管理</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="<%=basePath %>teacher/managerCourse.jsp"><h5>批改习题</h5></a>
						</div>
					</div>
				</div>
				</s:if>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="<%=basePath %>teacher/myPost.jsp"><h5>
									<img src="<%=basePath %>/img/tiezi3.png"
										style="margin-left: -70px; margin-right: 36px;" />我的帖子
								</h5></a>
						</div>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="<%=basePath %>teacher/myMessage.jsp"><h5>
									<img src="<%=basePath %>/img/message.png"
										style="margin-left: -70px; margin-right: 25px;" />我的消息
								</h5></a>
						</div>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="<%=basePath %>teacher/myInfo.jsp"><h5>
									<img src="<%=basePath %>/img/info.png"
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
					<div class="col-md-8 col-xs-12" style="margin-top:15px;margin-bottom:15px;">
						<strong>当前位置:</strong><a href="#">首页</a>&gt;<a href="#">我的帖子</a>
					</div>
					<div class="col-md-3 col-xs-8">
					  <form class="form-inline">
							<div class="form-group">
								<input type="text" class="form-control" id="search"
									placeholder="输入帖子关键词">
							</div>
						</form>
					</div>
					<div class="col-md-1 col-xs-4">
					   <button type="submit" class="btn btn-default">搜索</button>
					</div>
					<hr>
					<hr>
					<div class="col-md-12 col-xs-12 post-part" style="margin-top:10px;margin-bottom:10px;">
						<div class="row">
							<a href="#" style="font-size:18px;">
								<div class="col-md-6 col-xs-12">
									<p><strong>关于引入bootstrap文件不可用的问题解决</strong></p>
								</div>
								<div class="col-md-3 col-xs-12">
									<p>时间：2015-12-9 12:01:08</p>
								</div>
								<div class="col-md-2 col-xs-8">
									<p>回复数:129</p>
								</div>								
							</a>
							<div class="col-md-1 col-xs-4">
								<input type="button" class="btn btn-default" value="删除"/>  
						    </div>
						</div>
					</div>
				</div>
			</div>
			<!-- 右侧内容展示结束 -->
		</div>
	</div>
	<!-- 主体区结束 -->
	<!-- footer区 -->
	<nav class="navbar navbar-default navbar-fixed-bottom">
		<div class="container-fluid">
			<div class="row foot">
				<div class="col-md-12">
					<p>南京邮电大学&nbsp;&nbsp;|&nbsp;&nbsp;计算机学院与软件学院&nbsp;&nbsp;林光翔&nbsp;联系方式：1837475870@qq.com</p>
				</div>
			</div>
		</div>
	</nav>
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