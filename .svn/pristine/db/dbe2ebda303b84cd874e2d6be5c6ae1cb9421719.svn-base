<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		 <title>我的订单</title>
        <link rel="stylesheet" type="text/css" href="${APP_PATH}/static/css/showOrder.css">
        <link rel="stylesheet" href="${APP_PATH}/static/layui/css/layui.css"  />
        <script type="text/javascript" src="${APP_PATH}/static/layui/layui.js"></script>
    </head>
    <body>
        <div class="mess_top">我的订单</div>
        <div class="mess_bottom">
            <table class="layui-table" lay-skin="line">
                <tr>
                    <td>订单编号</td>
                    <td>下单时间</td>
                    <td>车牌号</td>
                    <td>车位编号</td>
                    <td>车位价格</td>
                    <td>应付金额</td>
                    <td>状态</td>
                    <td>操作</td>
                </tr>
                <!--数据库获取数据进行相应操作-->
				<tbody>
				<c:forEach items="${orderList}" var="order">
					<tr>
						<td>${order.id }</td>
						<td>${order.getStringDate() }</td>
						<td>${order.lotId }</td>
						<td>${order.lotId}</td>
						<td>${order.price }</td>
						<td>${order.total }</td>
						<td>${order.getOrderEnum().getMsg() }</td>
						<td><a
							href="deleteorder?orderId=${order.id}&lotId=${order.lotId }">删除</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
        </div>
    </body>
</html>
