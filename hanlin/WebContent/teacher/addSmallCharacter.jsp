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
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../lin_css/backmodel.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript" src="../lin_js/jquery-1.10.2.min.js"></script>
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
			<div class="col-md-8 col-md-offset-1">
			<input type="hidden" name="measure.courseId" value="<s:property value='#request.courseId'/>"/>
				<h2>添加小节</h2>
				<form action="teacher_addSmallCharacterA.do" method="post" onsubmit="return check();">
				    <input type="hidden" name="measure.courseId" value="<s:property value='#session.courseId'/>"/>
				    <input type="hidden" name="measure.characterId" value="<s:property value='#session.characterId'/>"/>
					<p>
						小节名称<input type="text" class="form-control" name="measure.title" required/>
					</p>
					<p>
						小节描述
						<!-- <textarea class="form-control" row="3" placeholder="请输入小节描述"></textarea> -->
						<script id="container2" name="measure.discription" type="text/plain"></script>
					</p>
					<p>
						<!--<script id="container" name="content" type="text/plain">请添加视频</script>
						<script type="text/javascript">
						alert("haha");
							var editor = UE.getEditor('container', {
								//这里可以选择自己需要的工具按钮名称,此处仅选择如下五个  
								toolbars : [ [ 'insertvideo' ] ],
								//focus时自动清空初始化时的内容  
								autoClearinitialContent : true,
								//关闭字数统计  
								wordCount : false,
								//关闭elementPath  
								elementPathEnabled : false,
								//默认的编辑区域高度  
								initialFrameHeight : 300
							//更多其他参数，请参考ueditor.config.js中的配置项  
							});
							alert("haha2");
						</script>-->
						添加视频(文件格式只支持：<span style="color:red;">mp4、ogg、webm</span>,文件大小不超过<span style="color:red;">100M</span>,切勿在上传视频的文本框中输入其他文字，否则导致视频无法正常播放！)：
						<script id="container" name="measure.videoPath" type="text/plain" onkeydown="keydown(event)"></script>
						<script type="text/javascript" src="../ueditor.config.js"></script>
						<script type="text/javascript" src="../ueditor.all.js"></script>
						<script type="text/javascript">
						    var ue2=UE.getEditor("container2");
							var ue = UE.getEditor('container',{
								toolbars : [ [ 'insertvideo' ] ]
							});
							function keydown(event){
								ue.setContent("");
							}
							//ue.setDisabled(['insertvideo']);
						</script>
					</p>
					<input type="submit" class="btn btn-default" value="添加"/>
				</form>
			</div>
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
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="../js/bootstrap.min.js"></script>

	<script type="text/javascript" src="../lin_js/showTip.js"></script>
	<script type="text/javascript">
	    function check(){
	       alert(ue.getContent());
	       alert(ue2.getContent());
	       if(ue.getContent()==""||ue2.getContent()==""){
	    	   return false;
	       }else{
	    	   return true;
	       }
	    }
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
			$("#sub_comment").click(function() {
				ShowSuccess("评价成功！");//$("#myModal").modal("hide");不能用
			});
		});
	</script>

</body>
</html>