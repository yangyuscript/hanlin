$(function(){
	$('#btn_login').click(function(){
		$(this).html("正在登录...");
		if($("#login_name").val()!=''&&$("#login_pass").val()!=''){
			$.ajax({
				url:"user_login.do",
				type:"post",
				data:{
					"user.account":$("#login_name").val(),
					"user.password" : $("#login_pass").val(),
				},
				dataType:"json",
				success:function(data){	
					//alert(data.login);
					if(data.login == "student"){
						ShowSuccess("登陆成功!");
						window.location.href="course_goMain.do";
					}else if(data.login=="teacher"){
						ShowSuccess("登陆成功!");
						window.location.href="course_goMain.do";
						//window.location.href="teacher_goToTeacher.do?teacherId="+data.loginUserId;
					}else if(data.login=="super"){
						ShowSuccess("登陆成功!");
						window.location.href="super_findCoursesByPager.do?pageNum=1";
					}else if(data.login=="notMail"){
						ShowFailure("用户未邮件激活！");
						$("#btn_login").html("登录");
					}else if(data.login=="screen"){
						ShowFailure("用户已被屏蔽,请联系管理员！");
						$("#btn_login").html("登录");
					}else{					
						ShowFailure("登陆失败!");
						$("#btn_login").html("登录");
					}
				}
			});
		}else{
			$("#btn_login").html("登录");
		}
		
	});
});