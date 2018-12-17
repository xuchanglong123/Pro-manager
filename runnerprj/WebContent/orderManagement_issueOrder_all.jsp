
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>订单管理</title>
    <!-- zui -->
    <link href="css/zui.min.css" rel="stylesheet">
	
	<link href="css/manage3.css" rel="stylesheet">



  </head>

  <body>
  <div class="body">
    

    <!-- 在此处编码你的创意 -->

	<div class="choose dropdown dropdown-hover">
		
   <div class="backIcon">
			<a href="personalCenter_login.html">
					<i class="icon icon-chevron-left icon-2x"></i>
				</a>
				</div>
  <div class="dropdown dropdown-hover">
 
  <font size="3">我的订单</font>
</div>



	</div>


<div class="guide">
<ul class="nav nav-secondary nav-justified ">
  <li class=""><a href="orderIndex">全部</a></li>
  <li><a href="orderIndex?status=0">未接单 <span class="label label-badge label-success"></span></a></li>
  <li><a href="orderIndex?status=1">运送中<span class="label label-badge label-success"></span></a></li>
  <li><a href="orderIndex?status=3">已完成<span class="label label-badge label-success"></span></a></li>
  
  <li><a href="orderIndex?status=4">其他 <span class="label label-badge label-success"></span></a></li>
  
</ul>
</div>
	
<div class="orderBox">


<c:forEach items="${orderlist }" var= "ca" >
<c:choose>
<c:when test="${ca.status==3}">


<div class="panel panel-info">
  <div class="panel-heading panel-info">
   订单类型：已送达<i class="icon icon-checked "></i>
   
  </div>
  <div class="panel-body panel-info">
  <div class="orderContent">
  	<div class="ordPic"> <img src="${user2.headPortrait}" width="40px" height="40px" class="img-circle" alt="圆形图片"> &nbsp;&nbsp;&nbsp;配送人员：${user2.nickname}
			
		<button class=" btn btn-sm call " type="button" data-toggle="dropdown">联系配送员&nbsp;<span class=" icon  icon-chat"></span></button>
  	</div>
	<div class="ordDetailsBlue">

	<div class="box1">
		订单编号：${ca.orderNumber }<br>
		发布时间：${ca.invoiceTime }<br>
		快递站点：${ca.delivery }<br>
		送达地点：${ca.receipt} <br>
		
	</div>
	<div class="box2">
		<i class="icon icon-yen icon-2x">${ca.money}</i>
	</div>
		
	</div>
  </div>
   <!--<div class="detilBtn"><button type="button" class="btn btn-info">.btn-info</button></div>-->
  </div>

<div class="more">
<a href="orderDetails?orderid=${ca.orderNumber}">
<button  class=" btn btn-link" type="button">更多详情&nbsp; <span class="icon-fast-forward"></span></button>
</a> 
	 <div class="jude">
	<font size="1">订单已完成，评价一下8</font> 
	<a href="orderManagement_judgement.html">
	 <button class="btn" type="button">&nbsp;评&nbsp;&nbsp;价&nbsp;</button>
	</a>
	 </div>
	 </div>
</div>


</c:when>







<c:when test="${ca.status==8}">
<div class="panel panel-info">
  <div class="panel-heading panel-info">
   订单类型：已送达<i class="icon icon-checked "></i>
   
  </div>
  <div class="panel-body panel-info">
  <div class="orderContent">
  	<div class="ordPic"> <img src="${user2.headPortrait}" width="40px" height="40px" class="img-circle" alt="圆形图片"> &nbsp;&nbsp;&nbsp;配送人员：${user2.nickname}
			
		<button class=" btn btn-sm call " type="button" data-toggle="dropdown">联系配送员&nbsp;<span class=" icon  icon-chat"></span></button>
  	</div>
	<div class="ordDetailsBlue">

	<div class="box1">
		订单编号：${ca.orderNumber }<br>
		发布时间：${ca.invoiceTime }<br>
		快递站点：${ca.delivery }<br>
		送达地点：${ca.receipt} <br>
		
	</div>
	<div class="box2">
		<i class="icon icon-yen icon-2x">${ca.money}</i>
	</div>
		
	</div>
  </div>
   <!--<div class="detilBtn"><button type="button" class="btn btn-info">.btn-info</button></div>-->
  </div>

<div class="more">
	<a href="orderDetails?orderid=${ca.orderNumber}">
	 <button class=" btn btn-link" type="button" data-toggle="dropdown">更多详情&nbsp;<span class="icon-fast-forward"></span></button>
	</a>
	 
	 </div>
</div>

</c:when>




<c:when test="${ca.status==1}">
<div class="panel  panel-danger">
  <div class="panel-heading  panel-danger">
   订单类型：运送中<i class="icon icon-rocket "></i>
   
  </div>
  <div class="panel-body panel-info">
  <div class="orderContent">
  	<div class="ordPic"> <img src="${user2.headPortrait}" width="40px" height="40px" class="img-circle" alt="圆形图片"> &nbsp;&nbsp;&nbsp;配送人员：${user2.nickname}
			
		<button class=" btn btn-sm call " type="button" data-toggle="dropdown">联系配送员&nbsp;<span class=" icon  icon-chat"></span></button>
  	</div>
	<div class="ordDetailsOrg">

	<div class="box1">
		订单编号：${ca.orderNumber }<br>
		发布时间：${ca.invoiceTime}<br>
		快递站点：${ca.delivery }<br>
		送达地点：${ca.receipt} <br>
		
	</div>
	<div class="box2">
		<i class="icon icon-yen icon-2x">${ca.money}</i>
	</div>
		
	</div>
  </div>
   <!--<div class="detilBtn"><button type="button" class="btn btn-info">.btn-info</button></div>-->
  </div>

<div class="more">
	<a href="orderDetails?orderid=${ca.orderNumber}">
	 <button class=" btn btn-link" type="button" data-toggle="dropdown">更多详情&nbsp;<span class="icon-fast-forward"></span></button>
	</a>
	 <div class="jude">
	 
	
	 </div>
	 </div>
</div>
</c:when>




<c:when test="${ca.status==2}">

<div class="panel  panel-danger">
  <div class="panel-heading  panel-danger">
   订单类型：运送中<i class="icon icon-rocket "></i>
   
  </div>
  <div class="panel-body panel-info">
  <div class="orderContent">
  	<div class="ordPic"> <img src="${user2.headPortrait}" width="40px" height="40px" class="img-circle" alt="圆形图片"> &nbsp;&nbsp;&nbsp;配送人员：${user2.nickname}
			
		<button class=" btn btn-sm call " type="button" data-toggle="dropdown">联系配送员&nbsp;<span class=" icon  icon-chat"></span></button>
  	</div>
	<div class="ordDetailsOrg">

	<div class="box1">
		订单编号：${ca.orderNumber }<br>
		发布时间：${ca.invoiceTime}<br>
		快递站点：${ca.delivery }<br>
		送达地点：${ca.receipt} <br>
		
	</div>
	<div class="box2">
		<i class="icon icon-yen icon-2x">${ca.money}</i>
	</div>
		
	</div>
  </div>
   <!--<div class="detilBtn"><button type="button" class="btn btn-info">.btn-info</button></div>-->
  </div>

<div class="more">
	<a href="orderDetails?orderid=${ca.orderNumber}">
	 <button class=" btn btn-link" type="button" data-toggle="dropdown">更多详情&nbsp;<span class="icon-fast-forward"></span></button>
	</a>

	 <div class="jude">
	
	 <button  class="btn sended" type="button">&nbsp;确认送达&nbsp;</button>
	 </div>
	 </div>
</div>
</c:when>




<c:when test="${ca.status==0}">

<div class="panel panel-warning">
  <div class="panel-heading panel-warning">
   订单类型：等待接单中<i class="icon icon-spinner-snake "></i>
   
  </div>
  <div class="panel-body panel-info">
  <div class="orderContent">
  	
	<div class="ordDetailsYellow">

	<div class="box1">
		订单编号：${ca.orderNumber }<br>
		发布时间：${ca.invoiceTime}<br>
		快递站点：${ca.delivery }<br>
		送达地点：${ca.receipt} <br>
		
	</div>
	<div class="box2">
		<i class="icon icon-yen icon-2x">${ca.money}</i>
	</div>
		
	</div>
  </div>
   <!--<div class="detilBtn"><button type="button" class="btn btn-info">.btn-info</button></div>-->
  </div>

<div class="more">
	<a href="orderDetails?orderid=${ca.orderNumber}">
	 <button class=" btn btn-link" type="button" data-toggle="dropdown">更多详情&nbsp;<span class="icon-fast-forward"></span></button>
	</a>
	 <div class="jude">
	 
	 <button class="btn cancel" type="button">&nbsp;取消此单&nbsp;</button>
	 </div>
	 </div>
</div>
</c:when>


<c:when test="${ca.status==5}">

<div class="panel panel-success">
  <div class="panel-heading panel-success">
   订单类型：已过期<i class="icon  "></i>
   
  </div>
  <div class="panel-body panel-info">
  <div class="orderContent">
  	
	<div class="ordDetailsGreen">

	<div class="box1">
		订单编号：${ca.orderNumber }<br>
		发布时间：${ca.invoiceTime }<br>
		快递站点：${ca.delivery }<br>
		送达地点：${ca.receipt} <br>
		
	</div>
	<div class="box2">
		<i class="icon icon-yen icon-2x">${ca.money}</i>
	</div>
		
	</div>
  </div>
   <!--<div class="detilBtn"><button type="button" class="btn btn-info">.btn-info</button></div>-->
  </div>

<div class="more">
	<a href="orderDetails?orderid=${ca.orderNumber}">
	 <button class=" btn btn-link" type="button" data-toggle="dropdown">更多详情&nbsp;<span class="icon-fast-forward"></span></button></a>
	 <div class="jude">
	 
	 
	 </div>
	 </div>

</div>
</c:when>



<c:when test="${ca.status==4}">
<div class="panel panel-success">
  <div class="panel-heading panel-success">
   订单类型：已取消<i class="icon  "></i>
   
  </div>
  <div class="panel-body panel-info">
  <div class="orderContent">
  	
	<div class="ordDetailsGreen">

	<div class="box1">
		订单编号：${ca.orderNumber }<br>
		发布时间：${ca.invoiceTime }<br>
		快递站点：${ca.delivery }<br>
		送达地点：${ca.receipt} <br>
		
	</div>
	<div class="box2">
		<i class="icon icon-yen icon-2x">${ca.money}</i>
	</div>
		
	</div>
  </div>
   <!--<div class="detilBtn"><button type="button" class="btn btn-info">.btn-info</button></div>-->
  </div>

<div class="more">
	<a href="orderDetails?orderid=${ca.orderNumber}">
	 <button class=" btn btn-link" type="button" data-toggle="dropdown">更多详情&nbsp;<span class="icon-fast-forward"></span></button></a>
	 <div class="jude">
	 
	 
	 </div>
	 </div>
</div>
</c:when>




<c:when test="${ca.status==7}">

<div class="panel panel-primary">
  <div class="panel-heading panel-primary">
   已送达<i class="icon  icon-checked "></i>
   
  </div>
  <div class="panel-body .panel-primary">
  <div class="orderContent">
  	
	<div class="ordDetailsDeepBlue">

	<div class="box1">
		订单编号：${ca.orderNumber }<br>
		发布时间：${ca.invoiceTime}<br>
		快递站点：${ca.delivery }<br>
		送达地点：${ca.receipt} <br>
		
	</div>
	<div class="box2">
		<i class="icon icon-yen icon-2x">${ca.money}</i>
	</div>
		
	</div>
  </div>
   <!--<div class="detilBtn"><button type="button" class="btn btn-info">.btn-info</button></div>-->
  </div>

<div class="more">
		<a href="orderDetails?orderid=${ca.orderNumber}">
	 <button class=" btn btn-link" type="button" data-toggle="dropdown">更多详情&nbsp;<span class="icon-fast-forward"></span></button></a>
	 <div class="jude">
	
	 </div>
	 </div>
</div>
</c:when>


<c:when test="${ca.status==6}">
<div class="panel panel-primary">
  <div class="panel-heading panel-primary">
   订单类型：接单运送中<i class="icon  icon-rocket "></i>
   
  </div>
  <div class="panel-body .panel-primary">
  <div class="orderContent">
  	
	<div class="ordDetailsDeepBlue">

	<div class="box1">
		订单编号：${ca.orderNumber }<br>
		发布时间：${ca.invoiceTime }<br>
		快递站点：${ca.delivery }<br>
		送达地点：${ca.receipt} <br>
	</div>
	<div class="box2">
		<i class="icon icon-yen icon-2x">${ca.money}</i>
	</div>
		
	</div>
  </div>
   <!--<div class="detilBtn"><button type="button" class="btn btn-info">.btn-info</button></div>-->
  </div>

<div class="more">
	<a href="orderDetails?orderid=${ca.orderNumber}">
	 <button class=" btn btn-link" type="button" data-toggle="dropdown">更多详情&nbsp;<span class="icon-fast-forward"></span></button>
	</a>
	 <div class="jude">
	 
	 <button class="btn confirm" type="button">&nbsp;确认送达&nbsp;</button>
	 </div>
	 </div>
</div>
</c:when>
</c:choose>

</c:forEach>

















</div>







</div>




	</div>














    <!-- jQuery (ZUI中的Javascript组件依赖于jQuery) -->
    <script src="js/jquery-1.7.min.js"></script>
    <!-- ZUI Javascript组件 -->
    <script src="js/zui.min.js"></script>
    <script type="text/javascript">
    $('.sending').on('click', function() {
    new $.zui.Messager('确认货物已送达', {
        icon: 'bell' // 定义消息图标
    }).show();
  
});

    $('.sended').on('click', function() {
    new $.zui.Messager('确认货物已送达', {
        icon: 'bell' // 定义消息图标
    }).show();
});

    $('.cancel').on('click', function() {
    new $.zui.Messager('订单已取消', {
        icon: 'bell' // 定义消息图标
    }).show();
});


	</script>
  </body>
</html>





