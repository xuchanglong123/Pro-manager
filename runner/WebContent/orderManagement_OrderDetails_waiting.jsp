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
        <script src="https://webapi.amap.com/maps?v=1.4.8&key=b6357af7e5eb44585f533ed85e6c238f&callback=init&plugin=AMap.PlaceSearch,AMap.AdvancedInfoWindow"></script>
	<script type="text/javascript" src="js/map2.js"></script>


     <style type="text/css">
.backIcon{
        position:absolute;
        top:1%;
        left:1%;
        width:10%;
    }
    
    .orderHeader{
        width:100%;
        margin-bottom:2%;
        
    }
    .name{width:30%;
        margin-left:41%;
        margin-top:2%;
    }
    .logo{
        float:right;
        top:0px;}
        .panel-heading{
        padding-bottom: 4%;
        padding-top:3%;
}
   
   
    .jump{
        width:14%;
        float:right ;
        
    }
    .call{
        margin-top:5%;
        width:100%;
    }
.orderDetails{
        padding-left: 25%;
    }
    .cancel{
        float:right ;
        margin-right:40%;
        margin-top:10%;
    }
	#container{

		float:left ;
		width:100%;
		height:320px;
		margin-bottom:2%;
		border:2px solid lightgray;
	}
    .undermap{
        float:left ;
       	padding-left:2%;
        width:100%;
    }
    .panel-body{
        padding:0px;
    }
    .input-card {
  display: flex;
  flex-direction: column;
  min-width: 0;
  word-wrap: break-word;
  background-color: #fff;
  background-clip: border-box;
  border-radius: .25rem;
  width: 22rem;
  border-width: 0;
  border-radius: 0.4rem;
  box-shadow: 0 2px 6px 0 rgba(114, 124, 245, .5);
  position: fixed;
  top: 9rem;
  right: 0rem;
  -ms-flex: 1 1 auto;
  flex: 1 1 auto;
  padding: 0.75rem 1.25rem;
}
.call{
		margin-top:5px;
	}
    </style>
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
            <div class="orderBody panel-warning">
                <div class="panel panel-warning">
                  <div class="panel-heading panel-warning">
                    <font size="3">等待接单中
                    </font> 
                     
                        <div class="logo">
                            <img src="images/LOGO.png" width="60" height="42px"  alt="logo图片">
                        </div>
                  </div>
                  <div class="panel-body panel-warning">
                  </div>
                   <div id="container">
					    </div>
					    <div class="input-card" style="width: auto;">
	    					<div class="input-item">
	    						<button id="ch-layer-btn"  class="btn">卫星地图</button>
	    						<div class="call">
					    			<button class="btn btn-block btn-info " type="button">取消订单</button>
					    		</div>
						    </div>
						</div>
                   <div class="undermap">
                     	在等待........
                   </div>
                </div>

            <div class="orderDetails">
                订单编号        &nbsp;     :    &nbsp;         2016044852<br>
                快递规格        &nbsp;      :     &nbsp;           小型快递<br>
                快递站点         &nbsp;      :    &nbsp;           圆通快递 <br>
                悬赏金额     &nbsp;           :   &nbsp;    ¥2<br>
                送达地点          &nbsp;       :     &nbsp;     师大诚朴园3号楼441<br>
                备  &nbsp;    &nbsp;    &nbsp; 注     &nbsp;  :    &nbsp;         暂无<br>
                
            </div>
        </div>
    </body>


    </html>