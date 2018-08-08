<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%
    pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <script src="${APP_PATH}/static/js/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	水果：
	<a id="A" href="#">苹果</a>
	<a href="/B">雪梨</a>
</body>
<script type="text/javascript">
$(function(){
	$("#A").on("click",function(){
		$.ajax({
			  type: 'POST',
			  url: '${APP_PATH}/fruits/A',
			  success: function(result){
				 console.log(result);
			  },
			});
	});
});
</script>
</html>