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
				<h2>为<s:property value="#session.addExerciseOfMeasure.title"/>小节添加练习题</h2>
				<form action="teacher_addExerciseA.do" method="post">
				 
				    <input type="hidden" name="measureId" value="<s:property value='#session.addExerciseOfMeasure.measureId'/>"/>
					<div>
						<h4>第一题</h4>
						<script id="container" name="exerciseOne.question" type="text/plain">题目内容</script>
                        <p>A选项：<input type="text" name="exerciseOne.acChoice" class="form-control" placeholder="A内容"/>
                        B选项：<input type="text" name="exerciseOne.bcChoice" class="form-control" placeholder="B内容"/>
                        C选项：<input type="text" name="exerciseOne.ccChoice" class="form-control" placeholder="C内容"/>
                        D选项：<input type="text" name="exerciseOne.dcChoice" class="form-control" placeholder="D内容"/></p>
                        <p>答案：<input type="text" name="exerciseOne.answer" class="form-control" placeholder="答案选项"/></p>
					</div>
					
					<div>
						<h4>第二题</h4>
						<script id="container2" name="exerciseTwo.question" type="text/plain">题目内容</script>
                        <p>A选项：<input type="text" name="exerciseTwo.acChoice" class="form-control" placeholder="A内容"/>
                        B选项：<input type="text" name="exerciseTwo.bcChoice" class="form-control" placeholder="B内容"/>
                        C选项：<input type="text" name="exerciseTwo.ccChoice" class="form-control" placeholder="C内容"/>
                        D选项：<input type="text" name="exerciseTwo.dcChoice" class="form-control" placeholder="D内容"/></p>
                        <p>答案：<input type="text" name="exerciseTwo.answer" class="form-control" placeholder="答案选项"/></p>
					</div>
					
					<div>
						<h4>第三题</h4>
						<script id="container3" name="exerciseThree.question" type="text/plain">题目内容</script>
                        <p>A选项：<input type="text" name="exerciseThree.acChoice" class="form-control" placeholder="A内容"/>
                        B选项：<input type="text" name="exerciseThree.bcChoice" class="form-control" placeholder="B内容"/>
                        C选项：<input type="text" name="exerciseThree.ccChoice" class="form-control" placeholder="C内容"/>
                        D选项：<input type="text" name="exerciseThree.dcChoice" class="form-control" placeholder="D内容"/></p>
                        <p>答案：<input type="text" name="exerciseThree.answer" class="form-control" placeholder="答案选项"/></p>
					</div>
					
					<div>
						<h4>第四题</h4>
						<script id="container4" name="exerciseFour.question" type="text/plain">题目内容</script>
                        <p>A选项：<input type="text" name="exerciseFour.acChoice" class="form-control" placeholder="A内容"/>
                        B选项：<input type="text" name="exerciseFour.bcChoice" class="form-control" placeholder="B内容"/>
                        C选项：<input type="text" name="exerciseFour.ccChoice" class="form-control" placeholder="C内容"/>
                        D选项：<input type="text" name="exerciseFour.dcChoice" class="form-control" placeholder="D内容"/></p>
                        <p>答案：<input type="text" name="exerciseFour.answer" class="form-control" placeholder="答案选项"/></p>
					</div>
					
					<div>
						<h4>第五题</h4>
						<script id="container5" name="exerciseFive.question" type="text/plain">题目内容</script>
                        <p>A选项：<input type="text" name="exerciseFive.acChoice" class="form-control" placeholder="A内容"/>
                        B选项：<input type="text" name="exerciseFive.bcChoice" class="form-control" placeholder="B内容"/>
                        C选项：<input type="text" name="exerciseFive.ccChoice" class="form-control" placeholder="C内容"/>
                        D选项：<input type="text" name="exerciseFive.dcChoice" class="form-control" placeholder="D内容"/></p>
                        <p>答案：<input type="text" name="exerciseFive.answer" class="form-control" placeholder="答案选项"/></p>
					</div>
						<script type="text/javascript" src="../ueditor.config.js"></script>
						<script type="text/javascript" src="../ueditor.all.js"></script>
						<script type="text/javascript">
							var ue = UE.getEditor('container');	
							var ue2=UE.getEditor("container2");
							var ue3=UE.getEditor("container3");
							var ue4=UE.getEditor("container4");
							var ue5=UE.getEditor("container5");
						</script>					
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
	<div id="myModal" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="mySmallModalLabel">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<h4>退课前请做出您对课程的评价吧！</h4>
				<form action="" method="post">
					<div class="radio">
						<label> <input type="radio" name="optionsRadios"
							id="optionsRadios1" value="1" checked> 优
						</label> <label> <input type="radio" name="optionsRadios"
							id="optionsRadios2" value="2"> 良
						</label> <label> <input type="radio" name="optionsRadios"
							id="optionsRadios3" value="3"> 中
						</label>
					</div>
					<p>
						评价：<br>
						<textarea class="form-control" row="3" placeholder="写下您的评价"></textarea>
					</p>
					<p>
						<input id="sub_comment" class="btn btn-default" type="submit"
							value="提交" />
					</p>
				</form>
			</div>
		</div>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="../js/bootstrap.min.js"></script>

	<script type="text/javascript" src="../lin_js/showTip.js"></script>
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
			$("#sub_comment").click(function() {
				ShowSuccess("评价成功！");//$("#myModal").modal("hide");不能用
			});
		});
	</script>

</body>
</html>