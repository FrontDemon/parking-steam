<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>我的订单</title>
	<link rel="icon" href="${APP_PATH}/static/img/stop.ico" type="image/x-icon">
	<link rel="stylesheet" type="text/css" href="${APP_PATH}/static/css/default.css"/>
	<link rel="stylesheet" href="${APP_PATH}/static/css/showOrder.css" />
	<link rel="stylesheet" href="${APP_PATH}/static/layui/css/layui.css"  />
	<script type="text/javascript" src="${APP_PATH}/static/layui/layui.js"></script>
	<script type="text/javascript" src="${APP_PATH}/static/js/jquery.min.js" ></script>
	<script type="text/javascript">
		$(function() {
			if('${status}' == '1'){
				// 加载个人信息
				$(".order_mess").load("personal");
			}else if('${status}' == '2'){
				$(".order_mess").load("changeMess");
			}else if('${status}' == '3'){
				$(".order_mess").load("myOrder");
			}else if('${status}' == '4'){
				$(".order_mess").load("leaveMess");
			}else{
				// 加载个人信息
				$(".order_mess").load("personal");
			}
			
	
			// 点击个人信息时加载
			$(".personal").click(function() {
				$(".order_mess").load("personal");
			});
			//点击修改密码时加载
			$(".changeMess").click(function() {
				$(".order_mess").load("changeMess");
			});
			//点击我的订单时加载
			$(".myOrder").click(function() {
				$(".order_mess").load("myOrder");
			});
			//点击留言时加载
			$(".leaveMess").click(function() {
				$(".order_mess").load("leaveMess");
			});
			
			
		});
	</script>
</head>
<body>
	<!--
        	作者：offline
        	时间：2018-07-17
        	描述：top
        -->
	<div class="top" id="item4">
		<div class="container clearfix">
			<ul class="fr clearfix">
			 <c:choose>
			    <c:when test="${userObj==null }">
				<li><a class="a_login" href="${APP_PATH}/toUserLogin" title="登录">登录</a></li>
				</c:when>
				<c:otherwise>
				<li><a class="a_account" href="">${userObj.getAccount() }</a></li>
				<li><a class="a_logout" href="${APP_PATH}/logout" onclick="alert('注销成功！');">退出登录</a></li>
				<li><a class="a_personal" href="showOrder">个人中心</a></li>
				</c:otherwise>
			</c:choose>
			</ul>
		</div>
	</div>
	<!--
       	作者：offline
       	时间：2018-07-17
       	描述：header
       -->
	<div class="header">
		<div class="container clearfix">
			<div class="logo fl">
				<a href="${APP_PATH}/userLoginToMain">
					<img src="${APP_PATH}/static/img/logo.png" alt="什么冬梅" />
				</a>
			</div>
			<div class="mm fr clearfix">
				<a href="${APP_PATH}/carSelect">查车位</a>
			</div>
		</div>
	</div>
	<!--
        	作者：offline
        	时间：2018-07-18
        	描述：showOrder
        -->
	<div class="container">
		<div class="container clearfix">
			<div class="bread">
				当前位置： <a href="#">首页</a> > <a href="#">车位详情</a>
			</div>
			<div class="nav_left" style="height: 280px;">
				<ul class="layui-nav layui-nav-tree layui-bg-cyan layui-inline"
					lay-filter="demo">
					<li class="layui-nav-item"><a href="javascript:;">个人中心</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" class="personal">个人信息</a>
							</dd>
							<dd>
								<a href="javascript:;" class="changeMess">修改密码</a>
							</dd>
						</dl></li>

					<li class="layui-nav-item"><a href="javascript:;">订单管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" class="myOrder">我的订单</a>
							</dd>
						</dl></li>

					<li class="layui-nav-item"><a href="javascript:;">留言管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" class="leaveMess">我的留言</a>
							</dd>
						</dl></li>
				</ul>
			</div>

			<div class="order_mess">
			
			</div>
		</div>
	</div>
	<!--
        	作者：offline
        	时间：2018-07-17
        	描述：footer
        -->
	<div class="footer">
		<div class="container">
			<div class="zhinan">
				<ul class="clearfix">
					<li class="item-li">关于我们
						<ul>
							<li><a href="#">联系我们</a></li>
							<li><a href="#">网站公告</a></li>
						</ul>
					</li>
					<li class="item-li">新手指南
						<ul>
							<li><a href="#">如何买票</a></li>
							<li><a href="#">修改密码</a></li>
						</ul>
					</li>
					<li class="item-li">配送方式
						<ul>
							<li><a href="#">配送范围</a></li>
							<li><a href="#">配送时间</a></li>
						</ul>
					</li>
					<li class="item-li">售后服务
						<ul>
							<li><a href="#">退票申请</a></li>
							<li><a href="#">改签申请</a></li>
						</ul>
					</li>
				</ul>
			</div>

			<div class="bottom">
				<p>友情链接：百度</p>
				<p>本站所有信息均为用户自由发布，本站不对信息的真实性负任何责任，交易时请注意识别信息的真假如有网站内容侵害了您的权益请联系我们删除</p>
				<p>Copyright &copy;1956-2018 什么冬梅停车系统.</p>
			</div>
		</div>
	</div>
	<script>
			layui.use('element', function(){
			  var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块		  
			  //监听导航点击
			  element.on('nav(demo)', function(elem){
			    layer.msg(elem.text());
			  });
			});
		</script>
</body>
</html>