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
<title>翰林学院</title>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<link rel="shortcut icon" href="<%=basePath%>/img/brandbest.png" />
<link href="<%=basePath%>/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=basePath%>/cai_css/backmodel.css" rel="stylesheet">
<link href="<%=basePath%>/cai_css/index.css" rel="stylesheet">
</head>

<body>
	<!-- brand部分 -->
	<div id="head_part" class="container-fluid"
		style="background-color: #f5f5f6">
			<div class="col-xs-11 col-xs-offset-1 col-md-4 col-md-offset-1">
				<h2>
					<a href="<%=basePath%>course_beginWebsiteB.do"><img src="<%=basePath%>/img/brandbest.png" width="70px"
						height="70px"/><span>翰林学院</span></a>
				</h2>
			</div>
			<a href="<%=basePath%>student/index.jsp">
				<div class="col-xs-3 col-xs-offset-1 col-md-1">
					<h3 style="margin-top: 28px;">首页</h3>
					<h5 style="margin-top: -5px;margin-left:5px;">home</h5>
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
								src="<%=basePath%>/head/<s:property value='#session.loginUser.head'/>"
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
	<!-- brand部分结束 -->
	<!-- 图片轮播区域 -->
	<div id="" class="container-fluid">
		<%-- <input type="text" value="<s:property value='#session.fourRunpics.size()'/>"/> --%>
		<div class="row">
			<div id="carousel-example-generic" class="carousel slide"
				data-ride="carousel" style="height:280px;">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<s:iterator value="#session.fourRunpics" status="it1">
						<s:if test="#it1.getIndex()==0">
							<li data-target="#carousel-example-generic"
								data-slide-to="<s:property value='#it1.getIndex()'/>"
								class="active"></li>
						</s:if>
						<s:else>
							<li data-target="#carousel-example-generic"
								data-slide-to="<s:property value='#it1.getIndex()'/>"></li>
						</s:else>
					</s:iterator>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<s:if test="#session.fourRunpics!=null">
						<s:iterator value="#session.fourRunpics" status="it">
							<s:if test="#it.getIndex()==0">
								<div class="item active">
									<img src="<%=basePath%>img/<s:property value='runpicPath'/>" style="height:280px;width:100%;" class="img-responsive"
										alt="<s:property value='disc'/>" />
								</div>
							</s:if>
							<s:else>
								<div class="item">
									<img src="<%=basePath%>img/<s:property value='runpicPath'/>" style="height:280px;width:100%;" class="img-responsive"
										alt="<s:property value='disc'/>" />
								</div>
							</s:else>
						</s:iterator>
					</s:if>
					<s:if test="#session.fourRunpics==null">
						<div class="item active">
					</s:if>
					<s:else>
						<div class="item">
					</s:else>
					<img src="<%=basePath%>/img/index1.jpg" alt="..." style="height:280px;width:100%;" class="img-responsive">
				</div>
				<div class="item">
					<img src="<%=basePath%>/img/index2.jpg" alt="..." style="height:280px;width:100%;" class="img-responsive">
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	</div>
	<!-- 图片轮播区域 -->
	<!-- 最新课程区域 -->
	<div class="course container-fluid">
		<!-- 最新课程标题 -->
		<div class="row">
			<div class="top">
				<h2 style="color:white;"><strong>最新课程</strong></h2>
			</div>
		</div>
		<!-- 最新课程标题结束 -->
		<!-- 课程罗列 -->
		<div class="row" style="margin: 0 auto;">
			<s:iterator value="#session.forthCoursesList">
				<div class="col-md-3">
					<div class="row learning">
						<div class="col-md-10">
							<div class="media row">
								<div class="media-left" style="margin:0 auto;">
									<a href="course_getCourseDetailInfo.do?courseId=<s:property value='courseId'/>&&userId=<s:if test="#session.loginUser==null">0</s:if><s:else><s:property value='#session.loginUser.userId'/></s:else>"> <img class="media-object" style="height: 200px; width:100%;"
										src="<%=basePath%>/head/<s:property value='courseHead'/>"
										alt="<s:property value='courseIntroduction'/>">
									</a>
									<%-- <div class="mask-inner">
										<p>
											<a href=""><span class="glyphicon glyphicon-facetime-video"
												style="font-size: 30px;" aria-hidde   n="true"></span>查看详情</a>
										</p>
									</div> --%>
									
								</div>
							</div>
							<div class="row" style="text-align:center;">
								<h4>
									<s:property value='courseName' />
								</h4>
							</div>
							<div class="row">
								<div class="col-md-12 course_t">
									<s:property value="teacherName" />
								</div>
							</div>
							<div class="row">
								<div class="col-md-12 course_s">
									<s:property value="time" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</s:iterator>
		</div>
	</div>
	<!-- 最新课程区域结束 -->
	<!-- 教师简介 -->

	<div class="teacher container-fluid">
		<div class="teacher_top" style="text-align: center;">
			<h2 style="color:grey;"><strong>本校教师</strong></h2>
		</div>
		<div class="row t" style="margin: 0 auto;">
			<s:iterator value="#session.showTeachersList">
				<div class="col-md-2">
					<div class="row">
						<div id="lefthead">
							<img class="img-circle"
								src="<%=basePath%>/head/<s:property value='head'/>">
						</div>
					</div>
					<div class="row function_b">
						<div>
							<h5>
								<s:property value='nickname' />
							</h5>
						</div>
					</div>
					<div class="row function_d">
						<div>
							<h5>翰林学院</h5>
						</div>
					</div>
				</div>
				<div class="col-md-1"></div>
			</s:iterator>
		</div>
	</div>

	<!-- 教师简介结束 -->
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
	<script src="<%=basePath%>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/jquery.min.js"></script>
	<script type="text/javascript">
		$(function() {
			/* $("#t2").click(function() {
				$("#hide").show();
			}) */
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