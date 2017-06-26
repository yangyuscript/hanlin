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
						<strong>当前位置:</strong><a href="#">用户管理</a>
					</div>
				</div>
				<hr>
				<div class="row">
					<form id="searchForm" action="<%=basePath%>/super_findUsersByPager.do?pageNum=1"
						method="post">
						<div class="col-md-2">
							<p>
								用户昵称：<input type="text" name="nickname" value="<s:property value='#request.nickname'/>" class="form-control" placeholder="用户昵称" />
							</p>
						</div>
						<div class="col-md-2">
							<p>
								用户邮箱/账号：<input type="text" name="account" value="<s:property value='#request.account'/>" class="form-control"
									placeholder="用户邮箱" />
							</p>
						</div>
						<div class="col-md-1 col-md-offset-3 col-xs-4">
							<input type="submit" class="btn btn-default" value="搜索" />
						</div>
					</form>
					<div class="col-md-1 col-xs-4">
						<a href="<%=basePath %>super/doToBeTeaReq.jsp"><input type="button" class="btn btn-default" value="申请教师请求"/></a>
					</div>
					<!-- <div class="col-md-1 col-xs-4">
						<input type="button" class="btn btn-default" value="添加教师用户"
							data-toggle="modal" data-target="#myModal" />
					</div> -->
				</div>
				<hr>
				<div class="row">
					<div class="col-md-12">
						<div class="table-responsive">
							<table class="table table-bordered table-hover">
								<tr>
									<th>编号</th>
									<th>账号/邮箱</th>
									<th>昵称</th>
									<th>积分</th>
									<th>操作</th>
								</tr>
								<input type="hidden" id="totalRecord"
									value="<s:property value='#session.pager.getTotalRecord()'/>" />
								<input type="hidden" id="currentPage"
									value="<s:property value='#session.pager.getCurrentPage()'/>" />
								<input type="hidden" id="pageSize" value="<s:property value='#request.pageSize'/>"/>
								<s:if test="#session.pager.getDataList().size()==0">
									<h4>平台暂无用户</h4>
								</s:if>
								<s:iterator value="#session.pager.getDataList()">
									<tr>
										<td><s:property value="userId" /></td>
										<td><a href="#"><s:property value="account" /></a></td>
										<td><s:property value="nickname" /></td>
										<td><s:property value="credits" /></td>
										<td>
										   <s:if test="condi==4">
										      <a style="color:white;" class="btn btn-danger btn-sm" role="button" href="super_unScreenUser.do?userId=<s:property value='userId'/>">取消屏蔽</a>
										   </s:if>
										   <s:else>
										     <s:if test="condi!=3">
										      <a style="color:white;" class="btn btn-danger btn-sm" role="button" href="super_screenUser.do?userId=<s:property value='userId'/>">屏蔽</a>
										     </s:if>
										   </s:else>   
										</td>
									</tr>
								</s:iterator>
							</table>
							<div id="Pagination" class="right scott"></div>
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
	<div id="myModal" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="mySmallModalLabel">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<h4 style="text-align: center;">添加教师用户</h4>
				<form action="" method="post">
					<p>
						账号/邮箱：<br> <input type="email" class="form-control"
							placeholder="邮箱" />
					</p>
					<p>
						密码：<br> <input type="password" class="form-control"
							placeholder="密码" value="123456" />
					</p>
					<p>
						<input class="sub_comment" class="btn btn-default" type="submit"
							value="添加" />
					</p>
				</form>
			</div>
		</div>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="<%=basePath%>/js/bootstrap.min.js"></script>

	<script type="text/javascript">
		$(function() {
			var $totalR=parseInt($("#totalRecord").val());
			
			var $currentP=parseInt($("#currentPage").val());
			
			var $pageSize=$("#pageSize").val();
			$currentP=$currentP-1;
			$(".function_s").hide();
			$(".function_b").click(
					function() {
						//alert($(this).parent(".onemodel").find(".function_s").html());
						$(this).parent(".onemodel").find(".function_s").show(
								500);
						$(this).parent(".onemodel").siblings().find(
								".function_s").hide(500);
					});
			//分页
			function pageselectCallback(page_id, jq) {
			    $("#searchForm").attr("action","<%=basePath%>/super_findUsersByPager.do?pageNum="+(page_id + 1));
			    $("#searchForm").submit();
			    return false;
		    }
			$("#Pagination").pagination($totalR, {
				callback : pageselectCallback,//PageCallback() 为翻页调用次函数。
				prev_text : " 上一页",
				next_text : "下一页 ",
				items_per_page : $pageSize, //每页的数据个数
				num_display_entries : 3, //两侧首尾分页条目数
				current_page : $currentP, //当前页码
				num_edge_entries : 2, //连续分页主体部分分页条目数
			});

		});
		
	</script>

</body>
</html>