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
<link rel="shortcut icon" href="<%=basePath %>/img/brandbest.png" />
<!-- Bootstrap -->
<link href="<%=basePath %>/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=basePath %>/lin_css/backmodel.css" rel="stylesheet">
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
			<div id="left_part" style="text-align:center;" class="col-md-2 col-md-offset-1">
				<div class="row">
					<div id="lefthead">
						<img class="img-circle" src="<%=basePath %>head/<s:property value='#session.loginUser.head'/>">
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
					<div class="col-md-8" style="margin-top:15px;margin-bottom:15px;">
						<strong>当前位置:</strong><a href="#">我的课程</a>&gt;<a href="#">正在学课程</a>
					</div>				
				</div>
				<!-- <div class="row">
				    <div class="col-md-12">
						<form class="form-inline">
							<div class="form-group">
								<input type="text" class="form-control" id="search"
									placeholder="搜索您想要寻找的课程">
								<button type="submit" class="btn btn-default">搜索</button>
							</div>
						</form>
					</div>
				</div> -->
				<%-- <input type="text" value="<s:property value='#session.myLearnCourseInfoList.size()'/>"/> --%>
				<s:if test="#session.myLearnCourseInfoList.size()==0">
				   <h4 style="color:red;">您暂时还没有学习任何课程，快去寻找喜欢的课程吧！！！</h4>
				</s:if>
				<s:else>
				<s:iterator value="#session.myLearnCourseInfoList">
				<%-- <input type="text" value="<s:property value='conditi'/>"/> --%>
				<s:if test="course.courseCondi==1">
				<div class="row course_learning">
					<div class="col-md-10">
						<div class="media">
							<div class="media-left mask-wrapper">
								<a href="#"> <img class="media-object"
									src="<%=basePath %>/head/<s:property value='course.courseHead'/>" alt="...">
								</a>
								<div class="mask-inner">
									<p>
										<a href="<%=basePath %>/course_lookLearningCourseInfoB.do?courseId=<s:property value='course.courseId'/>"><span class="glyphicon glyphicon-facetime-video"
											style="font-size: 30px;" aria-hidden="true"></span>去学习</a>
									</p>
								</div>
							</div>
							<div class="media-body">
								<h4 class="media-heading"><s:property value='course.courseName'/></h4>
								<a href="#"><img src="../head/<s:property value='user.head'/>"
									class="img-circle" width="35px" height="30px" />&nbsp;<s:property value='user.nickname'/></a> <br>
								<br>上次学习详情：
								<s:if test="learnRecord==null">
								            暂未学习
								</s:if>																   
							    <s:else>
							       <a href="<%=basePath %>/teacher_checkMeasure.do?measureId=<s:property value='learnRecord.measureId'/>&&userId=<s:property value='#session.loginUser.userId'/>" target="_blank""><s:property value='learnRecord.measureName'/></a>
							    </s:else>
								<br>
								<font style="size: 20px;"><s:property value="course.time"/></font>
							</div>
						</div>
					</div>
					<div class="col-md-1">
						<br>
						<a href="course_getCourseDetailInfo.do?courseId=<s:property value='courseId'/>&&userId=<s:property value='#session.loginUser.userId'/>">课程详情</a><br> <br>
						<a href="course_getAnalysis.do?courseId=<s:property value='courseId'/>">学习统计</a><br> <br>
						<a class="quit_course" href="#" data-toggle="modal" data-target="#myModal">退课</a>
						<input type="hidden" value="<s:property value='courseId'/>"/>
						<input type="hidden" value="<s:property value='#session.loginUser.userId'/>"/>
						<input type="hidden" value="<s:property value='myLearnCourseId'/>"/>
					</div>
				</div>
				</s:if>
				<s:else>
				   <div class="row course_learning">
					<div class="col-md-10">
						<div class="media">
							<div class="media-left mask-wrapper">
								<a href="#"> <img class="media-object"
									src="<%=basePath %>/head/<s:property value='course.courseHead'/>" alt="...">
								</a>
								<div class="mask-inner">
									<p>
										<a href="#"><span class="glyphicon glyphicon-facetime-video"
											style="font-size: 30px;" aria-hidden="true"></span>去学习</a>
									</p>
								</div>
							</div>
							<div class="media-body">
								<h4 class="media-heading"><s:property value='course.courseName'/></h4><h3 style="color:red;">该课程已被暂时屏蔽</h3>
								<a href="#"><img src="../head/<s:property value='user.head'/>"
									class="img-circle" width="35px" height="30px" />&nbsp;<s:property value='user.nickname'/></a> <br>
								<br>上次学习详情：
								<s:if test="learnRecord==null">
								            暂未学习
								</s:if>																   
							    <s:else>
							       <a href="#" target="_blank""><s:property value='learnRecord.measureName'/></a>
							    </s:else>
								<br>
								<font style="size: 20px;"><s:property value="course.time"/></font>
							</div>
						</div>
					</div>
					<div class="col-md-1">
						<br>
						<a href="#">课程详情</a><br> <br>
						<a href="#">学习统计</a><br> <br>
						<a class="quit_course" href="#" data-toggle="modal" data-target="#myModal">退课</a>
						<input type="hidden" value="<s:property value='courseId'/>"/>
						<input type="hidden" value="<s:property value='#session.loginUser.userId'/>"/>
						<input type="hidden" value="<s:property value='myLearnCourseId'/>"/>
					</div>
				</div>
				</s:else>
				</s:iterator>
				</s:else>
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
	<div id="myModal" class="modal fade" tabindex="-1" role="dialog"
							aria-labelledby="mySmallModalLabel">
							<div class="modal-dialog modal-sm">
								<div class="modal-content">
									<h4>退课前请做出您对课程的评价吧！</h4>
									<form action="<%=basePath %>/teacher_quitCourse.do" method="post">
									    <input id="userId_courseComment" name="courseComment.userId" type="hidden" value=""/>
									    <input id="courseId_courseComment" name="courseComment.courseId" type="hidden" value=""/>
										<input id="myLearnCourseId" name="myLearnCourseId" type="hidden" value=""/>
										<div class="radio">
											<label> <input type="radio" name="courseComment.level"
												id="optionsRadios1" value="1" checked> 优
											</label>
										
											<label> <input type="radio" name="courseComment.level"
												id="optionsRadios2" value="2"> 良
											</label>
										
											<label> <input type="radio" name="courseComment.level"
												id="optionsRadios3" value="3"> 中
											</label>
										</div>
										<p>评价：<br>
										   <textarea class="form-control" name="courseComment.content" required maxlength="100" row="3" placeholder="写下您的评价"></textarea>
										</p>
										<p><input id="sub_comment" class="btn btn-default" type="submit" value="提交"/></p>
									</form>
								</div>
							</div>
						</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="<%=basePath %>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=basePath %>/lin_js/jquery-1.10.2.min.js"></script>
	<script type="text/javascript" src="<%=basePath %>/lin_js/showTip.js"></script>
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
			$(".quit_course").click(function(){
				//alert($(this).next().val());
				$("#userId_courseComment").val($(this).next().next().val());
				$("#courseId_courseComment").val($(this).next().val());
				$("#myLearnCourseId").val($(this).next().next().next().val());
			});
			
			/* $("#sub_comment").click(function(){
				//ShowSuccess("评价成功！");//$("#myModal").modal("hide");不能用
			}); */
		});
	</script>

</body>
</html>