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
<link rel="shortcut icon" href="<%=basePath%>img/brandbest.png" />
<!-- Bootstrap -->
<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">
<link href="<%=basePath%>lin_css/backmodel.css" rel="stylesheet">
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
<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath %>lin_js/showTip.js"></script>
<script type="text/javascript"
	src="<%=basePath%>My97DatePicker/WdatePicker.js"></script>
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
						<img class="img-circle" src="<%=basePath%>/img/defaulthead.jpg">
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
							<a href="<%=basePath%>super/superManagerCourseType.jsp"><h5>
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
				<%-- <div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="<%=basePath%>/super/superManagerInfo.jsp"><h5>
									<img src="<%=basePath%>/img/info.png"
										style="margin-left: -70px; margin-right: 30px;" />个人信息
								</h5></a>
						</div>
					</div>
				</div> --%>
			</div>
			<!-- 左侧功能区结束 -->
			<!-- 右侧内容展示 -->
			<div id="content_part" class="col-md-9">
				<div class="row">
					<div class="col-md-8 col-xs-12" style="margin-top:15px;margin-bottom:15px;">
						<strong>当前位置:</strong><a href="#">信息管理</a>
					</div>
				</div>
				<hr>
				<div class="row">
					<div id="message_type1" class="col-md-3"
						style="text-align: center; background-color: yellow; border: 1px solid yellow;">
						<h4>收到的消息</h4>
					</div>
					<div id="message_type2" class="col-md-3"
						style="text-align: center; border: 1px solid yellow;">
						<h4>发送的消息</h4>
					</div>
					<div class="col-md-2 col-md-offset-1">
						<a class="btn btn-default" role="button" href="super_updateMessages.do?userId=<s:property value='#session.loginUser.userId'/>">刷新消息</a>
					</div>
					<div class="col-md-2">
						<a class="btn btn-default" role="button" data-toggle="modal"
							data-target="#myModal" href="#">发送公告</a>
					</div>
					<!-- <div class="col-md-2">
						<a class="btn btn-default" role="button" data-toggle="modal"
							data-target="#myModal" href="#">发送信息到所有老师</a>
					</div>
					<div class="col-md-2">
						<a class="btn btn-default" role="button" data-toggle="modal"
							data-target="#myModal" href="#">发送信息到所有学生</a>
					</div> -->
				</div>
				<hr>
				<div id="message_recieve">
				    <s:if test="#session.userMessages.size()==0">
				       <h4 style="color:red;">暂未收到任何消息哦！</h4>
				    </s:if>
				    <s:else>
				    <s:iterator value="#session.userMessages">
					<div class="row course_learning">
						<div class="col-md-12">
						    <s:if test="sendUser.getCondi()==0">
						       <h3>
								来自学生的消息--<s:property value='title'/><small><s:property value='sendUser.getNickname()'/></small>
							   </h3>
						    </s:if>
						    <s:if test="sendUser.getCondi()==1">
						       <h3>
								来自老师的消息--<s:property value='title'/><small><s:property value='sendUser.getNickname()'/></small>
							   </h3>
						    </s:if>
							
							<p>内容：<s:property value="content"/>
							</p>
							<p><s:property value="time"/></p>
						</div>
					</div>
					</s:iterator>
					</s:else>
				</div>
				<div id="message_send" style="display:none;">
				    <s:if test="#session.allNotices.size()==0">
				       <h4 style="color:red;">暂未发送任何公告哦！</h4>
				    </s:if>
				    <s:else>
				    <s:iterator value="#session.allNotices">
				 <s:if test="noticeType!=4">		    
					<div class="row course_learning">
						<div class="col-md-12">
							<h3>
								<s:property value='title'/>--<small><img class="img-circle" src="<%=basePath %>/head/<s:property value='sendUser.getHead()'/>" width="30px" height="30px" /><s:property value='sendUser.getNickname()'/></small>
							</h3>
							<p>内容：<s:property value="content"/>
							</p>
							<p><s:property value="time"/></p>
						</div>
					</div><br>
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
				<h4 style="text-align: center;">发送公告</h4>
				<form action="" method="post">
				    <input type="hidden" id="noticeSenduserId" value="<s:property value='#session.loginUser.userId'/>"/>
					<p>
						标题：<br> <input type="text" id="noticeTitle" class="form-control"
							placeholder="标题" />
					</p>
					<p>
						类型：<br>
						<select class="form-control" id="noticeType">
							<option value="1">发送给所有老师</option>
							<option value="2">发送给所有学生</option>
							<option value="3">发送给所有人</option>
						</select>
					</p>
					<p>
						内容：<br>
						<textarea class="form-control" row="3" id="noticeContent" placeholder="内容"></textarea>
					</p>
					<p>
						<input id="sub_notice" class="btn btn-default" type="button"
							value="发送" /><span id="tip" style="display:none;color:red;"></span>
					</p>
				</form>
			</div>
		</div>
	</div>
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
			$("#message_type1").click(function(){
				$("#message_type1").css("background-color","yellow");
				$("#message_type2").css("background-color","white");
				$("#message_recieve").show(1000);
				$("#message_send").hide(1000);
			});
			$("#message_type2").click(function(){
				$("#message_type1").css("background-color","white");
				$("#message_type2").css("background-color","yellow");
				$("#message_recieve").hide(1000);
				$("#message_send").show(1000);
			});
			$("#sub_notice").click(function(){
				//alert(getStrLen($("#noticeTitle").val()));
				if(getStrLen($("#noticeTitle").val())>0&&getStrLen($("#noticeTitle").val())<30){
					if(getStrLen($("#noticeContent").val())>0&&getStrLen($("#noticeContent").val())<600){
						$.ajax({
							url:"super_sendNotice.do",
							type:"post",
							data:{
								"notice.senduserId":$("#noticeSenduserId").val(),
								"notice.title" : $("#noticeTitle").val(),
								"notice.noticeType":$("#noticeType").val(),
								"notice.content":$("#noticeContent").val()
							},
							dataType:"json",
							success:function(data){
								if(data.send=="yes"){
									ShowSuccess("公告成功!");
									$("#noticeTitle").val("");
									$("#noticeType").val("");
									$("#noticeContent").val("");
									window.location.href="superManagerMessage.jsp";
								}else{
									ShowFailure("公告失败!请填写正确内容");
									$("#noticeTitle").val("");
									$("#noticeType").val("");
									$("#noticeContent").val("");
									$('#tip').hide();
								}
							}
						});
					}else{
						//ShowFailure("公告内容不能超过300字哦!");
						$("#tip").text("公告内容不能为空且不能超过300字哦!");
						$("#tip").show();
					}
				}else{
					//ShowFailure("公告标题字数不能超过15哦！");
					$("#tip").text("公告标题不能为空且不能超过15哦！");
					$("#tip").show();
				}
			});
		});
		function getStrLen(val) {
		      var len = 0;
		      for (var i = 0; i < val.length; i++) {
		        var a = val.charAt(i);
		        if (a.match(/[^\x00-\xff]/ig) != null) {
		          len += 2;
		        }
		        else {
		          len += 1;
		        }
		      }
		      return len;
		    }
	</script>

</body>
</html>