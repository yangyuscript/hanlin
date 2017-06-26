<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人信息</title>
<link rel="shortcut icon" href="../img/brandbest.png" />
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../cai_css/backmodel.css" rel="stylesheet">
</head>
<body>
	<!-- brand部分 -->
	<div id="head_part" class="container-fluid"
		style="background-color: #f5f5f6">
		<div class="row">
			<div class="col-md-4 col-md-offset-1">
				<h2>
					<img src="../img/brandbest.png" width="70px" height="70px" />翰林学院
				</h2>
			</div>
			<div class="col-md-1">
				<h3 style="margin-top: 28px;">首页</h3>
				<h5 style="margin-top: -5px;">home</h5>
			</div>
			<div class="col-md-3">
				<h3 style="margin-top: 28px;">课程</h3>
				<h5 style="margin-top: -5px;">courses</h5>
			</div>
			<div class="col-md-2">
				<h5>
					<br> <br>欢迎您！某某&nbsp;&nbsp;<a href="#">退出</a>
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
						<img class="img-circle" src="../img/defaulthead.jpg">
					</div>
				</div>
				<div class="row function_b">
					<div>
						<h5>某某学员</h5>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b" style="margin-top: 10px;">
						<div>
							<a href="#"><h5>
									<img src="../img/course.jpg"
										style="margin-left: -70px; margin-right: 30px;" />我的课程
								</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="studentLearning.jsp"><h5>正在学习的课程</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="studentCollect.jsp"><h5>已收藏的课程</h5></a>
						</div>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="#"><h5>
									<img src="../img/zhengshu.png"
										style="margin-left: -70px; margin-right: 30px;" />我的证书
								</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="studentCertificate.jsp"><h5>已获取证书</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="payCertificate.jsp"><h5>代付款证书</h5></a>
						</div>
					</div>
					<div class="row function_s">
						<div>
							<a href="applyCertificate.jsp"><h5>未申请证书</h5></a>
						</div>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="studentNote.jsp"><h5>
									<img src="../img/homework.png"
										style="margin-left: -70px; margin-right: 36px;" />我的笔记
								</h5></a>
						</div>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="studentMessage.jsp"><h5>
									<img src="../img/message.png"
										style="margin-left: -70px; margin-right: 25px;" />我的消息
								</h5></a>
						</div>
					</div>
				</div>
				<div class="onemodel">
					<div class="row function_b">
						<div>
							<a href="studentPersonal.jsp"><h5>
									<img src="../img/info.png"
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
						<a href="#">首页</a>&gt;<a href="#">个人信息</a>
					</div>
				</div>
				<div class="row">
					<div class="col-md-1 info_part">
						<div id="p1">
							<p>基本资料</p>
						</div>
					</div>
					<div class="col-md-1 info_part">
						<div id="p2">
							<p>修改头像</p>
						</div>
					</div>
					<div class="col-md-1 info_part">
						<div id="p3">
							<p>修改密码</p>
						</div>
					</div>
					<div class="col-md-1 info_part">
						<div id="p4">
							<p>修改邮箱</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div id="s1" class="col-md-10" style="">
						<h3>基本信息</h3>
						<form action="" method="post">
							<p>
								邮箱：<input type="text" class="form-control"
									value="1837475870@qq.com" disabled="disabled" />
							</p>
							<p>
								是否在校生：<label class="radio-student"> <input type="radio"
									name="student" id="inlineRadio1" value="option1" checked>
									在校生
								</label> <label class="radio-student"> <input type="radio"
									name="student" id="inlineRadio2" value="option2"> 非在校生







								
							</p>
							<p>
								真实姓名：<input type="text" class="form-control" value="" />
							</p>
							<p>
								毕业学校：<input type="text" class="form-control" value="" />
							</p>
							<p>
								最后学历： <select class="form-control">
									<option selected="selected">--请选择最后学历--</option>
									<option>研究生</option>
									<option>本科生</option>
									<option>专科生</option>
								</select>
							</p>
							<p>
								昵称：<input type="text" class="form-control" value="" />
							</p>
							<p>
								手机：<input type="text" class="form-control" value="" />
							</p>
							<p>
								性别：<label class="radio-sex"> <input type="radio"
									name="sex" id="inlineRadio1" value="option1" checked>
									男生
								</label> <label class="radio-sex"> <input type="radio"
									name="sex" id="inlineRadio2" value="option2"> 女生 
							</p>
							<p>
								生日：<select class="form-control1">
									<option value="1990">1990</option>
									<option value="1991">1991</option>
									<option value="1992">1992</option>
									<option value="1993">1993</option>
									<option value="1994">1994</option>
									<option value="1995">1995</option>
									<option value="1996">1996</option>
									<option value="1997">1997</option>
								</select>年 <select class="form-control1">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
								</select>月 <select class="form-control1">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
								</select>日
							</p>
							<p>
								个人简介：
								<textarea class="form-control" rows="3"></textarea>
							</p>
							<p>
								<input type="submit" class="btn btn-default" value="保存个人信息" />
							</p>
						</form>
					</div>
					<div id="s2" class="col-md-10" style="">
						<h3>修改头像</h3>
						<div class="col-md-1">
							<div id="p1">
								<p>
									<input type="file" onchange="previewImage(this)" />
								<div id="preview"></div>
								</p>
							</div>
							<p>
								<input type="submit" class="btn btn-default" value="保存" />
							</p>
						</div>
					</div>
					<div id="s3" class="col-md-10" style="">
						<h3>更改密码</h3>
						<form action="" method="post">
							<p>
								原密码：<input type="password" class="form-control" value="" />
							</p>
							<p>
								新密码：<input type="password" class="form-control" value="" />
							</p>
							<p>
								<input type="submit" class="btn btn-default" value="修改" />
							</p>
						</form>
					</div>
					<div id="s4" class="col-md-10" style="">
						<h3>更换邮箱</h3>
						<p style="color: red">正努力开发中，请耐心等待哦</p>
					</div>
				</div>
			</div>
			<!-- 右侧内容展示结束 -->
		</div>
	</div>
	<!-- 主体区结束 -->
	<!-- footer区 -->
	<div class="container-fluid">
		<div class="row foot">
			<div class="col-md-12">
				<p>南京工业职业技术学院&nbsp;&nbsp;|&nbsp;&nbsp;计算机与软件学院&nbsp;&nbsp;林光翔&蔡明雪&nbsp;联系方式：1837475870@qq.com</p>
			</div>
		</div>
	</div>
	<!-- footer区结束 -->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/jquery.min.js"></script>
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
			$(".info_part").hover(function() {
				$(this).find("div").css("background-color", "black");
			}, function() {
				$(this).find("div").css("background-color", "#60d4d4");
			});
			$("#s2").hide();
			$("#s3").hide();
			$("#s4").hide();
			$("#p1").click(function() {
				$("#s1").show();
				$("#s2").hide();
				$("#s3").hide();
				$("#s4").hide();
			});
			$("#p2").click(function() {
				$("#s2").show();
				$("#s1").hide();
				$("#s3").hide();
				$("#s4").hide();
			});
			$("#p3").click(function() {
				$("#s3").show();
				$("#s1").hide();
				$("#s2").hide();
				$("#s4").hide();
			});
			$("#p4").click(function() {
				$("#s4").show();
				$("#s1").hide();
				$("#s2").hide();
				$("#s3").hide();
			});
		});
	</script>
	<script type="text/javascript">
		//图片上传预览    IE是用了滤镜。
		function previewImage(file) {
			var MAXWIDTH = 260;
			var MAXHEIGHT = 180;
			var div = document.getElementById('preview');
			if (file.files && file.files[0]) {
				div.innerHTML = '<img id=imghead>';
				var img = document.getElementById('imghead');
				img.onload = function() {
					var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT,
							img.offsetWidth, img.offsetHeight);
					img.width = rect.width;
					img.height = rect.height;
					//                 img.style.marginLeft = rect.left+'px';
					img.style.marginTop = rect.top + 'px';
				}
				var reader = new FileReader();
				reader.onload = function(evt) {
					img.src = evt.target.result;
				}
				reader.readAsDataURL(file.files[0]);
			} else //兼容IE
			{
				var sFilter = 'filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
				file.select();
				var src = document.selection.createRange().text;
				div.innerHTML = '<img id=imghead>';
				var img = document.getElementById('imghead');
				img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
				var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT,
						img.offsetWidth, img.offsetHeight);
				status = ('rect:' + rect.top + ',' + rect.left + ','
						+ rect.width + ',' + rect.height);
				div.innerHTML = "<div id=divhead style='width:"+rect.width+"px;height:"+rect.height+"px;margin-top:"+rect.top+"px;"+sFilter+src+"\"'></div>";
			}
		}
		function clacImgZoomParam(maxWidth, maxHeight, width, height) {
			var param = {
				top : 0,
				left : 0,
				width : width,
				height : height
			};
			if (width > maxWidth || height > maxHeight) {
				rateWidth = width / maxWidth;
				rateHeight = height / maxHeight;

				if (rateWidth > rateHeight) {
					param.width = maxWidth;
					param.height = Math.round(height / rateWidth);
				} else {
					param.width = Math.round(width / rateHeight);
					param.height = maxHeight;
				}
			}

			param.left = Math.round((maxWidth - param.width) / 2);
			param.top = Math.round((maxHeight - param.height) / 2);
			return param;
		}
	</script>

</body>
</html>