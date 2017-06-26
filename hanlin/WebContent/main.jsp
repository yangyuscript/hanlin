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
<link href="<%=basePath%>/cai_css/backmodel.css" rel="stylesheet">
<link href="<%=basePath%>/cai_css/index.css" rel="stylesheet">
<link href="<%=basePath%>/lin_css/pagination.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript"
	src="<%=basePath%>/lin_js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="<%=basePath%>/lin_js/pagination.js"></script>
<script type="text/javascript" src="<%=basePath%>/lin_js/browser.js"></script>
<script type="text/javascript"
	src="<%=basePath%>/lin_js/jquery.popWin.min.js"></script>
</head>
<body>
	<!-- brand部分 -->
	<div id="head_part" class="container-fluid"
		style="background-color: #f5f5f6">
		<div class="row">
			<div class="col-xs-11 col-xs-offset-1 col-md-4  col-md-offset-1">
				<h2>
					<a href="<%=basePath%>course_beginWebsiteB.do"><img src="<%=basePath%>/img/brandbest.png" width="70px"
						height="70px" />翰林学院</a>
				</h2>
			</div>
			<a href="<%=basePath%>student/index.jsp">
				<div class="col-xs-3 col-xs-offset-1 col-md-1">
					<h3 style="margin-top: 28px;margin-left:5px;">首页</h3>
					<h5 style="margin-top: -5px;margin-left:7px;">home</h5>
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
	</div>
	<!-- brand部分结束 -->
	<!-- 主体区 -->
	<div id="middle_part" class="container-fluid">
		<div class="row">
			<!-- 右侧内容展示 -->
			<div id="content_part" class="col-md-12">
				<!--搜索框  -->
				<form id="searchForm"
					action="<%=basePath%>/course_goMain.do?pageNum=1" method="post">
					<div class="row" style="margin-top: 20px;">
						<div class="col-xs-8 col-md-7 col-md-offset-2">
							<input class="form-control input-lg" name="courseName" value="<s:property value='#request.courseName'/>"
								type="text" placeholder="课程关键字">
						</div>
						<div class="col-xs-3 col-md-3">
							<button type="submit" class="btn btn-default btn-lg">搜索</button>
						</div>
					</div>
					<!--搜索框结束  -->
					<div class="row" style="margin-top: 20px;margin-left:10px;">
						<div class="col-xs-11  col-md-6 col-md-offset-3">
							<div class="row">
							    <input type="hidden" id="courseTypeId_request" value="<s:property value='#request.courseTypeId_request'/>"/>
							    <div class="col-xs-4 col-md-2" style="padding:0;">
										<input type="radio" name="courseTypeId" class="courseTypeId"
											value="0">
										全部
								</div>
								<s:iterator value="#session.allCourseTypes">
									<div class="col-xs-4 col-md-2" style="padding:0;">
										<input type="radio" name="courseTypeId" class="courseTypeId"
											value="<s:property value='courseTypeId'/>">
										<s:property value='courseTypeName' />
									</div>
								</s:iterator>
							</div>
						</div>
					</div>
					<script>
					   $(function(){
						   $("input[name='courseTypeId']").each(function(){
							   if($(this).val()==$("#courseTypeId_request").val()){
								   $(this).attr("checked",true);
							   }
						   });					  						   
					   })
					</script>
				</form>
				<div class="row" style="margin-top: 30px;background:;">
					<div class="col-xs-11 col-xs-offset-1 col-md-10 col-md-offset-1">
						<%-- <input type="text" value="<s:property value='#session.coursePager.getDataList().size()'/>"/> --%>
						<s:if test="#session.coursePager.getDataList().size()==0">
							<h4 style="color: red;">平台暂时没有此类课程可供学习！！！</h4>
						</s:if>
						<s:else>
							<input type="hidden" id="totalRecord"
								value="<s:property value='#session.coursePager.getTotalRecord()'/>" />
							<input type="hidden" id="currentPage"
								value="<s:property value='#session.coursePager.getCurrentPage()'/>" />
						    <input type="hidden" id="pageSize" value="<s:property value='#request.pageSize'/>"/>
							<div class="row">
								<s:iterator value="#session.coursePager.getDataList()">
								  <s:if test="courseCondi==1">
									<div class="col-xs-11 col-xs-offset-1 col-md-3 course_learning">
										<div class="row">
											<div class="media-top mask-wrapper"
												style="height: 146px; width: 210px;">
												<a href="#"> <img class="media-object"
													src="<%=basePath%>/head/<s:property value='courseHead'/>"
													alt="<s:property value='courseIntroduction'/>">
												</a>
												<div class="mask-inner">
													<p>
														<a
															href="course_getCourseDetailInfo.do?courseId=<s:property value='courseId'/>&&userId=<s:property value='#session.loginUser.userId'/>"><span
															class="glyphicon glyphicon-facetime-video"
															style="font-size: 30px;" aria-hidden="true"></span>查看详情</a>
													</p>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="media-up">
												<h4 class="media-heading">
												 <input disabled="disabled" style="border:0px;background:white;" type="text" value="<s:property value='courseName'/>"/>
												  <%-- <s:if test="courseName.length<=11">
													<s:property value='courseName' />
												  </s:if>
												  <s:else>
												    <s:property value="courseName.substring(0,10)"/>
												  </s:else> --%>
												</h4>
												<p>
													开课老师:<a href="#"><s:property value="teacherName"/></a>
												</p>
												<p style=""><s:property value='time' /></p>
											</div>
										</div>
									</div>
									</s:if>
								</s:iterator>
							</div>
						</s:else>
						<div id="Pagination" class="right scott"></div>
					</div>
				</div>
			</div>
			<!-- 右侧内容展示结束 -->
		</div>
	</div>
	<!-- 主体区结束 -->
	<!-- footer区 -->
	<!-- 弹窗公告 -->
	<s:if test="#session.loginUser!=null&&#session.recoCourse!=null">
		<div class="demo" style="display: none">
			<div class="title">
				<span class="close" title="关闭">&times;</span><strong>课程推荐</strong>
			</div>
			<div class="demoContent">			     
			     <a href="course_getCourseDetailInfo.do?courseId=<s:property value='#session.recoCourse.getCourseId()'/>&&userId=<s:property value='#session.loginUser.userId'/>">
				    <p style="margin-left:-30px;">
						<img width="240px" height="130px"
							src="<%=basePath%>/head/<s:property value='#session.recoCourse.getCourseHead()'/>" />
					</p>
					<p>
						<s:property
							value='#session.recoCourse.getCourseName()' />
					</p>
				 </a>	
			</div>
		</div>
	</s:if>
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
	<%-- <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script> --%>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="<%=basePath%>/js/bootstrap.min.js"></script>
	<%-- <script type="text/javascript" src="<%=basePath %>/js/jquery.min.js"></script> --%>
	<script type="text/javascript">
	   $(function(){
		   $(".function_s").hide();
		   $(".function_b").click(function(){
			   //alert($(this).parent(".onemodel").find(".function_s").html());
			   $(this).parent(".onemodel").find(".function_s").show(500);
			   $(this).parent(".onemodel").siblings().find(".function_s").hide(500);
		   });
		   
		    //分页
			var $totalR=$("#totalRecord").val();
			var $currentP=$("#currentPage").val();
			var $pageSize=$("#pageSize").val();
			//alert($totalR+"  "+$currentP);
			function pageselectCallback(page_id, jq) {
			    $("#searchForm").attr("action","<%=basePath%>/course_goMain.do?pageNum="+ (page_id + 1));
				$("#searchForm").submit();
				return false;
			}
			$("#Pagination").pagination($totalR, {
				callback : pageselectCallback,//PageCallback() 为翻页调用次函数。
				prev_text : " 上一页",
				next_text : "下一页 ",
				items_per_page : $pageSize, //每页的数据个数
				num_display_entries : 3, //两侧首尾分页条目数
				current_page : $currentP - 1, //当前页码
				num_edge_entries : 2, //连续分页主体部分分页条目数
			});
			$.fn.popWin({
				PopSelector : ".demo", //弹出的窗体
				CloseSelector : ".demo .close", //关闭窗体的触发开关
				lideTime : 600
			//窗体出场入场动画的时间
			})
		});
	</script>

</body>
</html>