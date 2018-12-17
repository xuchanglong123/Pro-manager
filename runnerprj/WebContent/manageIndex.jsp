<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>管理员登录</title>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0"/>
    <meta name="format-detection" content="telephone=no"/>
    <link rel="stylesheet" type="text/css" href="css/bike.css">
    <link rel="stylesheet" type="text/css" href="css/manage.css">
    <script src="js/jquery.min.js"></script>
    <script>
    </script>

</head>
<body style="background: #eff3f6;">
<div style="height:160px;"></div>
<div class="con_wrap wrap_show">
    <div class="motor_hook">
        <div class="motor_wrap">
            <div class="man">
                <div class="head"></div>
                <div class="body"></div>
            </div>
            <div class="motor">
                <div class="wheel_front"></div>
                <div class="wheel_back"></div>
                <div class="motor_body"></div>
                <div class="motor_handle"></div>
                <div class="motor_pipe">
                    <i class="pipe"></i>
                    <i class="smoke smoke_1"></i>
                    <i class="smoke smoke_2"></i>
                </div>
            </div>
        </div>
        <div class="motor_shadow"></div>
    </div>
</div>
<div class="main" style="overflow: hidden;">
    <!-----start-main---->
   
    <form>
        <div class="lable-2">
            <input type="text" class="text" placeholder="账号" id="username" value="root">
            <p id="YHMerror"></p>
        </div>
        <div class="lable-2"></div>
        <div class="lable-2">
            <input type="password" id="password" class="text" placeholder="密码" value="123456">
            <p id="MMerror"></p>
        </div>
        <div class="clear"></div>
        <div class="submit">
            <input type="button" id="managerSubmit" value="管理员登陆" style="cursor:pointer;font-size: 25px;width:150px;height:50px;background:green;color:white;">
        </div>
        <script type="text/javascript">
        	$('#managerSubmit').on('click', function(){
        		var jsonObject={
        				"id":"null",
        				"username":$('#username').attr('value'),
        				"password":$('#password').attr('value')
        		};
        		$.post("manager/login",{jsonString:JSON.stringify(jsonObject)},
						function(result){
        				var re=eval("("+result+")");
							if(re.status){
								window.location.href="user.jsp";
							}else{
								alert("密码错误");
							}
						}
					)
        	})
        </script>
        <div class="clear"></div>
    </form>
    <!-----//end-main---->
</div>
<!-----start-copyright---->
<div class="copy-right">
   
</div>
</body>
</html>
    