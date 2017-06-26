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
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
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
</head>
<body>
	<!-- brand部分 -->
	<div id="head_part" class="container-fluid"
		style="background-color: #f5f5f6">
		<div class="row">
			<div class="col-xs-11 col-xs-offset-1 col-md-4 col-md-offset-1">
				<h2>
					<a href="<%=basePath%>course_beginWebsiteB.do"><img
						src="<%=basePath%>/img/brandbest.png" width="70px" height="70px" />翰林学院</a>
				</h2>
			</div>
			<a href="<%=basePath%>student/index.jsp">
				<div class="col-xs-3 col-xs-offset-1 col-md-1">
					<h3 style="margin-top: 28px; margin-left: 5px;">首页</h3>
					<h5 style="margin-top: -5px; margin-left: 10px;">home</h5>
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
								src="<%=basePath%>head/<s:property value='#session.loginUser.head'/>"
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
					<div class="col-md-8"
						style="margin-top: 15px; margin-bottom: 15px;">
						<strong>当前位置:</strong><a href="#">我的课程</a>&gt;<a href="#">课程管理</a>&gt;<a
							href="#">查看章节</a>
					</div>
					<!-- <div class="col-md-4">
						<form class="form-inline">
							<div class="form-group">
								<input type="text" class="form-control" id="search"
									placeholder="搜索您想要寻找的课程">
							</div>
							<button type="submit" class="btn btn-default">搜索</button>
						</form>
					</div> -->
				</div>
				<div class="row course_learning">
					<div class="col-md-10">
						<div class="media">
							<div class="media-left mask-wrapper" style="height: 146px;">
								<a href="#"> <img class="media-object"
									src="<%=basePath%>/img/defaultcourse.jpg" alt="...">
								</a>
								<div class="mask-inner">
									<p>
										<span class="glyphicon glyphicon-facetime-video"
											style="font-size: 30px;" aria-hidden="true"></span>去学习
									</p>
								</div>
							</div>
							<div class="media-body">
								<h4 class="media-heading">
									<s:property value="#session.lookCourse.courseName" />
								</h4>
								学习人数：<a href="#"><s:property
										value="#session.lookCourse.learningPeopleNum" /></a>人<br>
								收藏人数：<a href="#"><s:property
										value="#session.lookCourse.likeingPeopleNum" /></a>人 <br>上次学习详情：<a
									href="#">bootstrap入门。。。</a> <br> <br> <font
									style="size: 20px;"><s:property
										value="#session.lookCourse.time" /></font>
							</div>
						</div>
					</div>
					<div class="col-md-1">
						<a class="addCharacter" href="#" data-toggle="modal"
							data-target="#myModal">添加章节</a> <input type="hidden" id="cid"
							value="<s:property value='#session.lookCourse.courseId'/>" /><br>
					</div>
				</div>
				<hr>
				<s:if test="#session.characterAndMeasureList.size()==0">
					<h4 style="color: red;">该课程还没有任何章节，请您尽快添加哦！</h4>
				</s:if>
				<s:iterator value="#session.characterAndMeasureList" status="st">
					<div class="row">
						<div class="col-md-12 character-model">
							<h3 class="character-head">
								<span class="glyphicon glyphicon-list-alt"></span>&nbsp;&nbsp;&nbsp;<a
									class="character-open" href="#">第<s:property
										value="#st.getIndex()+1" />章 <span class="m_title"><s:property
											value="title" /></span> <small><span class="m_discription"><s:property
												value="discription" /></span></small></a>&nbsp;&nbsp;&nbsp; <small><a
									class="modify_character" data-toggle="modal"
									data-target="#myModal2" href="#">修改</a> <input type="hidden"
									value="<s:property value='characterId'/>" /> &nbsp;<a
									href="<%=basePath%>/teacher_addSmallCharacterB.do?characterId=<s:property value='characterId'/>">添加小节</a></small>
							</h3>
							<s:if test="measureList.size()==0">
								<h4 style="color: red;">该章还没有任何小节，请您尽快添加哦！</h4>
							</s:if>
							<ul class="list-group character-content">
								<s:iterator value="measureList" status="st2">
									<li class="list-group-item" style="height: 60px;"><a
										href="<%=basePath%>/teacher_checkMeasure.do?measureId=<s:property value='measureId'/>"
										target="_blank"><s:property value="#st.index+1" />.<s:property
												value="#st2.index+1" /> <s:property value="title" /></a><span
										style="float: right;"> <s:if
												test='isHaveExercise=="no"'>
												<a
													href="teacher_addExerciseB.do?measureId=<s:property value='measureId'/>"><span
													style="color: red;">添加习题</span></a>&nbsp;
							         </s:if> <s:else>
												<a
													href="teacher_checkExercise.do?measureId=<s:property value='measureId'/>">查看习题</a>&nbsp;
							         </s:else> <!-- <a href="#">修改</a> -->&nbsp;&nbsp;<a href="#" class="delMeasure_confirm"
											data-toggle="modal" data-target="#myModal_delM">删除</a><input type="hidden" value="<s:property value='measureId'/>"/><input type="hidden" value="<s:property value='title'/>"/></span></li>
								</s:iterator>
							</ul>
						</div>
					</div>
				</s:iterator>
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
						value="添加" /><span id="tip_addC"
						style="color: red; display: none;">请完善章节信息！</span>
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
	<!-- 删除课程章节里的小节 -->
	<div id="myModal_delM" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="mySmallModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">提示</h4>
				</div>
				<div class="modal-body">
				   <input type="hidden" id="delMeasureId" value=""/>
				   <p>是否删除小节:<p id="delMeasureTitile" style="color:red;text-align:center;"></p></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" id="delM_btn" class="btn btn-primary">删除</button><span id="tip_delM" style="color:red;display:none;">删除小节失败，请重试!</span>
				</div>
			</div>
		</div>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="<%=basePath%>/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>/lin_js/jquery-1.10.2.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>/lin_js/showTip.js"></script>
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
			//教师在某课程下添加章
			$(".addCharacter").click(function() {
				//alert($(this).next().val());
				$("#courseId").val($(this).next().val());
				//alert($("#courseId").val());
			});
			$("#addCharacter_btn")
					.click(
							function() {
								alert($("#courseId").val() + " "
										+ $("#characterTitle").val() + " "
										+ $("#characterDiscription").val());
								if ($("#characterTitle").val() != ""
										&& $("#characterDiscription").val() != "") {
									$
											.ajax({
												url : "teacher_addCharacter.do",
												type : "post",
												data : {
													"character.courseId" : $(
															"#courseId").val(),
													"character.title" : $(
															"#characterTitle")
															.val(),
													"character.discription" : $(
															"#characterDiscription")
															.val(),
												},
												dataType : "json",
												success : function(data) {
													if (data.addCharacter == "yes") {
														ShowSuccess("操作成功");
														$("#tip_addC").hide();
														window.location.href = "lookCharacter.jsp";
													} else {
														ShowFailure("操作失败");
													}
												}
											});
								} else {
									$("#tip_addC").show();
								}

							});
			//教师修改某课程下的章
			var $this;
			$(".modify_character").click(
					function() {
						/* alert($(this).parents(".character-head").find(".m_discription").text());
						alert($(this).next().val()); */
						$("#characterId").val($(this).next().val());
						$("#m_characterTitle").val(
								$(this).parents(".character-head").find(
										".m_title").text());
						$("#m_characterDiscription").val(
								$(this).parents(".character-head").find(
										".m_discription").text());
						$this = $(this);
					});
			$("#modifyCharacter_btn").click(
					function() {
						if ($("#m_characterTitle").val() != ""
								&& $("#m_characterDiscription").val() != "") {
							$.ajax({
								url : "teacher_modifyCharacter.do",
								type : "post",
								data : {
									"character.characterId" : $("#characterId")
											.val(),
									"character.title" : $("#m_characterTitle")
											.val(),
									"character.discription" : $(
											"#m_characterDiscription").val()
								},
								dataType : "json",
								success : function(data) {
									if (data.modifyCharacter == "yes") {
										ShowSuccess("修改成功");
										$this.parents(".character-head").find(
												".m_title").text(
												$("#m_characterTitle").val());
										$this.parents(".character-head").find(
												".m_discription").text(
												$("#m_characterDiscription")
														.val());
									} else {
										ShowFailure("修改失败");
									}
								}
							});
						}
					});
			//删除课程章节里的小章节
			$(".delMeasure_confirm").click(function(){
				$("#delMeasureId").val($(this).next().val());
				//alert("delMeasureId is:"+$(this).next().val());
				$("#delMeasureTitile").text($(this).next().next().val());
				//alert("delMeasureTitle is:"+$(this).next().next().val());
			});
			$("#delM_btn").click(function(){
				$.ajax({
					url : "teacher_delMeasure.do",
					type : "post",
					data : {
						"measureId" : $("#delMeasureId").val()
					},
					dataType : "json",
					success : function(data) {
						if (data.delM == "yes") {
							var $cid=$("#cid").val();
							$("#tip_delM").hide();
							//$("#myModal_delM").modal('hide');
							window.location.href="<%=basePath %>/teacher_lookCharacter.do?courseId="+$cid;
						} else {
							$("#tip_delM").show();
						}
					}
				});
			});
		});
	</script>

</body>
</html>