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
<style>
.onemodel{
   border:1px white solid;
}
</style>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script>
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
						<img class="img-circle" src="<%=basePath %>/img/defaulthead.jpg">
					</div>
				</div>
				<div class="row function_b">
					<div>
						<h5>超级管理员</h5>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b" style="margin-top: 1px;">
						<div>
							<a href="<%=basePath%>super_findCoursesByPager.do?pageNum=1"><h5>
									<img src="<%=basePath%>/img/course.jpg"
										style="margin-left: -70px; margin-right: 30px;" />管理课程
								</h5></a>
						</div>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="<%=basePath%>super_findUsersByPager.do?pageNum=1"><h5>
									<img src="<%=basePath%>/img/user.png"
										style="margin-left: -70px; margin-right: 30px;" />管理用户
								</h5></a>
						</div>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="<%=basePath%>super/superManagerPost.jsp"><h5>
									<img src="<%=basePath%>/img/tiezi3.png"
										style="margin-left: -70px; margin-right: 36px;" />管理帖子
								</h5></a>
						</div>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="<%=basePath %>super/superManagerCourseType.jsp"><h5>
									<img src="<%=basePath%>/img/courseType.png"
										style="margin-left: -70px; margin-right: 36px;" />课程种类
								</h5></a>
						</div>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="<%=basePath%>super/superManagerRunPic.jsp"><h5>
									<img src="<%=basePath%>/img/zhengshu.png"
										style="margin-left: -70px; margin-right: 25px;" />管理滚屏
								</h5></a>
						</div>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="<%=basePath%>super/superManagerMessage.jsp"><h5>
									<img src="<%=basePath%>/img/message.png"
										style="margin-left: -70px; margin-right: 25px;" />我的消息
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
						<strong>当前位置:</strong><a href="#">帖子管理</a>
				   </div>					
				</div>
				<hr>
				<div class="row">
				   <div class="col-md-2">
				      <p>帖名：<input type="input" class="form-control" placeholder="帖子关键字"/></p>
				   </div>
				   <div class="col-md-2">
				      <p>发表时间：<input class="Wdate" id="stime1"
							onFocus="WdatePicker({lang:'zh-cn'})" type="text"></p>
				   </div>
				   <div class="col-md-2">
				      <p>发帖人姓名:<input type="input" class="form-control" placeholder="发帖人姓名"/></p>
				   </div>
				   <div class="col-md-1 col-md-offset-1"><input type="submit" class="btn btn-default" value="搜索"/></div>
				</div>
				<hr>
				<div class="row">
					<div class="col-md-12">
						<div class="table-responsive">
						<table class="table table-bordered table-hover">
						   <tr>
						      <th>编号</th>
						      <th>标题</th>
						      <th>内容</th>
						      <th>发帖人</th>
						      <th>发表时间</th>
						      <th>操作</th>
						   </tr>
						   <tr>
						      <td>1</td>
						      <td><a href="#">为什么我用不了bootstrap？</a></td>
						      <td>下载好bootstrap文件正确导入项目，就是不能用</td>
						      <td>转角遇见</td>
						      <td>2015-12-1 12:12:23</td>
						      <td><a class="btn btn-default btn-sm" role="button" href="#">屏蔽</a></td>
						   </tr>
					    </table>
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