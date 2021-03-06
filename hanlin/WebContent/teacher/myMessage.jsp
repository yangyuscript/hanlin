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
<link href="<%=basePath %>/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=basePath %>/lin_css/backmodel.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript"
	src="<%=basePath%>/lin_js/jquery-1.11.3.js"></script>
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
						<h5>
							<s:property value="#session.loginUser.nickname" />
						</h5>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b" style="margin-top: 10px;">
						<div>
							<a href="#"><h5>
									<img src="<%=basePath%>/img/course.jpg"
										style="margin-left: -70px; margin-right: 30px;" />我的课程
								</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="<%=basePath%>teacher/learningCourse.jsp"><h5>正在学课程</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="<%=basePath%>/teacher/likeCourse.jsp"><h5>收藏课程</h5></a>
						</div>
					</div>
					<s:if test="#session.loginUser.condi!=0">
						<div class="row function_s">
							<div>
								<a href="<%=basePath%>/teacher/foundCourse.jsp"><h5>创建课程</h5></a>
							</div>
						</div>
						<div class="row function_s">
							<div>
								<a href="<%=basePath%>/teacher/managerCourse.jsp"><h5>课程管理</h5></a>
							</div>
						</div>
					</s:if>
					<s:else>
						<div class="row function_s">
							<div>
								<a href="<%=basePath%>/teacher/toBeTea.jsp"><h5>申请成为教师</h5></a>
							</div>
						</div>
					</s:else>
				</div>
				<s:if test="#session.loginUser.condi==10">
					<div class="onemodel">
						<div class="row function_b">
							<div>
								<a href="#"><h5>
										<img src="<%=basePath%>/img/homework.png"
											style="margin-left: -70px; margin-right: 30px;" />我的习题
									</h5></a>
							</div>
						</div>
						<div class="row function_s">
							<div>
								<a href="<%=basePath%>teacher/managerCourse.jsp"><h5>发布习题</h5></a>
							</div>
						</div>
						<div class="row function_s">
							<div>
								<a href="<%=basePath%>teacher/managerCourse.jsp"><h5>习题管理</h5></a>
							</div>
						</div>
						<div class="row function_s">
							<div>
								<a href="<%=basePath%>teacher/managerCourse.jsp"><h5>批改习题</h5></a>
							</div>
						</div>
					</div>
				</s:if>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="<%=basePath%>teacher/myPost.jsp"><h5>
									<img src="<%=basePath%>/img/tiezi3.png"
										style="margin-left: -70px; margin-right: 36px;" />我的帖子
								</h5></a>
						</div>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="<%=basePath%>teacher/myMessage.jsp"><h5>
									<img src="<%=basePath%>/img/message.png"
										style="margin-left: -70px; margin-right: 25px;" />我的消息
								</h5></a>
						</div>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="<%=basePath%>teacher/myInfo.jsp"><h5>
									<img src="<%=basePath%>/img/info.png"
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
						<strong>当前位置:</strong><a href="#">首页</a>&gt;<a href="#">我的消息</a>
					</div>
					<div class="col-md-3 col-xs-3 col-xs-offset-5">
					<s:if test="#session.loginUser.condi!=0">
						<input type="button" class="btn btn-default" data-toggle="modal"
							data-target="#announce" value="发布通知" />
					</s:if>
					</div>
					<div class="col-md-3 col-xs-3">
					<s:if test="#session.loginUser.condi!=0">
						<input type="button" class="btn btn-default" data-toggle="modal"
							data-target="#myModal" value="提交疑问" />
					</s:if>
					</div>
				</div>
				<hr>
				<div class="row message-part" style="background-color: #f5f5f6">
					<s:if test="#session.userMessages.size()==0">
						<strong><h3>通知</h3></strong>
						<h4 style="color:red;">您暂时没有任何通知哦!</h4>
					</s:if>
					<s:else>
						<h3>通知</h3>
						<s:iterator value="#session.userMessages">
							<div class="col-md-10 col-xs-12">
								<a href="#"><h3>
										<font style="color:#339865"><s:property value='title' /></font><small>信息通知</small>
									</h3></a>
								<p>
									内容：<s:property value='content' />
								</p>
								<p style="float: right">
									<img class="img-circle" width="30px" height="30px"
										src="<%=basePath %>/head/<s:property value='sendUser.getHead()'/>" />
									<s:property value='sendUser.getNickname()' />
									&nbsp;&nbsp;&nbsp;&nbsp;
									<s:property value='time' />
								</p>
							</div>
						</s:iterator>
					</s:else>
					<hr>
					<s:if test="#session.allNotices.size()==0">
						<strong><h3>公告</h3></strong>
						<h4 style="color:red;">您暂时没有任何公告哦!</h4>
					</s:if>
					<s:else>
						<strong><h3>公告</h3></strong>
						<s:iterator value="#session.allNotices">
							<s:if
								test="#session.loginUser.condi==0&&noticeType==2||noticeType==3">
								<div class="col-md-10 col-xs-12">
									<a href="#"><h3>
											<font style="color:#339865"><s:property value='title' /></font><small>信息公告</small>
										</h3></a>
									<p>
										内容：<s:property value='content' />
									</p>
									<p style="float: right">
										<img class="img-circle" width="30px" height="30px"
											src="../head/<s:property value='sendUser.getHead()'/>" />
										<s:property value='sendUser.getNickname()' />
										&nbsp;&nbsp;&nbsp;&nbsp;
										<s:property value='time' />
									</p>
								</div>
							</s:if>
							<s:if
								test="#session.loginUser.condi==1&&noticeType==1">
								<div class="col-md-10 col-xs-12">
									<a href="#"><h3>
											<font style="color:#339865"><s:property value='title' /></font><small>信息公告</small>
										</h3></a>
									<p>
										内容：<s:property value='content' />
									</p>
									<p style="float: right">
										<img class="img-circle" width="30px" height="30px"
											src="../head/<s:property value='sendUser.getHead()'/>" />
										<s:property value='sendUser.getNickname()' />
										&nbsp;&nbsp;&nbsp;&nbsp;
										<s:property value='time' />
									</p>
								</div>
							</s:if>
						</s:iterator>
					</s:else>

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
	<div id="myModal" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="mySmallModalLabel">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<h4>向管理员提交疑问</h4>
				<form>
				    <input type="hidden" id="message_senderId" value="<s:property value='#session.loginUser.userId'/>"/>
					<p>
						问题描述：<br>
						<textarea class="form-control" row="3" id="message_content" placeholder="描述您遇到的问题"></textarea>
					</p>
					<p>
						<input id="sub_comment" class="btn btn-default" type="button"
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
	<script src="<%=basePath %>js/bootstrap.min.js"></script>
	<%-- <script type="text/javascript" src="<%=basePath %>js/jquery.min.js"></script> --%>
	<script type="text/javascript" src="<%=basePath %>lin_js/showTip.js"></script>
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
			$("#sub_comment").click(function(){
				$.ajax({
					url:"teacher_subQuestion.do",
					type:"post",
					data:{
						"message_senderId":$("#message_senderId").val(),
						"message_content":$("#message_content").val()
					},
					dataType:"json",
					success:function(data){
						if(data.send_message=="ok"){
							ShowSuccess("发送成功！");
							window.location.href="myMessage.jsp";
						}
					}
				});
			});
		});
	</script>

</body>
</html>