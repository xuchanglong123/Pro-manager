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


	</head>
	<body>
		<div class="body">
			<div class="backIcon">
			<a href="orderManagement_issueOrder_all.html">
					<i class="icon icon-chevron-left icon-2x"></i>
				</a>
				</div>
			<div class="orderHeader">
				<div class="name"><font size="3">订单详情</font></div>
			</div>
			<div class="orderBody panel-info">
				<div class="panel panel-info">
				  <div class="panel-heading panel-info">
				    <font size="3">货物已送达
				    </font> 
					 
					    <div class="logo">
					    	<img src="images/LOGO.png" width="60" height="42px"  alt="logo图片">
					    </div>
				  </div>
				  <div class="panel-body panel-info">
				    <div class="headImg">
					    	<img src="images/timg.jpg" width="50px" height="50px" class="img-circle" alt="圆形图片">
					    	 
					    </div>
					    <div class="text1">
					    	<div class="jump">
					    		<button class="btn btn-link" type="button">去她首页<i class="icon icon-home"></i></button>
					    	</div>

					    	闪配侠：蔡徐坤<br>
					    	抢单时间：11:30<br>
					    	送达时间：12:00<br>
					    	
					    </div>
						
					<div class="call">
						<button class="btn btn-block btn-info " type="button">联系配送员&nbsp;<i class="icon   icon-phone-sign"></i></button>
					</div>
				  </div>
				</div>


			</div>
			<div class="orderDetails">
				订单编号        &nbsp;     :    &nbsp;         2016044852<br>
				快递规格        &nbsp;      :     &nbsp;           小型快递<br>
				快递站点         &nbsp;      :    &nbsp;           圆通快递 <br>
				悬赏金额     &nbsp;           :   &nbsp;    ¥2<br>
				送达地点          &nbsp;       :     &nbsp;     师大诚朴园3号楼441<br>
				备  &nbsp;    &nbsp;    &nbsp; 注     &nbsp;  :    &nbsp;         暂无<br>
				评  &nbsp;    &nbsp;    &nbsp; 价     &nbsp;  :    &nbsp;         暂无<br>
			</div>
			<div class="judement">
				<a href="judge.html">
				  <button type="button" class="btn btn-success btn-sm"> &nbsp;现 &nbsp;在 &nbsp;评 &nbsp;价 &nbsp;</button></a>
			</div>
		</div>


	</body>
	</html>