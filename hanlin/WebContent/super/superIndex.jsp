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
<link href="<%=basePath%>/lin_css/pagination.css" rel="stylesheet">
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
<script type="text/javascript" src="<%=basePath%>/lin_js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="<%=basePath%>/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="<%=basePath%>/lin_js/pagination.js"></script>
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
							<a href="<%=basePath%>super/superManagerMessage.jsp"><h5>
									<img src="<%=basePath%>/img/message.png"
										style="margin-left: -70px; margin-right: 25px;" />我的消息
								</h5></a>
						</div>
					</div>
				</div>
				<div class="onemodel" style="">
					<div class="row function_b">
						<div>
							<a href="<%=basePath%>super/superManagerRunPic.jsp"><h5>
									<img src="<%=basePath%>/img/zhengshu.png"
										style="margin-left: -70px; margin-right: 25px;" />管理滚屏
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
						<strong>当前位置:</strong><a href="#">课程管理</a>
					</div>
				</div>
				<hr>
				<div class="row">
				   <form action="<%=basePath%>/super_findCoursesByPager.do?pageNum=1" id="searchForm"  method="post">
					<div class="col-md-2">
						<p>
							课程名：<input type="input" class="form-control" name="courseName"
								value="<s:property value='#request.courseName'/>"
								placeholder="课程关键字" />
						</p>
					</div>
					<div class="col-md-2">
						<p>
							开课时间：<input class="Wdate" id="stime1" name="time"
								onFocus="WdatePicker({lang:'zh-cn'})"
								value="<s:property value='#request.time'/>" type="text">
						</p>
					</div>
					<!-- <div class="col-md-1">
						<a class="btn btn-default" href="#" role="button">学习人数降序</a>
					</div>
					<div class="col-md-1">
						<a class="btn btn-default" href="#" role="button">学习人数升序</a>
					</div>
					<div class="col-md-1">
						<a class="btn btn-default" href="#" role="button">收藏人数降序</a>
					</div>
					<div class="col-md-1">
						<a class="btn btn-default" href="#" role="button">收藏人数升序</a>
					</div> -->
					<div class="col-md-1 col-md-offset-1">
						<input type="submit" class="btn btn-default" value="搜索" />
					</div>
					</form>
				</div>
				<hr>
				<%-- <input type="text" value="<s:property value='#session.coursePager.getDataList().size()'/>"/> --%>
				<s:if test="#session.coursePager.getDataList().size()==0">
					<h4 style="color: red;">平台暂时没有任何课程可供学习！！！</h4>
				</s:if>
				<s:else>
					<input type="hidden" id="totalRecord"
						value="<s:property value='#session.coursePager.getTotalRecord()'/>" />
					<input type="hidden" id="currentPage"
						value="<s:property value='#session.coursePager.getCurrentPage()'/>" />
					<input type="hidden" id="pageSize" value="<s:property value='#request.pageSize'/>"/>
					<s:iterator value="#session.coursePager.getDataList()">
						<div class="row">
							<div class="col-md-12">
								<div class="row course_learning">
									<div class="col-md-9">
										<div class="media">
											<div class="media-left mask-wrapper" style="height: 146px;">
												<a href="#"> <img class="media-object"
													src="<%=basePath%>/head/<s:property value='courseHead'/>"
													alt="...">
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
													<s:property value='courseName' />
												</h4>
												学习人数：<a href="#"><s:property value='learningPeopleNum' /></a>人<br>
												收藏人数：<a href="#"><s:property value='likeingPeopleNum' /></a>人 <br>开课老师:<a
													href="#"><s:property value="teacherName"/></a><br> <br> <font
													style="size: 20px;"><s:property value='time' /></font>
											</div>
										</div>
									</div>
									<div class="col-md-2">
										<br> <a href="course_getCourseDetailInfo.do?courseId=<s:property value='courseId'/>&&userId=<s:property value='#session.loginUser.userId'/>">课程详情</a><br> <a href="#">学习统计</a><br>
										<a class="send_message" href="#" data-toggle="modal" data-target="#myModal">向老师发送信息</a>
										<input type="hidden" value="<s:property value='teacherId'/>"/>
										<br>
										<s:if test="courseCondi==1">
										   <a href="super_screenCourse.do?courseId=<s:property value='courseId'/>"><h4>屏蔽课程</h4></a>
									    </s:if>
									    <s:else>
									       <a href="super_unScreenCourse.do?courseId=<s:property value='courseId'/>"><h4 style="color:red;">取消屏蔽</h4></a>
									    </s:else>
									</div>
								</div>
							</div>
						</div>
					</s:iterator>
					
				</s:else>
				<div id="Pagination" class="right scott"></div>
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
				<h4 style="text-align: center;">向课程老师发送信息</h4>
				<form action="super_sendMessageToTea.do" method="post" onSubmit="return show();">
				    <input name="message.senderId" type="hidden" value="<s:property value='#session.loginUser.getUserId()'/>"/>
					<input id="recieverId_message" name="message.recieverId" type="hidden" value=""/>
					<p>
					            标题：<br> <input type="text"  class="form-control" name="message.title"
							placeholder="私信内容描述" />
					</p>
					<p>
						内容：<br> <textarea name="message.content" row="3" col="10">请输入私信内容</textarea>
					</p>
					<p>
						<input id="sub_message" class="btn btn-default" type="submit"
							value="发送" />
					</p>
				</form>
			</div>
		</div>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="<%=basePath%>/js/bootstrap.min.js"></script>

	<script type="text/javascript">
	    function show(){
	    	
	    	ShowSuccess("私信发送成功！");
	    	return true;
	    }
		$(function() {
			/* $(".function_s").hide();
			$(".function_b").click(
					function() {
						//alert($(this).parent(".onemodel").find(".function_s").html());
						$(this).parent(".onemodel").find(".function_s").show(
								500);
						$(this).parent(".onemodel").siblings().find(
								".function_s").hide(500);
					}); */
			//管理员向课程老师发送message
			$(".send_message").click(function(){
				$("#recieverId_message").val($(this).next().val());
			});
			/* $("#sub_message").click(function(){
				alert("haha");
				ShowSuccess("私信发送成功！");
			}); */
			//分页
			var $totalR=$("#totalRecord").val();
			var $currentP=$("#currentPage").val();
			var $pageSize=$("#pageSize").val();
			//alert($totalR+"  "+$currentP);
			function pageselectCallback(page_id, jq) {
			    $("#searchForm").attr("action","<%=basePath%>/super_findCoursesByPager.do?pageNum="+(page_id + 1));
			    $("#searchForm").submit();
			    return false;
		    }
			$("#Pagination").pagination($totalR, {
				callback : pageselectCallback,//PageCallback() 为翻页调用次函数。
				prev_text : " 上一页",
				next_text : "下一页 ",
				items_per_page : $pageSize, //每页的数据个数
				num_display_entries : 3, //两侧首尾分页条目数
				current_page : $currentP-1, //当前页码
				num_edge_entries : 2, //连续分页主体部分分页条目数
			});
		});
	</script>

</body>
</html>