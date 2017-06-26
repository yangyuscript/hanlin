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
<title>翰林学院-课程小节</title>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<link rel="shortcut icon" href="<%=basePath%>/img/brandbest.png" />
<!-- Bootstrap -->
<link href="<%=basePath%>/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=basePath%>/lin_css/backmodel.css" rel="stylesheet">
<link rel="stylesheet" href="<%=basePath%>/lin_css/danmuplayer.css">
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
			<!-- 左侧功能区结束 -->
			<!-- 右侧内容展示 -->
			<div id="content_part" class="col-xs-12 col-md-9 col-md-offset-1">
				<input id="measureId" type="hidden"
					value="<s:property value='#session.checkedMeasure.measureId'/>" />
				<input id="videoPath" type="hidden"
					value="<s:property escape="false" value='#session.checkedMeasure.videoPath'/>" />
				<div class="row">
				   <div class="col-xs-12 col-md-12">
					<h3>
						<s:property value="#session.checkedMeasure.title" />
					</h3>
				   </div>
				</div>
				<div class="row">
				<div class="col-xs-12 col-md-12">
					<a target="_blank"
						href="<%=basePath%>course_workExerciseB.do?measureId=<s:property value='#session.checkedMeasure.measureId'/>"><h5>做习题>>GO</h5></a>
				</div>
				</div>
				<%-- <video src="<s:property value='#session.checkedMeasure.videoPath'/>" width="500" heigth="400" controls="controls">
			      </video> --%>
			      <div class="row">
				<div class="col-xs-12 col-md-12">
				<div id="danmup"></div>
				</div>
				</div>
				<div class="row">
				<div class="col-xs-12 col-md-12">
				<h4>课程描述：</h4>
				</div>
				</div>
				<div class="row">
				<div class="col-xs-12 col-md-12">
				<p>
					<s:property escape="false"
						value="#session.checkedMeasure.discription" />
				</p>
				</div>
				</div>
				<div class="row">
				<div class="col-xs-12 col-md-12">
				<h4>发表评论帖</h4>
				</div>
				</div>
				<div class="row">
					<input id="post_userId" type="hidden"
						value="<s:property value='#session.loginUser.userId'/>" /> <input
						id="post_courseId" type="hidden"
						value="<s:property value='#session.checkedMeasure.courseId'/>" />
					<input id="post_characterId" type="hidden"
						value="<s:property value='#session.checkedMeasure.characterId'/>" />
					<input id="post_measureId" type="hidden"
						value="<s:property value='#session.checkedMeasure.measureId'/>" />
					<div class="col-xs-12 col-md-12">
						<textarea id="post_content" class="form-control" rows="3"></textarea>
					</div>
					<div class="col-xs-12 col-md-12">
						<input type="button" class="btn btn-success" id="sub_post"
							value="发表" />
					</div>
				</div>
				<h4>小节评论帖：</h4>
				<div id="measurePosts">
					<s:if test="#session.measurePostInfos.size()==0">
						<h4 style="color: red;">该小节没有任何评论哦！快发表您的观点吧。。。</h4>
					</s:if>
					<s:else>
						<s:iterator value="#session.measurePostInfos">
							<div class="row">
								<div class="col-xs-12 col-md-12">
									<img class="img-circle"
										src="<%=basePath%>head/<s:property value='user.getHead()'/>"
										style="vertical-align: middle;" width="20" height="20"
										alt="..." />
									<s:property value='user.getNickname()' />
								</div>
								<div class="col-xs-12 col-md-8" style="margin-top: 5px;">
									<!-- <h4 class="media-heading"></h4> -->
									<p>
										<s:property value="content" />
									</p>
									<p>
										赞:(
										<s:property value="likeNum" />
										)&nbsp;&nbsp;&nbsp;回复数:(
										<s:property value="replyNum" />
										)&nbsp;&nbsp;&nbsp;
										<s:property value="time" />
									</p>
								</div>
							</div>
							<hr>
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
			<div class="col-xs-12 col-md-12">
				<p>南京邮电大学&nbsp;&nbsp;|&nbsp;&nbsp;计算机学院与软件学院&nbsp;&nbsp;林光翔&nbsp;联系方式：1837475870@qq.com</p>
			</div>
		</div>
	</div>
	</nav>
	<!-- footer区结束 -->
	<!--给课程添加章  -->
	<div id="myModal" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="mySmallModalLabel">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<h4 style="text-align: center;">给课程添加章节</h4>
				<input type="hidden" id="courseId" />
				<p>
					章节名称：<input type="text" id="characterTitle" class="form-control" />
				</p>
				<p>
					章节描述：<br>
					<textarea class="form-control" id="characterDiscription" row="3"
						placeholder="描述章节"></textarea>
				</p>
				<p>
					<input id="addCharacter_btn" class="btn btn-default" type="button"
						value="添加" />
				</p>

			</div>
		</div>
	</div>
	<!--修改课程的某个章  -->
	<div id="myModal2" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="mySmallModalLabel">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<h4 style="text-align: center;">修改课程章节</h4>
				<input type="hidden" id="characterId" />
				<p>
					章节名称：<input type="text" id="m_characterTitle" class="form-control" />
				</p>
				<p>
					章节描述：<br>
					<textarea class="form-control" id="m_characterDiscription" row="3"
						placeholder="描述章节"></textarea>
				</p>
				<p>
					<input id="modifyCharacter_btn" class="btn btn-default"
						type="button" value="修改" />
				</p>
			</div>
		</div>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="<%=basePath%>/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>/lin_js/jquery-1.11.3.js"></script>
	<script type="text/javascript" src="<%=basePath%>/lin_js/showTip.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>/lin_js/danmuplayer.js"></script>
		<script type="text/javascript"
		src="<%=basePath%>/lin_js/judgebrowser.js"></script>
	<script type="text/javascript">
	browserRedirect();
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
			$(".character-content").hide();
			$(".character-open").click(
					function() {
						//alert($(this).parents(".character-model").html());
						$(this).parents(".character-model").find(
								".character-content").toggle("500");
					});
			$("#sub_comment").click(function() {
				ShowSuccess("评价成功！");//$("#myModal").modal("hide");不能用
			});
			//弹幕操作
			//alert($width+" "+$height);
			var $measureId = $("#measureId").val();
			//alert($("#measureId").val());
			//alert($("#videoPath").val());
			$("#danmup").danmuplayer(
					{
						src : $("#videoPath").val(), //视频源
						//src:"http://localhost:8080/hanlin/ueditor/jsp/upload/video/20160515/1463280836902047124.mp4",
						width : $width, //视频宽度
						height : $height, //视频高度
						url_to_get_danmu : "course_findDanmus.do?measureId="
								+ $measureId, //用来接收弹幕信息的url
						url_to_post_danmu : "course_addDanmu.do?measureId="
								+ $measureId //用来存储弹幕信息的url
					});
			//用户就小节发表评论
			$("#sub_post")
					.click(
							function() {
								if ($("#post_content").val() == "") {
									ShowMiddle("评论帖内容不能为空哦！");
								} else {
									$
											.ajax({
												url : "user_subPost.do",
												type : "post",
												data : {
													"post.userId" : $(
															"#post_userId")
															.val(),
													"post.courseId" : $(
															"#post_courseId")
															.val(),
													"post.characterId" : $(
															"#post_characterId")
															.val(),
													"post.measureId" : $(
															"#post_measureId")
															.val(),
													"post.content" : $(
															"#post_content")
															.val()
												},
												dataType : "json",
												success : function(data) {
													$("#post_content").val("");
													/* $("#measurePosts")
															.prepend(
																	'<div class="media"><div class="media-left" style="width:6%;"><a href="#"><img class="media-object" src="../head/'
																		+ data.newPost.user
																				.head
																		+ '" alt="..."></a><p>'
																			+ data.newPost.user.nickname
																			+ '</p></div><div class="media-body"><p>'
																			+ data.newPost.content
																			+ '</p><p>赞:('
																			+ data.newPost.likeNum
																			+ ')&nbsp;&nbsp;&nbsp;回复数:('
																			+ data.newPost.replyNum
																			+ ')&nbsp;&nbsp;&nbsp;'
																			+ data.newPost.time
																			+ '</p></div></div><hr>'); */
													$("#measurePosts").prepend('<div class="row"><div class="col-xs-12 col-md-12"><img class="img-circle" src="<%=basePath%>head/'+data.newPost.user.head+'" style="vertical-align: middle;" width="20" height="20" alt="..." />'+data.newPost.user.nickname+'</div><div class="col-xs-12 col-md-8" style="margin-top: 5px;"><p>'+data.newPost.content+'</p><p>赞:('+data.newPost.likeNum+')&nbsp;&nbsp;&nbsp;回复数:('+data.newPost.replyNum+')&nbsp;&nbsp;&nbsp;'+data.newPost.time+'</p></div></div><hr>');
												}
											});
								}
							});

		});
	</script>

</body>
</html>