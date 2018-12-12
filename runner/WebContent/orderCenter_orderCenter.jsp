<%@ page language="java" contentType="text/jsp; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE jsp>
<html>
<head>
< <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>选择驿站</title>
    <!-- zui -->
    <link href="css/zui.css" rel="stylesheet">
    <link rel="stylesheet" href="css/orderCenter.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- ZUI Javascript 依赖 jQuery -->
    <script src="js/jquery-1.7.min.js"></script>
    <!-- ZUI 标准版压缩后的 JavaScript 文件 -->
    <script src="js/zui.js"></script>
    <script src="js/iconfont.js"></script>
    <style type="text/css">
    </style>
</head>
<body>
<!-- 在此处编码你的创意 -->
<div class="order container-fluid">
    <!--顶端提示和返回-->
    <div class="orderTop">
        <div>
            <i class="icon icon-chevron-left"><h2>接单大厅</h2></i>
        </div>

    </div>
    <!--选择地址-->
    <div class="orderCenter">
        <i class="icon icon-map-marker icon-2x" style="margin-left: 9%;color: white"><h3>河北师范大学</h3></i>
        <img src="images/LOGO .png" style="width: 12%;height: 12%;margin-left: 35%">
    </div>
</div>
    <!--地图位置-->
    <!--底部导航栏-->
    <div class="menu ">
        <ul class="nav nav-primary">
          <li class="">
            <a href="index.jsp">
              <svg class="iconb" aria-hidden="true"><use xlink:href="#icon-shouye-xianxing"></use> 
              </svg> 
              <div class="menu-text">
              首页
              </div>
            </a>
          </li>
          <li class="active">
            <a href="orderCenter_orderCenter.jsp">
              <svg class="iconb" aria-hidden="true"><use xlink:href="#icon-baoguofahuo-xianxing"></use> 
              </svg> 
              <div class="menu-text">
                代取
              </div>
            </a>
          </li>
          <li class="">
            <a href="issuanceOrders.jsp">
              <svg class="iconb" aria-hidden="true"><use xlink:href="#icon-jijianfasong-xianxing"></use> 
              </svg> 
              <div class="menu-text">
                发单
              </div>
            </a>
          </li>
          <li class="">
            <a href="newMessage.jsp">
              <svg class="iconb" aria-hidden="true"><use xlink:href="#icon-liaotianduihua-xianxing"></use> 
              </svg> 
              <div class="menu-text">
                消息
              </div>
            </a>
          </li>
          <li class="">
            <a href="personalCenter_login.jsp">
              <svg class="iconb" aria-hidden="true"><use xlink:href="#icon-yonghu-xianxing"></use> 
              </svg> 
              <div class="menu-text">
                我
              </div>
            </a>
          </li>
        </ul>
      </div>

</body>
</html>