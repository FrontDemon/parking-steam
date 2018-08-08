<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>个人信息</title>
        <link rel="stylesheet" type="text/css" href="${APP_PATH}/static/css/showOrder.css">
        <script type="text/javascript" src="${APP_PATH}/static/js/jquery.min.js" ></script>
        
        <script type="text/javascript">
            $(function(){
                $("#commit").click(function () {
                    var phone = $(".phone").val();//电话
                    var license_num = $(".license_num").val();//车牌
                    let isEmpty = (phone == "" || license_num == "");
                    let isNull =  (phone == null || license_num == null);
                    //输入不为空时传值到后台
                    if(isEmpty || isNull){
                        alert("输入不能为空！");
                    }else{
                        $.ajax({
                            url:"updateUserInfo",
                            type:"POST",
                            data:{
                                "phone":phone,
                                "licenseNum":license_num
                            },
                            success:function (result) {
                                if(result.code == 1){
                                    alert(result.msg);
                                    //跳转个人中心页面！
                                    window.location.href = "showOrder";
                                }else{
                                    alert(result.msg);
                                }
                            },
                            error:function () {
                                alert("error!");
                            }
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
                <span class="span1">用户名：</span>
                <span class="userName">${user.name }</span>
            </div>
            <div class="div1">
                <span class="span1">用户积分：</span>
                <input type="text" class="integral" value="" placeholder="0" readonly="true" />
                <span class="span1">享受折扣：</span>
                <input type="text" class="discount" value="" placeholder="无折扣" readonly="true"/>
                <span style="color: red;margin-left: 30px;">注：100~300享9折,300~500享8折,500以上享7折</span>
            </div>
            <div class="div1">
                <span class="span1">联系电话：</span>
                <input type="text" class="phone" value="${user.phone }"/>
                <span class="span1">车牌号码：</span>
                <input type="text" class="license_num" value="${user.licenseNum }"/>
            </div>
            <div>
                <span class="span1"></span>
                <button id="commit">修改</button>
            </div>
        </div>
    </body>
</html>