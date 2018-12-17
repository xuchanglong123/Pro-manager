<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>选择驿站</title>
    <!-- zui -->
    <link href="css/zui.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/orderCenter.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/iconfont.js"></script>
    <link href="css/style4.css" rel="stylesheet">
    <style type="text/css">
        #container{

		float:left ;
		width:100%;
		height:500px;
		margin-bottom:2%;
		border:2px solid lightgray;
	}
    </style>
    <script src="https://webapi.amap.com/maps?v=1.4.8&key=b6357af7e5eb44585f533ed85e6c238f&callback=init&plugin=AMap.PlaceSearch,AMap.AdvancedInfoWindow"></script>
	<script type="text/javascript" src="js/map4.js"></script>
</head>
<body>
<!-- 在此处编码你的创意 -->
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
    <!--地图位置-->
    <div id="container"></div>
    <!--底部导航栏-->
    <div class="menu">
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
<!-- jQuery (ZUI中的Javascript组件依赖于jQuery) -->
<script src="//code.jquery.com/jquery-1.7.0.min.js"></script>
<!-- ZUI Javascript组件 -->
<script src="js/zui.min.js"></script>
</body>
</html>