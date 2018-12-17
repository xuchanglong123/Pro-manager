<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
 	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>订单详情</title>
    <!-- zui -->
    <link href="css/zui.min.css" rel="stylesheet">
    <link href="css/orderList.css" rel="stylesheet">
    <script src="js/layer.js"></script>
    <script src="js/orderList.js"></script>
</head>
<body>
<!-- 在此处编码你的创意 -->
<div class="list">
    <!--顶端提示和返回-->
    <div class="listTop">
        <i class="icon icon-chevron-left"><h2>订单</h2></i>
        
    </div>
    <!--订单列表-->
    <div class="listCenter">
    <c:forEach items="${orderList}" var="order">
        <div class="shadow"></div>
        <div class="listDetails">
            <!--快递位置-->
            <div class="postAddress">${order.delivery}</div>
            <!--连接词-->
            <div class="link">送至</div>
            <!--送达位置-->
            <div class="serviceAddress">${order.receipt}</div>
        </div>
        <div class="listDetails">
            <!--快递规格-->
            <div class="specification">${order.size}</div>
            <!--金额-->
            <div class="amount">${order.money}元</div>
        </div>
        <div class="seeDetails"><a href="orderCenter_orderDetails.jsp" style="text-align: center;font-size: 16px;padding-left: 7%">查看详情</a></div>
        </c:forEach>
        
    </div>
    <!--分页-->

</div>
<!-- jQuery (ZUI中的Javascript组件依赖于jQuery) -->
<!--<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>-->
<!-- ZUI Javascript组件 -->
<script src="js/zui.min.js"></script>

</body>
</html>