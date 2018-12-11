<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>订单详情</title>
    <!-- zui -->
    <link href="css/zui.min.css" rel="stylesheet">
       <!-- jQuery (ZUI中的Javascript组件依赖于jQuery) -->
    <script src="js/jquery-1.7.min.js"></script>
    <!-- ZUI Javascript组件 -->
    <script src="js/zui.min.js"></script>
    <style type="text/css">
	*{border:px solid;}
	.body{width:100%;}
	.orderHeader{
		
		width:100%;
		margin-bottom:2%;
		
	}
	.backIcon{
		position:absolute;
		top:1%;
		left:1%;
		width:10%;
	}
	.name{width:30%;
		margin-left:41%;
		margin-top:2%;
	}
	.logo{
		float:right;
		top:0px;
	}
	.text1{
		width:50%;
		padding:2%;
	}
	.panel-heading{
		padding-bottom: 4%;
		padding-top:3%;

	}
	.panel-danger{
			
	
	}
	.map{

		float:left ;
		width:100%;
		height:400px;
		background-image:url(images/map.png);
		margin-bottom:2%;
		border:2px solid lightgray;
	}
	.courier{
		width:100%;

	}

	.headImg{
		padding-left: 2%;
		padding-right: 2%;
			float:left ;
		width:100%;
	}
	.text2{
		margin-top:2%;
		margin-left: 5%;
		float:right  ;
		width:35%;
	}
	.orderDetails{
		padding-left: 25%;
		margin-top:5%;
	}
	.panel-body{
		padding:0px;
	}
	.orderBody{

	}

	.spanright{
		float:right ;
	}
    </style>
	</head>
	<body>
		<div class="body">
		
			<div class="orderHeader">
				<div class="backIcon">
					<a href="orderManagement_issueOrder_all.html">
					<i class="icon icon-chevron-left icon-2x"></i>
					</a>
				</div>
				<div class="name"><font size="3">订单详情</font></div>
			</div>
			<div class="orderBody">
				
				<div class="panel panel-primary">
					  <div class="panel-heading panel-danger">
					 
					    <font size="3">订单运送中。。。</font> 
					 
					    <div class="logo">
					    	<img src="images/LOGO.png" width="60" height="42px"  alt="logo图片">
					    </div>
					  </div>
					  <div class="panel-body panel-danger">
					    <div class="map">
					    	<h1>map</h1>
					    </div>
					    <div class="courier">
					    <div class="headImg">
					    	
					    	接单时间：11:30 
					    	<span class="spanright">预计送达：12:00</span>
					    	 
					    </div>
					  
							
					    </div>
					    <div class="call">
					    	<button class="btn btn-block btn-info " type="button">联系配送员&nbsp;<i class="icon   icon-phone-sign"></i></button>
					    </div>
					    
					</div>
				</div>
					<div class="orderDetails">
					<font size="2px arial,sans-serif" >
				订单编号        &nbsp;     :    &nbsp;         2016044852<br>
				快递规格        &nbsp;      :     &nbsp;           小型快递<br>
				快递站点         &nbsp;      :    &nbsp;           圆通快递 <br>
				悬赏金额     &nbsp;           :   &nbsp;    ¥2<br>
				送达地点          &nbsp;       :     &nbsp;     师大诚朴园3号楼441<br>
				备  &nbsp;    &nbsp;    &nbsp; 注     &nbsp;  :    &nbsp;         暂无<br>
				</font>
			</div>
			</div>
			
		 </div>





	</body>



</html>
