<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>发布订单</title>
    <link href="css/style.css" rel="stylesheet">
    <link href="css/debit.css" rel="stylesheet">
    <!-- zui -->
    <link href="css/zui.css" rel="stylesheet">
    <link href="lib/uploader/zui.uploader.min.css" rel="stylesheet">
    <script src="js/jquery-1.7.min.js"></script>
    <script src="js/zui.js"></script>
    <script src="lib/uploader/zui.uploader.min.js"></script>
    <!-- 图标js -->
    <script src="js/iconfont.js"></script>
    <script type="text/javascript">
      
      $(document).ready(function(){
        
        $("#pay").click(function(){
          var up=$('#uploaderimg').data('zui.uploader');
          up.start();
        });
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
              <option value="dqwz">当前位置</option>
              <option value="hbsfdx">河北师范大学</option>
              <option value="hbkjdx">河北科技大学</option>
            </select>
            
          <label for="school" class="input-control-label-left text-left"><i class="icon icon-map-marker">学校:</i></label>
        </div>
      	<div class="input-control has-label-left">
            <select class="form-control " id="post" >
              <option value="yt">圆通快递</option>
              <option value="jd">京东快递</option>
              <option value="sf">顺丰快递</option>
            </select>
    		  <label for="post" class="input-control-label-left text-left">起始地:</label>
    		</div>
        <div class="map input-control">
          <img src="images/map.png" width="319px" height="200px" class="img-thumbnail" alt="缩略图">
        </div>
  		  <div class="input-control has-label-left">
    		  <input id="dest" type="text" class="form-control" placeholder="要送到哪？">
    		  <label for="dest" class="input-control-label-left text-left">目的地:</label>
    		</div>
      </div>
      
    	<div class="container-fluid information">
    		<div class="input-control has-label-left-lg  form-time information">
    		  <input class="form-control text-right" id="time"type="time" >
    		  <label for="time" class="input-control-label-left text-left">送达时间:</label>
    		</div>
    		<div class="input-control has-label-left information">
    		  <input id="fee" type="text" class="form-control text-right" placeholder="请输入佣金">
    		  <label for="fee" class="input-control-label-left text-left">佣金:</label>
    		</div>
    		<div class="input-control has-label-left information">
    			<li class="form-control" id="weight" > 
    				<label class="radio-inline">
    				  <input class="we" type="radio" name="radioOptionsExample" >＞5kg
    				</label>

    				<label class="radio-inline">
    				  <input class="we" type="radio" name="radioOptionsExample" >1-5kg
    				</label>
    				<label class="radio-inline">
    				  <input class="we" type="radio" name="radioOptionsExample" >＜1kg
    				</label>
    			</li>
    		  <label for="weight" class="input-control-label-left text-left">规格:</label>
    		</div>
        <!-- 图片上传 -->
        <div class="input-control has-label-left information">
            <div id='uploaderimg' class="uploader form-control" data-ride="uploader" data-url="your/file/upload/url">
                  <div>
                    <div class="file  ">
                      <div class="file-progress-bar"></div>
                      <div class="file-wrapper">
                        
                        <div class="uploader-files  file-list file-list-grid"><img  class="uploader-btn-browse"" src="images/upload.jpg"></div>
                      </div>
                  </div>
                </div>
          </div>
        </div>
    		<div class="input-control has-label-left information">
    		  <input id="remark" type="text" class="form-control text-right" placeholder="">
    		  <label for="remark" class="input-control-label-left text-left">备注:</label>
    		</div>
    	</div>	
    	<div class="pay container-fluid">
    		<button class="btn btn-block btn-primary " id="pay" type="button" onclick="location='issuanceOrder_success.jsp'">确认发布</button>
    	</div>

      <!-- 下方导航 -->
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
          <li class="">
            <a href="orderCenter_orderCenter.jsp">
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