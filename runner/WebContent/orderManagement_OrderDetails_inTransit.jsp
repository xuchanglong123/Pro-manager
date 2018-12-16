<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">





<html lang="zh-cn">


  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>订单详情</title>
    <!-- zui -->
    <link href="css/zui.min.css" rel="stylesheet">
    <link href="css/detailsAll.css" rel="stylesheet">
       <!-- jQuery (ZUI中的Javascript组件依赖于jQuery) -->
    <script src="js/jquery-1.7.min.js"></script>
    <!-- ZUI Javascript组件 -->
    <script src="js/zui.min.js"></script>
    


    <style type="text/css">
	#container{

		float:left ;
		width:100%;
		height:320px;
		margin-bottom:2%;
		border:2px solid lightgray;
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
    </style>
    <script src="https://webapi.amap.com/maps?v=1.4.8&key=b6357af7e5eb44585f533ed85e6c238f&callback=init&plugin=AMap.PlaceSearch,AMap.AdvancedInfoWindow"></script>
	<script type="text/javascript" src="js/map.js"></script>

	<body>

<c:choose>
<c:when test="${order.status==1}">
	
		<div class="body">
			<div>
			<div class="orderHeader">
				<div class="backIcon">
					<a href="orderIndex">
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
					  </div>
					  <div id="container">
					    </div>
					    <div class="input-card" style="width: auto;">
	    					<div class="input-item">
	    						<button id="ch-layer-btn"  class="btn">卫星地图</button>
						    </div>
						    <div class="call">
					    	<button class="btn btn-block btn-info " type="button">联系&nbsp;<i class="icon   icon-phone-sign"></i></button>
					    	</div>
						</div>
					    
					    
					    <div class="courier">
					    <div class="pickingtime">
					    	
					    	接单时间：${order.receiptTime }
					    	
					    	
					    
					    	 
					    </div>
					  
							
					    </div>
					    
					    
					</div>
				</div>
					<div class="orderDetails">
					<font size="2px arial,sans-serif" >
				订单编号        &nbsp;     :    &nbsp;       ${order.orderNumber }  <br>
				快递站点         &nbsp;      :    &nbsp;          ${order.delivery }    <br>
				悬赏金额     &nbsp;           :   &nbsp;    ¥ ${order.money } <br>
				送达地点          &nbsp;       :     &nbsp;      ${order.receipt } <br>
				备  &nbsp;    &nbsp;    &nbsp; 注     &nbsp;  :    &nbsp;      ${order.remarks }      <br>
				</font>
			</div>
			</div>
			
		 </div>


</c:when>


<c:when test="${order.status==6}">
	
		<div class="body">
			<div>
			<div class="orderHeader">
				<div class="backIcon">
					<a href="orderIndex">
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
					  </div>
					  <div id="container">
					    </div>
					    <div class="input-card" style="width: auto;">
	    					<div class="input-item">
	    						<button id="ch-layer-btn"  class="btn">卫星地图</button>
						    </div>
						    <div class="call">
					    	<button class="btn btn-block btn-info " type="button">联系&nbsp;<i class="icon   icon-phone-sign"></i></button>
					    	</div>
						</div>
					    
					    
					    <div class="courier">
					    <div class="pickingtime">
					    	
					    	接单时间：${order.receiptTime }
					    	
					    	
					    
					    	 
					    </div>
					  
							
					    </div>
					    
					    
					</div>
				</div>
					<div class="orderDetails">
					<font size="2px arial,sans-serif" >
				订单编号        &nbsp;     :    &nbsp;       ${order.orderNumber }  <br>
				快递站点         &nbsp;      :    &nbsp;          ${order.delivery }    <br>
				悬赏金额     &nbsp;           :   &nbsp;    ¥ ${order.money } <br>
				送达地点          &nbsp;       :     &nbsp;      ${order.receipt } <br>
				备  &nbsp;    &nbsp;    &nbsp; 注     &nbsp;  :    &nbsp;      ${order.remarks }      <br>
				</font>
			</div>
			</div>
			
		 </div>


</c:when>


<c:when test="${order.status==2}">
	
		<div class="body">
			<div>
			<div class="orderHeader">
				<div class="backIcon">
					<a href="orderIndex">
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
					  </div>
					  <div id="container">
					    </div>
					    <div class="input-card" style="width: auto;">
	    					<div class="input-item">
	    						<button id="ch-layer-btn"  class="btn">卫星地图</button>
						    </div>
						    <div class="call">
					    	<button class="btn btn-block btn-info " type="button">联系&nbsp;<i class="icon   icon-phone-sign"></i></button>
					    	</div>
						</div>
					    
					    
					    <div class="courier">
					    <div class="pickingtime">
					    	
					    	接单时间：${order.receiptTime }
					    	
					    	
					    
					    	 
					    </div>
					  
							
					    </div>
					    
					    
					</div>
				</div>
					<div class="orderDetails">
					<font size="2px arial,sans-serif" >
				订单编号        &nbsp;     :    &nbsp;       ${order.orderNumber }  <br>
				快递站点         &nbsp;      :    &nbsp;          ${order.delivery }    <br>
				悬赏金额     &nbsp;           :   &nbsp;    ¥ ${order.money } <br>
				送达地点          &nbsp;       :     &nbsp;      ${order.receipt } <br>
				备  &nbsp;    &nbsp;    &nbsp; 注     &nbsp;  :    &nbsp;      ${order.remarks }      <br>
				</font>
			</div>
			</div>
			
		 </div>


</c:when>







<c:when test="${order.status==3}">
	<div class="backIcon">
			<a href="orderIndex">
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

					    	闪配侠：  ${user.nickname } <br>
					    	抢单时间：  ${order.receiptTime } <br>
					    	送达时间：  ${order.deliveryTime }<br>
					    	
					    </div>
						
					<div class="call">
						<button class="btn btn-block btn-info " type="button">联系配送员&nbsp;<i class="icon   icon-phone-sign"></i></button>
					</div>
				  </div>
				</div>


			</div>
			<div class="orderDetails">
				<font size="2px arial,sans-serif" >
				订单编号        &nbsp;     :    &nbsp;       ${order.orderNumber }  <br>
				快递站点         &nbsp;      :    &nbsp;          ${order.delivery }    <br>
				悬赏金额     &nbsp;           :   &nbsp;    ¥ ${order.money } <br>
				送达地点          &nbsp;       :     &nbsp;      ${order.receipt } <br>
				备  &nbsp;    &nbsp;    &nbsp; 注     &nbsp;  :    &nbsp;      ${order.remarks }      <br>
				
				</font>
				
			</div>
			<div class="judement">
				<a href="judge.html">
				  <button type="button" class="btn btn-success btn-sm"> &nbsp;现 &nbsp;在 &nbsp;评 &nbsp;价 &nbsp;</button></a>
			</div>
		</div>
		
		</c:when>
		
		
		
		
<c:when test="${order.status==8}">
	<div class="backIcon">
			<a href="orderIndex">
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

					    	闪配侠：  ${user.nickname } <br>
					    	抢单时间：  ${order.receiptTime } <br>
					    	送达时间：  ${order.deliveryTime }<br>
					    	
					    </div>
						
					<div class="call">
						<button class="btn btn-block btn-info " type="button">联系配送员&nbsp;<i class="icon   icon-phone-sign"></i></button>
					</div>
				  </div>
				</div>


			</div>
			<div class="orderDetails">
				<font size="2px arial,sans-serif" >
				订单编号        &nbsp;     :    &nbsp;       ${order.orderNumber }  <br>
				快递站点         &nbsp;      :    &nbsp;          ${order.delivery }    <br>
				悬赏金额     &nbsp;           :   &nbsp;    ¥ ${order.money } <br>
				送达地点          &nbsp;       :     &nbsp;      ${order.receipt } <br>
				备  &nbsp;    &nbsp;    &nbsp; 注     &nbsp;  :    &nbsp;      ${order.remarks }      <br>
				评价状态：&nbsp;    &nbsp;已评价
				</font>
				
			</div>
			
		</div>
		
		</c:when>
		
		
		
		
		
		
		
		
		
		

		<c:when test="${order.status==4}">
		 <div class="backIcon">
             <a href="orderIndex">
                    <i class="icon icon-chevron-left icon-2x"></i>
                </a>
                </div>
            <div class="orderHeader">
                <div class="name"><font size="3">订单详情</font></div>
            </div>
            <div class="orderBody panel-danger">
                <div class="panel panel-danger">
                  <div class="panel-heading ppanel-danger">
                    <font size="3">订单已取消
                    </font> 
                     
                        <div class="logo">
                            <img src="images/LOGO.png" width="60" height="42px"  alt="logo图片">
                        </div>
                  </div>
                  <div class="panel-body panel-danger">
                    <div class="orderDetails">
            订单编号        &nbsp;     :    &nbsp;       ${order.orderNumber }  <br>
				快递站点         &nbsp;      :    &nbsp;          ${order.delivery }    <br>
				悬赏金额     &nbsp;           :   &nbsp;    ¥ ${order.money } <br>
				送达地点          &nbsp;       :     &nbsp;      ${order.receipt } <br>
				发单时间 &nbsp;       :     &nbsp;      ${order.invoiceTime } <br>
				备  &nbsp;    &nbsp;    &nbsp; 注     &nbsp;  :    &nbsp;      ${order.remarks }      <br>
            
            </div>
                   
                  </div>
                </div>

            </div>
           
            
        </div>
		
		</c:when>
		
		
		
		
		
		<c:when test="${order.status==5}">
		 <div class="backIcon">
             <a href="orderIndex">
                    <i class="icon icon-chevron-left icon-2x"></i>
                </a>
                </div>
            <div class="orderHeader">
                <div class="name"><font size="3">订单详情</font></div>
            </div>
            <div class="orderBody panel-danger">
                <div class="panel panel-danger">
                  <div class="panel-heading ppanel-danger">
                    <font size="3">订单已过期
                    </font> 
                     
                        <div class="logo">
                            <img src="images/LOGO.png" width="60" height="42px"  alt="logo图片">
                        </div>
                  </div>
                  <div class="panel-body panel-danger">
                    <div class="orderDetails">
            订单编号        &nbsp;     :    &nbsp;       ${order.orderNumber }  <br>
				快递站点         &nbsp;      :    &nbsp;          ${order.delivery }    <br>
				悬赏金额     &nbsp;           :   &nbsp;    ¥ ${order.money } <br>
				送达地点          &nbsp;       :     &nbsp;      ${order.receipt } <br>
				发单时间 &nbsp;       :     &nbsp;      ${order.invoiceTime } <br>
				备  &nbsp;    &nbsp;    &nbsp; 注     &nbsp;  :    &nbsp;      ${order.remarks }      <br>
            
            </div>
                   
                  </div>
                </div>

            </div>
           
            
        </div>
		
		</c:when>
		
		
		
		
		
		
		
		
		
		
		
		<c:when test="${order.status==7}">
		  <div class="backIcon">
             <a href="orderIndex">
                    <i class="icon icon-chevron-left icon-2x"></i>
                </a>

                </div>
            <div class="orderHeader">
                <div class="name"><font size="3">订单详情</font></div>
            </div>
            <div class="orderBody panel-primary">
                <div class="panel panel-primary">
                  <div class="panel-heading panel-primary">
                    <font size="3">货物已送达
                    </font> 
                     
                        <div class="logo">
                            <img src="images/LOGO.png" width="60" height="42px"  alt="logo图片">
                        </div>
                  </div>
                  <div class="panel-body panel-primary">
                   此单完成得很好呦 ，请再接再厉！
                   <div class="call">
                     
                    <button class="btn btn-block btn-info " type="button">联系下单用户&nbsp;<i class="icon   icon-phone-sign"></i></button>
                   </div>
                  </div>
                </div>


            </div>
            <div class="orderDetails">
            
                订单编号        &nbsp;     :    &nbsp;       ${order.orderNumber }  <br>
				快递站点         &nbsp;      :    &nbsp;          ${order.delivery }    <br>
				悬赏金额     &nbsp;           :   &nbsp;    ¥ ${order.money } <br>
				送达地点          &nbsp;       :     &nbsp;      ${order.receipt } <br>
				送达时间 &nbsp;       :     &nbsp;      ${order.deliveryTime } <br>
				备  &nbsp;    &nbsp;    &nbsp; 注     &nbsp;  :    &nbsp;      ${order.remarks }      <br>
                 
            </div>
            
           </c:when> 
           
           
           <c:when test="${order.status==0}"> 
             <div class="backIcon">
            <a href="orderIndex">
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
                   订单编号        &nbsp;     :    &nbsp;       ${order.orderNumber }  <br>
				快递站点         &nbsp;      :    &nbsp;          ${order.delivery }    <br>
				悬赏金额     &nbsp;           :   &nbsp;    ¥ ${order.money } <br>
				送达地点          &nbsp;       :     &nbsp;      ${order.receipt } <br>
				发单时间 &nbsp;       :     &nbsp;      ${order.invoiceTime } <br>
				备  &nbsp;    &nbsp;    &nbsp; 注     &nbsp;  :    &nbsp;      ${order.remarks }      <br>
            </div>
        </div>

</c:when>
</c:choose>


	</body>




</html>
