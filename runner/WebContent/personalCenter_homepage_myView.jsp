<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>个人主页</title>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- ZUI 标准版压缩后的 CSS 文件 -->
    <link href="css/zui.min.css" rel="stylesheet">
	<!-- ZUI Javascript 依赖 jQuery -->
	<script src="js/jquery-1.7.min.js"></script>
	<!-- ZUI 标准版压缩后的 JavaScript 文件 -->
	<script src="js/zui.min.js"></script>
	<!--****************自定义CSS**************-->
	<link rel="stylesheet" href="css/pc_homepage.css">
</head>
<body>
	<div class="Wall" style="background-image:url(images/personalCenter/defaultWall.jpg)">
		<!--wall为用户自定义的背景墙-->
		<img src="images/personalCenter/defaultWall.jpg" class="wall">
		<a href="personalCenter_login.jsp"><img src="images/personalCenter/backwhite.png" class="back"></a>
		<!--头像-->
		<img src="images/personalCenter/defaultPhoto.jpg" class="photo">
	</div>
	<!--资料展示部分-->
	<div class="content">
		<span class="name">我是刘金辀</span>
		<span class="intro">简介：</span><span class="intro_text">我是刘金辀，不服来找我</span>
		<img src="images/personalCenter/location.png" class="location">
		<span class="address">河北-石家庄</span>
		<img src="images/personalCenter/man.png" class="sex">
		<span class="age">21岁</span>
		<div class="context_">
			<div class="context_text">
				<h5>邮箱：</h5>
				<span>61616161@qq.com</span>
			</div>
			<div class="context_text">
				<h5>学校：</h5>
				<span>河北师范大学</span>
			</div>
		</div>
		<div class="order_top">订单信息</div>
		<div class="order_content">
			<div class="order_contents">
				<h5>120</h5>
				<span>总订单</span>
			</div>
			<div class="order_contents">
				<h5>114</h5>
				<span>已完成</span>
			</div>
			<div class="order_contents">
				<h5>6</h5>
				<span>进行中</span>
			</div>
		</div>
		<div class="line"></div>
		<a href="personalCenter_editinformation.jsp"><img src="images/personalCenter/edit.png" class="edit"></a>
		<!--**************图表**************-->
		<div class="chart">
			<div id="container" style="height: 100%"></div>
	       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
	       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
	       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
	       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
	       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
	       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
	       <script type="text/javascript" src="https://api.map.baidu.com/api?v=2.0&ak=ZUONbpqGBsYGXNIYHicvbAbM"></script>
	       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
	       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>
	       <script type="text/javascript">
	          var dom = document.getElementById("container");
	          var myChart = echarts.init(dom);
	          var app = {};
	          option = null;
	          app.title = '环形图';

	          option = {
	              tooltip: {
	                  trigger: 'item',
	                  formatter: "{a} <br/>{b}: {c} ({d}%)"
	              },
	             
	              series: [
	                  {
	                      name:'好评情况',
	                      type:'pie',
	                      radius: ['50%', '70%'],
	                      avoidLabelOverlap: false,
	                      label: {
	                          normal: {
	                              show: false,
	                              position: 'center'
	                          },
	                          emphasis: {
	                              show: true,
	                              textStyle: {
	                                  fontSize: '30',
	                                  fontWeight: 'bold'
	                              }
	                          }
	                      },
	                      labelLine: {
	                          normal: {
	                              show: false
	                          }
	                      },
	                      data:[
	                          {value:45, name:'10星好评'},
	                          {value:35, name:'8星好评'},
	                          {value:25, name:'6星中评'},
	                          {value:10, name:'4星中评'},
	                          {value:5, name:'2星差评'}
	                      ]
	                  }
	              ]
	          };
	          ;
	          if (option && typeof option === "object") {
	              myChart.setOption(option, true);
	          }
	       </script>
		</div>


	</div>
	

</body>
</html>