<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>发布订单</title>
    <link href="css/style4.css" rel="stylesheet">
    <link href="css/debit.css" rel="stylesheet">
    <script src="https://webapi.amap.com/maps?v=1.4.8&key=b6357af7e5eb44585f533ed85e6c238f&callback=init&plugin=AMap.PlaceSearch,AMap.AdvancedInfoWindow"></script>
	<script type="text/javascript" src="js/map3.js"></script>
    <!-- zui -->
    <link href="css/zui.css" rel="stylesheet">
    <link href="lib/uploader/zui.uploader.min.css" rel="stylesheet">
    <script src="js/jquery-1.7.min.js"></script>
    <script src="js/zui.js"></script>
    <script src="lib/uploader/zui.uploader.min.js"></script>
    <!-- 图标js -->
    <script src="js/iconfont.js"></script>
    <script type="text/javascript">
    	var nTime=new Date();

      $(document).ready(function(){
    	  
        $("#pay").click(function(){
          var up=$('#uploaderimg').data('zui.uploader');
          up.start();
        });
        
        $("#pay").click(function () {
			var order={
					"money":$("#fee").val(),
					"receipt":$("#dest").val(),
					"delivery":$("#school").val()+$("site").val(),
					"remarks":$("#remark").val(),
					 "invoiceTime":null,
					"receiptTime":null,
					"successTime":null, 
					"status":"0",
					"deliveryTime":null,
					"invoiceId":"0",
					"receiptId":"0",
					"size":$(".we").val(),
					"coordinate":"0",
					"itemNumber":"123",
			}
			/*
			$.ajax({
		        type : 'post',
		        url : 'sub',
		        dataType : 'json',
		        data : JSON.stringify(order),
		        success : function(data) {
		            
		        },
		        error : function() {
		            alert('提示1', '请求失败！', 'error');
		        }
		    });*/
		    
		    $.post(
		    		"sub",
		    		{"jsonString":JSON.stringify(order)},
		    		function(result){
		    			alert(result);
		    		}
		    );
		 
			});
        function  dest() {
			$("#dest").val()="123";
				
			};
        
      });
    </script>
  </head>
  <body class="body">
      <!-- title -->
      <h2 class="title container-fluid">
		    <div class="top-title">发布订单</div>
      </h2>
      <!-- 主要内容 -->
      <div class="container-fluid address">
        
        <div class="input-control has-label-left">
            <select class="form-control " id="school" >
              <option value="dqwz" class="schoolName"></option>
              <option value="hbsfdx">河北师范大学</option>
              <option value="hbkjdx">河北科技大学</option>
            </select>
            
          <label for="school" class="input-control-label-left text-left"><i class="icon icon-map-marker">学校:</i></label>
        </div>
      	<div class="input-control has-label-left">
            <select class="form-control " id="site" >
             
            </select>
    		  <label for="post" class="input-control-label-left text-left">起始地:</label>
    		</div>
    	<div class="map input-control">
    		  <div id="container" style="width:100%;height:100%;border:1px solid #D0D0D0;"></div>
        </div>
  		  <div class="input-control has-label-left">
    		  <input id="dest" type="text" class="form-control" placeholder="点击地图获取送达目的地经纬度"  name="destination" onblur="dest()">
    		  <label for="dest" class="input-control-label-left text-left">送达目的地:</label>
    		</div>
      </div>
      
    	<div class="container-fluid information">
    		<div class="input-control has-label-left-lg  form-time information">
    		  <input class="form-control text-right" id="time"type="time" name="time" >
    		  <label for="time" class="input-control-label-left text-left">送达时间:</label>
    		</div>
    		<div class="input-control has-label-left information">
    		  <input name="fee" id="fee" type="text" class="form-control text-right" placeholder="请输入佣金"  value="10">
    		  <label for="fee" class="input-control-label-left text-left">佣金:</label>
    		</div>
    		<div class="input-control has-label-left information">
    			<li class="form-control" id="weight" > 
    				<label class="radio-inline">
    				  <input class="we" type="radio" name="radio"  value="large">＞5kg
    				</label>

    				<label class="radio-inline">
    				  <input class="we" type="radio" name="radio" value="medium">1-5kg
    				</label>
    				<label class="radio-inline">
    				  <input class="we" type="radio" name="radio" value="small">＜1kg
    				</label>
    			</li>
    		  <label for="weight" class="input-control-label-left text-left">规格:</label>
    		</div>
        <!-- 图片上传 -->
   		
     	<input type="file" name="addOrderFile" id="addOrderFile" style="display: none;" onchange="filechange(event)">
        <div id="addOrderInfo"><img  id="addInfoImg" class="uploader-btn-browse" src="images/addUserImg.png"></div>
        
        
    		<div class="input-control has-label-left information">
    		  <input id="remark" type="text" class="form-control text-right" placeholder="">
    		  <label for="remark" class="input-control-label-left text-left">备注:</label>
    		</div>
    	</div>	
    	<div class="pay container-fluid">
    		<a href="">
    			<button class="btn btn-block btn-primary " id="pay" type="button" onclick="">确认发布</button>
    		</a>
    	</div>
    	

      <!-- 下方导航 -->
      <div class="menu ">
        <ul class="nav nav-primary">
          <li class="">
            <a href="index">
              <svg class="iconb" aria-hidden="true"><use xlink:href="#icon-shouye-xianxing"></use> 
              </svg> 
              <div class="menu-text">
              首页
              </div>
            </a>
          </li>
          <li class="">
            <a href="oc_orderCenter.jsp">
              <svg class="iconb" aria-hidden="true"><use xlink:href="#icon-baoguofahuo-xianxing"></use> 
              </svg> 
              <div class="menu-text">
                代取
              </div>
            </a>
          </li>
          <li class="active">
            <a href="issuanceOrders.jsp">
              <svg class="iconb" aria-hidden="true"><use xlink:href="#icon-jijianfasong-xianxing"></use> 
              </svg> 
              <div class="menu-text">
                发单
              </div>
            </a>
          </li>
          <li class="">
            <a href="newMsg">
              <svg class="iconb" aria-hidden="true"><use xlink:href="#icon-liaotianduihua-xianxing"></use> 
              </svg> 
              <div class="menu-text">
                消息
              </div>
            </a>
          </li>
          <li class="">
            <a href="pc_home.jsp">
              <svg class="iconb" aria-hidden="true"><use xlink:href="#icon-yonghu-xianxing"></use> 
              </svg> 
              <div class="menu-text">
                我
              </div>
            </a>
          </li>
        </ul>
      </div>
      <script type="text/javascript" src="https://webapi.amap.com/maps?v=1.4.11&key=096c6a488c034c4cd5c11a51fb5f542d"></script>
	<script src="js/mapAll.js"></script>
  </body>
</html>