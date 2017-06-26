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
<title>课程习题-翰林学院</title>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<link rel="shortcut icon" href="<%=basePath%>/img/brandbest.png" />
<!-- Bootstrap -->
<link href="<%=basePath%>/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=basePath%>lin_css/backmodel.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script type="text/javascript"
	src="<%=basePath%>/lin_js/jquery-1.10.2.min.js"></script>
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
				<h2>
					做
					<s:property value="#session.exerciseOfMeasure.title" />
					小节练习题
				</h2>
				<s:if test="#session.exerciseList.size()==0">
					       <p style="color:red;">该小节暂无习题哦！</p>
			    </s:if>
			    <s:else>
				<form action="#" method="post">
					<input type="hidden" name="measureId"
						value="<s:property value='#session.exerciseOfMeasure.measureId'/>" />
					<div>
					    
						<h4>第一题</h4>
						<input type="hidden" id="c1"
							value="<s:property value='#session.exerciseList.get(0).getQuestion()'/>" />
						<div id="cq1"></div>
						<input type="hidden" id="answer" value="<s:property value='#session.exerciseList.get(0).getAnswer()'/>"/>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios"
								id="optionsRadios1" value="A" checked>A.<s:property value='#session.exerciseList.get(0).getAcChoice()'/>
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios"
								id="optionsRadios2" value="B">B.<s:property value='#session.exerciseList.get(0).getBcChoice()'/>
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios"
								id="optionsRadios3" value="C">C.<s:property value='#session.exerciseList.get(0).getCcChoice()'/>
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios"
								id="optionsRadios4" value="D">D.<s:property value='#session.exerciseList.get(0).getDcChoice()'/>
							</label>
						</div>
						<div id="result"></div>
					</div>
					<hr>
					<div>
						<h4>第二题</h4>
						<input type="hidden" id="c2"
							value="<s:property value='#session.exerciseList.get(1).getQuestion()'/>" />
						<div id="cq2"></div>
						<input type="hidden" id="answer1" value="<s:property value='#session.exerciseList.get(1).getAnswer()'/>"/>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios1"
								id="optionsRadios5" value="A" checked>A.<s:property value='#session.exerciseList.get(1).getAcChoice()'/>
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios1"
								id="optionsRadios6" value="B">B.<s:property value='#session.exerciseList.get(1).getBcChoice()'/>
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios1"
								id="optionsRadios7" value="C">C.<s:property value='#session.exerciseList.get(1).getCcChoice()'/>
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios1"
								id="optionsRadios8" value="D">D.<s:property value='#session.exerciseList.get(1).getDcChoice()'/>
							</label>
						</div>
						<div id="result1"></div>
					</div>
					<hr>
					<div>
						<h4>第三题</h4>
						<input type="hidden" id="c3"
							value="<s:property value='#session.exerciseList.get(2).getQuestion()'/>" />
						<div id="cq3"></div>
						<input type="hidden" id="answer2" value="<s:property value='#session.exerciseList.get(2).getAnswer()'/>"/>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios2"
								id="optionsRadios9" value="A" checked>A.<s:property value='#session.exerciseList.get(2).getAcChoice()'/>
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios2"
								id="optionsRadios10" value="B">B.<s:property value='#session.exerciseList.get(2).getBcChoice()'/>
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios2"
								id="optionsRadios11" value="C">C.<s:property value='#session.exerciseList.get(2).getCcChoice()'/>
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios2"
								id="optionsRadios12" value="D">D.<s:property value='#session.exerciseList.get(2).getDcChoice()'/>
							</label>
						</div>
						<div id="result2"></div>
					</div>
					<hr>
					<div>
						<h4>第四题</h4>
						<input type="hidden" id="c4"
							value="<s:property value='#session.exerciseList.get(3).getQuestion()'/>" />
						<div id="cq4"></div>
						<input type="hidden" id="answer3" value="<s:property value='#session.exerciseList.get(3).getAnswer()'/>"/>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios3"
								id="optionsRadios13" value="A" checked>A.<s:property value='#session.exerciseList.get(3).getAcChoice()'/>
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios3"
								id="optionsRadios14" value="B">B.<s:property value='#session.exerciseList.get(3).getBcChoice()'/>
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios3"
								id="optionsRadios15" value="C">C.<s:property value='#session.exerciseList.get(3).getCcChoice()'/>
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios3"
								id="optionsRadios16" value="D">D.<s:property value='#session.exerciseList.get(3).getDcChoice()'/>
							</label>
						</div>
						<div id="result3"></div>
					</div>
					<hr>
					<div>
						<h4>第五题</h4>
						<input type="hidden" id="c5"
							value="<s:property value='#session.exerciseList.get(4).getQuestion()'/>" />
						<div id="cq5"></div>
						<input type="hidden" id="answer4" value="<s:property value='#session.exerciseList.get(4).getAnswer()'/>"/>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios4"
								id="optionsRadios17" value="A" checked>A.<s:property value='#session.exerciseList.get(4).getAcChoice()'/>
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios4"
								id="optionsRadios18" value="B">B.<s:property value='#session.exerciseList.get(4).getBcChoice()'/>
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios4"
								id="optionsRadios19" value="C">C.<s:property value='#session.exerciseList.get(4).getCcChoice()'/>
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios4"
								id="optionsRadios20" value="D">D.<s:property value='#session.exerciseList.get(4).getDcChoice()'/>
							</label>
						</div>
						<div id="result4"></div>
					</div>
					<input id="sub_exercise" type="button" class="btn btn-default" value="提交" />
				</form>
				</s:else>
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
	<script src="<%=basePath%>/js/bootstrap.min.js"></script>

	<script type="text/javascript" src="<%=basePath%>/lin_js/showTip.js"></script>
	<script type="text/javascript">
		$(function() {
			$("#cq1").html($("#c1").val());
			$("#cq2").html($("#c2").val());
			$("#cq3").html($("#c3").val());
			$("#cq4").html($("#c4").val());
			$("#cq5").html($("#c5").val());
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
			
			//用户提交习题
			$("#sub_exercise").click(function(){
				var $answer=$("#answer").val();
				var $user_answer=$("input[name='optionsRadios']:checked").val();
				if($answer==$user_answer){
					$("#result").append("<p style='color:green;'>答对了！</p>");
				}
				else{
					$("#result").append("<p style='color:red;'>答错了，再看看视频内容哦！答案是"+$answer+"</p>");
				}
				var $answer1=$("#answer1").val();
				var $user_answer1=$("input[name='optionsRadios1'] :checked").val();
				if($answer1==$user_answer1){
					$("#result1").append("<p style='color:green;'>答对了！</p>");
				}
				else{
					$("#result1").append("<p style='color:red;'>答错了，再看看视频内容哦！答案是"+$answer1+"</p>");
				}
				var $answer2=$("#answer2").val();
				var $user_answer2=$("input[name='optionsRadios2'] :checked").val();
				if($answer2==$user_answer2){
					$("#result2").append("<p style='color:green;'>答对了！</p>");
				}
				else{
					$("#result2").append("<p style='color:red;'>答错了，再看看视频内容哦！答案是"+$answer2+"</p>");
				}
				var $answer3=$("#answer3").val();
				var $user_answer3=$("input[name='optionsRadios3'] :checked").val();
				if($answer3==$user_answer3){
					$("#result3").append("<p style='color:green;'>答对了！</p>");
				}
				else{
					$("#result3").append("<p style='color:red;'>答错了，再看看视频内容哦！答案是"+$answer3+"</p>");
				}
				var $answer4=$("#answer4").val();
				var $user_answer4=$("input[name='optionsRadios4'] :checked").val();
				if($answer4==$user_answer4){
					$("#result4").append("<p style='color:green;'>答对了！</p>");
				}
				else{
					$("#result4").append("<p style='color:red;'>答错了，再看看视频内容哦！答案是"+$answer4+"</p>");
				}
			});
		});
	</script>

</body>
</html>