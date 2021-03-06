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
<script type="text/javascript" src="<%=basePath%>lin_js/jquery-1.11.3.js"></script>
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
						<h5><s:property value="#session.loginUser.nickname"/></h5>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b" style="margin-top: 10px;">
						<div>
							<a href="#"><h5>
									<img src="<%=basePath %>/img/course.jpg"
										style="margin-left: -70px; margin-right: 30px;" />我的课程
								</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="<%=basePath %>teacher/learningCourse.jsp"><h5>正在学课程</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="<%=basePath %>/teacher/likeCourse.jsp"><h5>收藏课程</h5></a>
						</div>
					</div>
					<s:if test="#session.loginUser.condi!=0">
					<div class="row function_s">
						<div>
							<a href="<%=basePath %>/teacher/foundCourse.jsp"><h5>创建课程</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="<%=basePath %>/teacher/managerCourse.jsp"><h5>课程管理</h5></a>
						</div>
					</div>
					</s:if>
					<s:else>
					<div class="row function_s">
					   <div>
					      <a href="<%=basePath %>/teacher/toBeTea.jsp"><h5>申请成为教师</h5></a>
					   </div>
					</div>
					</s:else>
				</div>
				<s:if test="#session.loginUser.condi==10">
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="#"><h5>
									<img src="<%=basePath %>/img/homework.png"
										style="margin-left: -70px; margin-right: 30px;" />我的习题
								</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="<%=basePath %>teacher/managerCourse.jsp"><h5>发布习题</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="<%=basePath %>teacher/managerCourse.jsp"><h5>习题管理</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="<%=basePath %>teacher/managerCourse.jsp"><h5>批改习题</h5></a>
						</div>
					</div>
				</div>
				</s:if>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="<%=basePath %>teacher/myPost.jsp"><h5>
									<img src="<%=basePath %>/img/tiezi3.png"
										style="margin-left: -70px; margin-right: 36px;" />我的帖子
								</h5></a>
						</div>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="<%=basePath %>teacher/myMessage.jsp"><h5>
									<img src="<%=basePath %>/img/message.png"
										style="margin-left: -70px; margin-right: 25px;" />我的消息
								</h5></a>
						</div>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="<%=basePath %>teacher/myInfo.jsp"><h5>
									<img src="<%=basePath %>/img/info.png"
										style="margin-left: -70px; margin-right: 30px;" />个人信息
								</h5></a>
						</div>
					</div>
				</div>
			</div>
			<!-- 左侧功能区结束 -->
			<!-- 右侧内容展示 -->
			<div id="content_part" class="col-md-8">
				<div class="row">
					<div class="col-md-8">
						<a href="#">首页</a>&gt;<a href="#">申请成为老师</a>
					</div>
				</div>
				
				<div class="row">
				    <div id="s1" class="col-md-10" style="">
				       <h3>完善个人信息</h3>
				       <form id="form" action="<%=basePath %>user_toBeTea.do" method="post" enctype="multipart/form-data" onsubmit="return check(this)">
				          <input type="hidden" name="userId" value="<s:property value='#session.loginUser.userId'/>"/>
				          <p>身份证号：<input type="text" id="idenNum" name="idenNum" pattern="^[1-9]{1}[0-9]{14}$|^[1-9]{1}[0-9]{16}([0-9]|[xX])$" required class="form-control" /></p>
				          <p>带身份证半身照：<input type="file" id="userHead" name="image"/><img src="<%=basePath %>/head/<s:property value='#session.loginUser.head'/>" width="300px" height="180px" id="img0"/>
				          <script>
									   $(function(){
										   $("#userHead").change(function() {
												//alert("上传文件");
												var objUrl = getObjectURL(this.files[0]);
												console.log("objUrl = "+ objUrl);
												if (objUrl) {
													$("#img0").attr("src",objUrl);
												}
											});
									   });									   
										//建立一個可存取到該file的url
										function getObjectURL(file) {
											var url = null;
											if (window.createObjectURL != undefined) { // basic
												url = window
														.createObjectURL(file);
											} else if (window.URL != undefined) { // mozilla(firefox)
												url = window.URL
														.createObjectURL(file);
											} else if (window.webkitURL != undefined) { // webkit or chrome
												url = window.webkitURL
														.createObjectURL(file);
											}
											return url;
										}
									</script>
				          </p>
				          <s:if test="#session.toBeTeaReqCondi.getCondi()==0">
				          <h3 style="color:red;">您已提交请求，请耐心等待管理员处理哦！</h3>
				          <p><input type="submit" class="btn btn-default" disabled="disabled" value="提交"/></p>
				          </s:if>
				          <s:else>
				          <p><input type="submit" class="btn btn-default" value="提交"/></p>
				          <hr>
				          <h4>tip:若您已提交信息，却没有“<span style="color:red;">您已提交请求，请耐心等待管理员处理哦！</span>”提示，说明您已被拒绝，请尝试联系管理员1837475870@qq.com或确保所填信息正确无误再次提交申请。</h4>
				          </s:else>
				       </form>
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
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="<%=basePath %>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=basePath %>/lin_js/showTip.js"></script>
	<%-- <script type="text/javascript" src="<%=basePath %>/js/jquery.min.js"></script> --%>
	<script type="text/javascript">
	    idenNum.oninput=function(){
	    	idenNum.setCustomValidity("");
	    }
	    idenNum.oninvalid=function(){
	    	idenNum.setCustomValidity("请输入正确格式的身份证号!");
	    }
	    function check(form) {
	       var reg=/\.(jpg|jpeg|png|bmp)$/;
	       //alert(form.image.value+"   "+reg.test(form.image.value));
	       if(reg.test(form.image.value)){
	             return true;
	       }else{
	        	 ShowTipAlwaysInTheMiddle("请上传格式为.jpg/.png的图片哦！","danger");
	        	 return false;
	       }
	       return true;
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
			 /* $('#form').bootstrapValidator({
			        feedbackIcons: {
			            valid: 'glyphicon glyphicon-ok',
			            invalid: 'glyphicon glyphicon-remove',
			            validating: 'glyphicon glyphicon-refresh'
			        },
			        fields: {
			        	idenNum:{
			        		validators:{
			        			notEmpty:{
			                		 message: '不能为空'
			                	},
			                	regexp: {
			                        regexp: /^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{4}$/,
			                        message: '请填写有效值！'
			                    }
			        		}
			        	},
			            image: {
			                validators: {
			                	notEmpty:{
			                		 message: '不能为空'
			                	},
			                    file: {
			                        extension: 'jpeg,png,jpg',
			                        type: 'image/jpeg,image/png',
			                        maxSize: 2048 * 1024,   // 2 MB
			                        message: 'The selected file is not valid'
			                    }
			                }
			            }
			        }
			    }); */
			
		});
	</script>

</body>
</html>