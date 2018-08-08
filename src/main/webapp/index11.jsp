<%-- <%@ page contentType="text/html;charset=UTF-8" language="java" %> --%>
<%-- <jsp:forward page="/UserLogin"></jsp:forward> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <script src="${APP_PATH}/static/js/jquery1.9.1.min.js"></script>
 <link rel="icon" href="${APP_PATH}/static/img/stop.ico" type="image/x-icon">
 <link rel="stylesheet" href="${APP_PATH}/static/css/style1.css" />
<title>用户登录</title>
</head>
<body>
<div class="main">	
			<div class="w3layouts_main agileinfo w3">
				<div class="w3_agile_signup_form agileits">
					<h1 class="w3_agileits w3ls" style="margin-top: 60px;">登录</h1>
					<div class="agile_login_form">
						<form class="agileits_w3layouts_form"  style="margin:0 auto;">
							<input type="text" name="Username" placeholder="用户名称" required="required">
							
							<input type="password" name="password" placeholder="密码" required="required">
							<input type="button" onclick="login()" value="登录">
						</form>
					</div>
					<div>
						<a class="toSignUp" href="signUp.html">去注册</a>
					</div>
				</div>
			</div>
			<div class="agileits_copyright w3l">
				<p>© 2018 什么冬梅停车系统</p>
			</div>
		</div>
</body>
<script>
$(function(){
	
});
function login(){
	alert("hello");
}
</script>
</html>