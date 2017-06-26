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
<link rel="shortcut icon" href="<%=basePath%>/img/brandbest.png" />
<!-- Bootstrap -->
<link href="<%=basePath%>/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=basePath%>/lin_css/backmodel.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<style>
#info_part {
	background-color: #53606d;
	color: white;
}

#rright_part {
	color: white;
	height: 40px;
}
</style>
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
					<div>
						<img width="100%" height="150px"
							src="<%=basePath%>/head/<s:property value='#session.learningCourseInfo.courseHead'/>">
					</div>
				</div>
				<div class="row function_b">
					<div>
						<h5>
							<s:property value='#session.learningCourseInfo.courseName' />
						</h5>
					</div>
				</div>
				<div class="row function_b">
					<div>
						<h5>
							<s:property value='#session.learningCourseInfo.teacherName' />
						</h5>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b" style="margin-top: 10px;">
						<div>
							<a href="javascript:void(0);"><h5>
									<img src="<%=basePath%>/img/courseInfo.png"
										style="margin-left: -70px; margin-right: 30px;" />课程信息
								</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a class="1" href="javascript:void(0);"><h5>课程公告</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a class="2" href="javascript:void(0);"><h5>课程介绍</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a class="3" href="javascript:void(0);"><h5>课程评价</h5></a>
						</div>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="javascript:void(0);"><h5>
									<img src="<%=basePath%>/img/course.jpg"
										style="margin-left: -70px; margin-right: 30px;" />课程内容
								</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a class="4" href="javascript:void(0);"><h5>章节导航</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a class="5" href="javascript:void(0);"><h5>测试习题</h5></a>
						</div>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="javascript:void(0);"><h5>
									<img src="<%=basePath%>/img/discuss.png"
										style="margin-left: -70px; margin-right: 36px;" />讨论交流
								</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a class="6" href="javascript:void(0);"><h5>讨论区</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a class="7" href="javascript:void(0);"><h5>信息</h5></a>
						</div>
					</div>
				</div>
			</div>
			<!-- 左侧功能区结束 -->
			<!-- 右侧内容展示 -->
			<div id="content_part" class="col-md-6 middle"
				style="margin-left: 10px;">
				<!-- 课程公告 -->
				<div id="middle1" class="middle">
					<div class="row">
						<div id="info_part" class="col-md-12">
							<img src="<%=basePath%>/img/naba.png" />课程公告
						</div>
					</div>
					<div class="row" style="margin-top: 10px;">
						<div class="panel-group" id="accordion" role="tablist"
							aria-multiselectable="true">
							<s:if test="#session.learningCourseNoticesList.size()==0">
								<h4 style="color: red;">该课程暂无公告哦！！！</h4>
							</s:if>
							<s:else>
								<s:iterator value="#session.learningCourseNoticesList"
									status="st">
									<div class="panel panel-default">
										<div class="panel-heading" role="tab"
											id="heading<s:property value='#st.index()'/>">
											<h4 class="panel-title">
												<a role="button" data-toggle="collapse"
													data-parent="#accordion"
													href="#collapse<s:property value='#st.index()'/>"
													aria-expanded="true" aria-controls="collapseOne"> <s:property
														value='title' />
												</a> <small><p style="text-align: right;">
														<s:property value='time' />
													</p></small>
											</h4>
										</div>
										<div id="collapse<s:property value='#st.index()'/>"
											class="panel-collapse collapse in"
											style="background-color: #f6ffff;" role="tabpanel"
											aria-labelledby="heading<s:property value='#st.index()'/>">
											<div class="panel-body">
												<p>
													<s:property value='content' />
												</p>
											</div>
										</div>
									</div>
								</s:iterator>
							</s:else>
						</div>
					</div>
				</div>
				<!-- 课程公告结束 -->
				<!-- 课程介绍 -->
				<div id="middle2" class="middle">
					<div class="row">
						<div id="info_part" class="col-md-12">
							<img src="<%=basePath%>/img/naba.png" />课程介绍
						</div>
					</div>
					<div class="row">
						<p>
							<s:property
								value='#session.learningCourseInfo.courseIntroduction' />
						</p>
					</div>
				</div>
				<!-- 课程介绍 结束-->
				<!-- 课程评价 -->
				<div id="middle3" class="middle">
					<div class="row">
						<div id="info_part" class="col-md-12">
							<img src="<%=basePath%>/img/naba.png" />课程评价
						</div>
					</div>
					<div class="row">
						<s:if test="#session.courseCommentInfoList.size()==0">
							<h4 style="color: red;">该课程暂无任何评价哟！！！</h4>
						</s:if>
						<s:else>
							<table class="table table-bordered table-hover">
								<tr>
									<th>评价人</th>
									<th>评价内容</th>
									<th>评价时间</th>
								</tr>
								<s:iterator value="#session.courseCommentInfoList">
									<tr>
										<td>
											<p>
												<img
													src="<%=basePath%>head/<s:property value='user.getHead()'/>"
													width="40px" height="40px" class="img-circle" /> <font><s:property
														value='user.getName()' /></font>
											</p>
										</td>
										<td><s:property value='content' /></td>
										<td><s:property value='time' /></td>
									</tr>
								</s:iterator>
							</table>
						</s:else>
					</div>
				</div>
				<!-- 课程评价 结束-->
				<!-- 章节导航-->
				<div id="middle4" class="middle">
					<div class="row">
						<div id="info_part" class="col-md-12">
							<img src="<%=basePath%>/img/naba.png" />章节导航
						</div>
					</div>
					<div class="row">
						<s:if test="#session.characterAndMeasureList.size()==0">
							<h4 style="color: red;">该课程还没有任何章节哦！</h4>
						</s:if>
						<s:iterator value="#session.characterAndMeasureList" status="st">
							<div class="row">
								<div class="col-md-12 character-model">
									<h3 class="character-head">
										<span class="glyphicon glyphicon-list-alt"></span>&nbsp;&nbsp;&nbsp;<a
											class="character-open" href="#">第<s:property
												value="#st.getIndex()+1" />章 <span class="m_title"><s:property
													value="title" /></span> <small><span class="m_discription"><s:property
														value="discription" /></span></small></a>
									</h3>
									<s:if test="measureList.size()==0">
										<h4 style="color: red;">该章还没有任何小节哦！</h4>
									</s:if>
									<ul class="list-group character-content">
										<s:iterator value="measureList" status="st2">
											<li class="list-group-item"><a href="<%=basePath %>/teacher_checkMeasure.do?measureId=<s:property value='measureId'/>&&userId=<s:property value='#session.loginUser.userId'/>" target="_blank"><s:property
														value="#st.index+1" />.<s:property value="#st2.index+1" />
													<s:property value="title" /></a><span style="float: right;"></li>
										</s:iterator>
									</ul>
								</div>
							</div>
						</s:iterator>
					</div>
				</div>
				<!-- 章节导航 结束-->
				<!-- 测试习题 -->
				<div id="middle5" class="middle">
					<div class="row">
						<div id="info_part" class="col-md-12">
							<img src="<%=basePath%>/img/naba.png" />测试习题
						</div>
					</div>
					<div class="row">
						<s:if test="#session.characterAndMeasureList.size()==0">
							<h4 style="color: red;">该课程还没有任何章节哦！</h4>
						</s:if>
						<s:iterator value="#session.characterAndMeasureList" status="st">
							<div class="row">
								<div class="col-md-12 character-model">
									<h3 class="character-head">
										<span class="glyphicon glyphicon-list-alt"></span>&nbsp;&nbsp;&nbsp;<a
											class="character-open" href="#">第<s:property
												value="#st.getIndex()+1" />章 <span class="m_title"><s:property
													value="title" /></span> <small><span class="m_discription"><s:property
														value="discription" /></span></small></a>
									</h3>
									<s:if test="measureList.size()==0">
										<h4 style="color: red;">该章还没有任何小节哦！</h4>
									</s:if>
									<ul class="list-group character-content">
										<s:iterator value="measureList" status="st2">
											<li class="list-group-item"><a href="<%=basePath %>/teacher_checkMeasure.do?measureId=<s:property value='measureId'/>&&userId=<s:property value='#session.loginUser.userId'/>" target="_blank"><s:property
														value="#st.index+1" />.<s:property value="#st2.index+1" />
													<s:property value="title" /></a><span style="float: right;"></li>
										</s:iterator>
									</ul>
								</div>
							</div>
						</s:iterator>
					</div>
				</div>
				<!-- 测试习题结束-->
				<!-- 讨论区 -->
				<div id="middle6" class="middle">
					<div class="row">
						<div id="info_part" class="col-md-12">
							<img src="<%=basePath%>/img/naba.png" />讨论区
						</div>
					</div>
					<div class="row">
						<s:if test="#session.learningCoursePostList.size()==0">
							<h4 style="color: red;">该课程还没有任何帖子哦！</h4>
						</s:if>
					</div>
				</div>
				<!-- 讨论区 结束-->
				<!-- 信息 -->
				<div id="middle7" class="middle">
					<div class="row">
						<div id="info_part" class="col-md-12">
							<img src="<%=basePath%>/img/naba.png" />信息
						</div>
					</div>
					<div class="row">7</div>
				</div>
				<!-- 信息 结束-->
			</div>
			<!-- 右侧内容展示结束 -->
			<!-- 最右侧内容展示 -->
			<div id="content_part" class="col-md-2" style="margin-left: 10px;">
				<div class="row">
					<div id="rright_part" class="col-md-12"
						style="background-color: #f48282;">
						<img src="<%=basePath%>/img/testM.png" />&nbsp;&nbsp;&nbsp;&nbsp;测验与作业
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<s:if test="#session.learningCourseExerciseList.size()==0">
							<p>暂时没有相关信息哦</p>
						</s:if>
						<s:else>
							<div>
								<s:iterator value="#session.learningCourseExerciseList">
									<a href="#"><s:property value='question' escape="false" /></a>
								</s:iterator>
							</div>
						</s:else>
					</div>
				</div>
				<div class="row">
					<div id="rright_part" class="col-md-12"
						style="background-color: #53606d;">
						<img src="<%=basePath%>/img/updateC.png" />&nbsp;&nbsp;&nbsp;&nbsp;最新发布内容
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<s:if test="#session.learningCourseMeasureList.size()==0">
							<p>暂时没有相关信息哦</p>
						</s:if>
						<s:else>
							<s:iterator value="#session.learningCourseMeasureList">
								<div>
									<a href="#"><s:property value='title' /></a>
								</div>
							</s:iterator>
						</s:else>
					</div>
				</div>
				<div class="row">
					<div id="rright_part" class="col-md-12"
						style="background-color: #53606d;">
						<img src="<%=basePath%>/img/updateD.png" />&nbsp;&nbsp;&nbsp;&nbsp;讨论区
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<s:if test="#session.learningCoursePostList.size()==0">
							<p>暂时没有相关信息哦</p>
						</s:if>
						<s:else>
							<s:if test="#session.learningCoursePostList.size()<=3">
								<s:iterator value="#session.learningCoursePostList">
									<div>
										<a href="#"><s:property value='content' /></a>
									</div>
								</s:iterator>
							</s:if>
							<s:else>
								<s:iterator value="#session.learningCoursePostList" begin="0"
									end="2">
									<div>
										<a href="#"><s:property value='content' /></a>
									</div>
								</s:iterator>
							</s:else>
						</s:else>
					</div>
				</div>
				<input type="input" class="btn btn-default" value="进入论坛" />
			</div>
			<!-- 最右侧内容展示 -->
		</div>
	</div>
	<!-- 主体区结束 -->
	<!-- footer区 -->
	<nav class="navbar navbar-default navbar-fixed-bottom">
		<div class="container-fluid">
			<div class="row foot">
				<div class="col-md-12">
					<p>南京工业职业技术学院&nbsp;&nbsp;|&nbsp;&nbsp;计算机与软件学院&nbsp;&nbsp;林光翔&nbsp;联系方式：1837475870@qq.com</p>
				</div>
			</div>
		</div>
	</nav>
	<!-- footer区结束 -->
	<div id="myModal" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="mySmallModalLabel">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<h4>向学习课程的同学发布公告</h4>
				<form action="" method="post">
					<p>
						短描述：<br> <input type="input" class="form-control"
							placeholder="公告描述" />
					</p>
					<p>
						评价：<br>
						<textarea class="form-control" row="3" placeholder="写下您的评价"></textarea>
					</p>
					<p>
						<input id="sub_comment" class="btn btn-default" type="submit"
							value="公告" />
					</p>
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="<%=basePath%>/lin_js/jquery-1.10.2.min.js"></script>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="<%=basePath%>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>/lin_js/showTip.js"></script>
	<script type="text/javascript">
		$(function() {
			$(".function_s").hide();
			$("#middle1").show();
			for (var i = 2; i < 8; i++) {
				$("#middle" + i).hide();
			}
			$(".function_b").click(
					function() {
						//alert($(this).parent(".onemodel").find(".function_s").html());
						$(this).parent(".onemodel").find(".function_s").show(
								500);
						$(this).parent(".onemodel").siblings().find(
								".function_s").hide(500);
					});
			$(".function_s").click(function() {
				//alert($(this).find("a").attr("class"));
				var $id = $(this).find("a").attr("class");
				$("#middle" + $id).show().siblings().hide();
			});
			$("#sub_comment").click(function() {
				ShowSuccess("评价成功！");//$("#myModal").modal("hide");不能用
			});
		});
	</script>

</body>
</html>