<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<link rel="icon" href="${APP_PATH}/static/img/stop.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="${APP_PATH}/static/css/default.css" />
<link rel="stylesheet" href="${APP_PATH}/static/css/swiper3.07.min.css" />
<script src="${APP_PATH}/static/js/jquery.min.js"></script>
<script src="${APP_PATH}/static/js/main.js"></script>
<script src="${APP_PATH}/static/js/koala.min.1.5.js"></script>
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
						<li><a class="a_login" href="toUserLogin" title="登录">登录</a></li>
					</c:when>
					<c:otherwise>
						<li><a class="a_account" href="">${userObj.getAccount() }</a></li>
						<li><a class="a_logout" href="logout" onclick="alert('注销成功！');">退出登录</a></li>
						<li><a class="a_personal" href="usercenter/showOrder">个人中心</a></li>
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
				<a href="userLoginToMain"> <img
					src="${APP_PATH}/static/img/logo.png" alt="什么冬梅" />
				</a>
			</div>
			<div class="mm fr clearfix">
				<a href="carSelect">查车位</a>
			</div>
		</div>
	</div>

	<!--
      	作者：offline
      	时间：2018-07-18
      	描述：banner 
      -->
	<div class="banner container">
		<div class="clearfix">
			<div class="about fl">
				<img alt="" src="${APP_PATH}/static/img/timg.jpg" width="288px" />
			</div>
			<div class="focus fl" id="fsD1">
				<div class="fPic" id="D1pic1">
					<div class="fcon">
						<a><img src="${APP_PATH}/static/img/f1.jpg" /></a> <span
							class="shadow"><a>停车入库</a></span>
					</div>
					<div class="fcon">
						<a><img src="${APP_PATH}/static/img/f2.jpg " /></a> <span
							class="shadow"><a>停车入库</a></span>
					</div>
					<div class="fcon">
						<a><img src="${APP_PATH}/static/img/f3.jpg" /></a> <span
							class="shadow"><a>停车入库</a></span>
					</div>
					<div class="fcon">
						<a><img src="${APP_PATH}/static/img/f4.jpg" /></a> <span
							class="shadow"><a>停车入库</a></span>
					</div>
					<div class="fcon">
						<a><img src="${APP_PATH}/static/img/f5.jpg" /></a> <span
							class="shadow"><a>停车入库</a></span>
					</div>
				</div>

				<div class="fbg">
					<div class="D1fBt" id="D1fBt">
						<a class="current" href="javascript:void(0)"><i>1</i></a> <a
							href="javascript:void(0)"><i>2</i></a> <a
							href="javascript:void(0)"><i>3</i></a> <a
							href="javascript:void(0)"><i>4</i></a> <a
							href="javascript:void(0)"><i>5</i></a>
					</div>
				</div>
			</div>
			<!--
                   	作者：offline
                   	时间：2018-07-18
                   	描述：在下面href输入每个页面路径
                   -->
			<div class="help fr" style="overflow: auto;">
				<h2>最新公告</h2>
				<ul>
					<c:forEach items="${noticeList }" var="item">
						<li><a href="toAnnouncement?titleId=${item.id } "><span>${item.title }</span>
								<span style="float: right; margin-right: 3%">
									<fmt:formatDate value="${item.createTime }" pattern="yyyy-MM-dd"/>
								</span> 
						    </a>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<br /> <img alt="" src="${APP_PATH}/static/img/img00.png"
			style="width: 1200px; height: auto;" /><br />
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
	<script type="text/javascript">
		Qfast.add('widgets', { path: "${APP_PATH}/static/js/terminator2.2.min.js", type: "js", requires: ['fx'] });
		Qfast(false, 'widgets', function () {
			K.tabs({
				id: 'fsD1',   //焦点图包裹id
				conId: "D1pic1",  //** 大图域包裹id
				tabId:"D1fBt",
				tabTn:"a",
				conCn: '.fcon', //** 大图域配置class
				auto: 1,   //自动播放 1或0
				effect: 'fade',   //效果配置
				eType: 'click', //** 鼠标事件
				pageBt:true,//是否有按钮切换页码
				bns: ['.prev', '.next'],//** 前后按钮配置class
				interval: 3000  //** 停顿时间
			})
		})
	</script>

</body>
</html>