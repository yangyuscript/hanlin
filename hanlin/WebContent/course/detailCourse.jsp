<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:wb="http://open.weibo.com/wb">
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
<style>
.right-big {
	background-color: #53606d;
	height: 37px;
	color: white;
	font-size: 20px;
	text-align: center;
}

.right-small {
	background-color: #f5f5f6;
	height: 40px;
}

.right-small p {
	margin-left: 10px;
	margin-right: 10px;
}
</style>
<script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js"
	type="text/javascript" charset="utf-8"></script>
</head>
<body>
	<!-- brand部分 -->
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
	<!-- brand部分结束 -->
	<!-- 主体区 -->
	<div id="middle_part" class="container-fluid">
	            <div class="row">
					<div class="col-md-8" style="margin-top:15px;margin-bottom:15px;">
						<strong>当前位置:</strong><a href="#">我的课程</a>&gt;<a href="#">正在学课程</a>&gt;<a href="#">课程详情</a>
					</div>
				</div>
				<hr>
		<div class="row">
			<!-- 内容展示 -->
			<div class="col-md-8 col-md-offset-1">
			    <input id="courseId" type="hidden" value="<s:property value="#session.courseInfoDetail.getCourseId()"/>"/>
			    <input id="userId" type="hidden" value="<s:property value="#session.loginUser.getUserId()"/>"/>
				<div class="media">
					<div class="media-left">
						<a href="#"><img id="course-head" class="media-object"
							src="<%=basePath %>/head/<s:property value="#session.courseInfoDetail.getCourseHead()"/>" width="200px" height="150px"
							alt="hehe"> </a>
					</div>
					<div class="media-body">
						<h4 class="media-heading"><s:property value="#session.courseInfoDetail.getCourseName()"/></h4>
						<p>
							当前学习人数：<font id="learnPeopleNum" style="color: #339865"><s:property value="#session.courseInfoDetail.getLearningPeopleNum()"/></font>人
						</p>
						<p>
							当前收藏人数：<font id="likePeopleNum" style="color: #339865"><s:property value="#session.courseInfoDetail.getLikeingPeopleNum()"/></font>人
						</p>
						<p>
							开课时间:<font><s:property value="#session.courseInfoDetail.getTime()"/></font> 
							<%-- <input type="text" value="<s:property value='#session.isHaveLearned'/>"/> --%>
							<s:if test="#session.isHaveLearned==true">
							    <input id="learn_course" type="button" class="btn btn-default" value="已学习" />
							</s:if>
							<s:else>
							    <input id="learn_course" type="button" class="btn btn-default" value="加入学习" />
							</s:else>
							<%-- <input type="text" value="<s:property value='#session.isHaveLiked'/>"/> --%>
							<s:if test="#session.isHaveLiked==true">
							    <input id="like_course" type="button" class="btn btn-default" value="已收藏" />
							</s:if>
							<s:else>
							    <input id="like_course" type="button" class="btn btn-default" value="加入收藏" />
							</s:else>
							
					</div>
				</div>
			</div>
			<div class="col-md-2">
				<p>
					课程满意度:<span style="color: red" class="glyphicon glyphicon-heart"
						aria-hidden="true"></span><span style="color: red"
						class="glyphicon glyphicon-heart" aria-hidden="true"></span><span
						style="color: red" class="glyphicon glyphicon-heart"
						aria-hidden="true"></span><span style="color: red"
						class="glyphicon glyphicon-heart" aria-hidden="true"></span><span
						style="color: red" class="glyphicon glyphicon-heart"
						aria-hidden="true"></span>
				</p>
				<br> <br> <br> 分享到：
				<script type="text/javascript">
					(function() {
						var p = {
							url : location.href, /*获取URL，可加上来自分享到QQ标识，方便统计*/
							desc : '', /*分享理由(风格应模拟用户对话),支持多分享语随机展现（使用|分隔）*/
							title : '', /*分享标题(可选)*/
							summary : '', /*分享摘要(可选)*/
							pics : '', /*分享图片(可选)*/
							flash : '', /*视频地址(可选)*/
							site : '', /*分享来源(可选) 如：QQ分享*/
							style : '201',
							width : 32,
							height : 32
						};
						var s = [];
						for ( var i in p) {
							s.push(i + '=' + encodeURIComponent(p[i] || ''));
						}
						document
								.write([
										'<a class="qcShareQQDiv" href="http://connect.qq.com/widget/shareqq/index.html?',
										s.join('&'),
										'" target="_blank">分享到QQ</a>' ]
										.join(''));
					})();
				</script>
				<script src="http://connect.qq.com/widget/loader/loader.js"
					widget="shareqq" charset="utf-8"></script>
				<wb:share-button addition="simple" type="button"
					default_text="大王叫我来寻山" ralateUid="3971059777"></wb:share-button>
			</div>
			<!-- 内容展示结束 -->
		</div>
		<hr>
		<div class="row">
			<div class="col-md-8 col-md-offset-1">
				<div class="row">
					<div class="col-md-12">
						<h4>
							<span class="glyphicon glyphicon-blackboard" aria-hidden="true"></span>课程介绍
						</h4>
						<p><s:property value="#session.courseInfoDetail.getCourseIntroduction()"/>
						</p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<h4>
							<span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>课程大纲
						</h4>
						<div class="introduction">
							<s:if test="#session.characterAndMeasureList.size()==0">
				   <h4 style="color:red;">该课程还没有任何章节哦！</h4>
				</s:if>
				<s:iterator value="#session.characterAndMeasureList" status="st">			
				<div class="row">
					<div class="col-md-12 character-model">
							<h3 class="character-head">
									<span class="glyphicon glyphicon-list-alt"></span>&nbsp;&nbsp;&nbsp;<a class="character-open" href="#">第<s:property value="#st.getIndex()+1"/>章
									<span class="m_title"><s:property value="title"/></span>
									<small><span class="m_discription"><s:property value="discription"/></span></small></a>
							</h3>
							<s:if test="measureList.size()==0">
							   <h4 style="color:red;">该章还没有任何小节哦！</h4>
							</s:if>
							<ul class="list-group character-content">
							   <s:iterator value="measureList" status="st2">
							      <li class="list-group-item"><a href="<%=basePath %>/teacher_checkMeasure.do?measureId=<s:property value='measureId'/>&&userId=<s:property value='#session.loginUser.userId'/>" target="_blank"><s:property value="#st.index+1"/>.<s:property value="#st2.index+1"/> <s:property value="title"/></a>
							      </li>
							   </s:iterator>
							</ul>
					</div>
				</div>
				</s:iterator>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<h4>
							<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>课程评价
						</h4>
						<s:if test="#session.courseCommentInfoList.size()==0">
						   <h4 style="color:red;">该课程暂无任何评价哟！！！</h4>
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
										<img src="<%=basePath %>head/<s:property value='user.getHead()'/>" width="40px" height="40px"
											class="img-circle" /> <font><s:property value='user.getName()'/></font>
									</p>
								</td>
								<td><s:property value='content'/></td>
								<td><s:property value='time'/></td>
							</tr>
							</s:iterator>
						</table>
						</s:else>
					</div>
				</div>
			</div>
			<!-- 右侧内容 -->
			<div class="col-md-3">
				<div class="row">
					<div class="col-md-10">
						<div class="right-big">
							<p>课程老师</p>
						</div>
						<div class="right-small">
							<div class="media" style="margin-left: 10px; margin-right: 10px;">
								<div class="media-left media-middle">
									<a href="#"> <img class="media-object img-circle"
										src="<%=basePath %>head/<s:property value='#session.courseInfoDetail.teacherHead'/>" width="40px" height="40px"
										alt="...">
									</a>
								</div>
								<div class="media-body">
									<p class="media-heading">
										<a href="#"><s:property value="#session.courseInfoDetail.teacherName"/></a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-10">
						<div class="right-big">
							<p>课程类型</p>
						</div>
						<div class="right-small">
							<p><s:property value="#session.courseInfoDetail.courseTypeInfo"/></p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-10">
						<div class="right-big">
							<p>课前要求
							<p>
						</div>
						<div class="right-small" style="height:auto;margin-bottom:20px;">
							<p><s:property value="#session.courseInfoDetail.courseTips"/></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 主体区结束 -->
	<!-- footer区 -->
	<div class="container-fluid">
		<nav class="navbar navbar-default navbar-fixed-bottom">
		<div class="container-fluid">
			<div class="row foot">
				<div class="col-md-12">
					<p>南京邮电大学&nbsp;&nbsp;|&nbsp;&nbsp;计算机学院与软件学院&nbsp;&nbsp;林光翔&nbsp;联系方式：1837475870@qq.com</p>
				</div>
			</div>
		</div>
	</nav>
	</div>
	<!-- footer区结束 -->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="<%=basePath %>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=basePath %>/lin_js/jquery-1.10.2.min.js"></script>
	<script type="text/javascript" src="<%=basePath %>/lin_js/showTip.js"></script>
	<script type="text/javascript">
		$(function() {		    
			$("#course-head").hover(function() {
                $(this).animate({height:"200px",width:"300px"},"slow");
			},function(){
				$(this).animate({height:"150px",width:"200px"},"slow");
			});
			$("#learn_course").click(function(){			
				if($("#learn_course").val()=="已学习"){
					ShowFailure("您已经在学习该课程中了哦！");
				}else{
				$("#learn_course").attr("disabled","disabled");
				$.ajax({
					url:"course_learnCourse.do",
					type:"post",
					data:{
						"courseId":$("#courseId").val(),
						"userId":$("#userId").val()
					},
					success:function(data){
						if(data.learn=="ok"){
							var $learnPeopleNum=parseInt($("#learnPeopleNum").html())+1;
							$("#learnPeopleNum").html($learnPeopleNum);
							$("#learn_course").val("已学习");														
						}
					}
				});
				}
			});
			$("#like_course").click(function(){
				
				if($("#like_course").val()=="已收藏"){
					ShowFailure("您已经收藏该课程了哦！");
				}else{
				$("#like_course").attr("disabled","disabled");
				$.ajax({
					url:"course_likeCourse.do",
					type:"post",
					data:{
						"courseId":$("#courseId").val(),
						"userId":$("#userId").val()
					},
					success:function(data){
						if(data.like=="ok"){
							var $likePeopleNum=parseInt($("#likePeopleNum").html())+1;
							$("#likePeopleNum").html($likePeopleNum);
							$("#like_course").val("已收藏");
						}
					}
				});
				}
			});
		});
	</script>
</body>
</html>