<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改密码</title>
        <link rel="stylesheet" type="text/css" href="${APP_PATH}/static/css/showOrder.css">
        <script type="text/javascript" src="${APP_PATH}/static/js/jquery.min.js" ></script>
        <script type="text/javascript">
            $(function()
            {
                //提交修改事件
                $("#commit1").click(function(){
                    var yMess=$(".yMess").val();
                    var xMess=$(".xMess").val();

                    //判断传入的值是否为空
                    if(yMess == ""  || yMess == null || xMess == "" || xMess == null)
                    {
                        alert("输入不能为空！");
                    }else{
                        $.ajax({
                            url:'changepsw',
                            type:'post',
                            data:{psw:yMess,newpsw:xMess},
                            success:function(result){
                                if(result.code == 1)
                                {
                                    alert("密码修改成功！");
                                    //跳转个人中心页面！
                                    window.location.href = "showOrder?status=2";
                                }else{
                                    alert("原密码输入有误！");
                                }
                            },
                            error:function () {alert('error!');}
                        });
                    }
                });


            });
        </script>
    </head>
    <body>
        <div class="mess_top">个人信息</div>
        <div class="mess_bottom">
            <div class="div1">
                <span class="span1">原始密码：</span>
                <input type="text" class="yMess" />
            </div>
            <div class="div1">
                <span class="span1">新密码：</span>
                <input type="text" class="xMess" />
            </div>
            <div>
                <span class="span1"></span>
                <button id="commit1">确认修改</button>
            </div>
        </div>
    </body>
</html>