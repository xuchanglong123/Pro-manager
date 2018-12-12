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
    .judement{
        float:right ;
        margin-right:40%;
        margin-top:10%;
    }
    .map{
        float:left ;
        width:100%;
        height:200px;
        background-image:url(images/map.png);
    }
    .call{
        float:left ;
      
        width:100%;
        
    }
    .re{
        padding-left :5%;
        padding-right: 5%;
    }
    </style>
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
            <div class="orderBody panel-danger">
                <div class="panel panel-danger">
                  <div class="panel-heading ppanel-danger">
                    <font size="3">订单已过期/取消
                    </font> 
                     
                        <div class="logo">
                            <img src="images/LOGO.png" width="60" height="42px"  alt="logo图片">
                        </div>
                  </div>
                  <div class="panel-body panel-danger">
                    <div class="orderDetails">
                订单编号        &nbsp;     :    &nbsp;         2016044852<br>
                快递规格        &nbsp;      :     &nbsp;           小型快递<br>
                快递站点         &nbsp;      :    &nbsp;           圆通快递 <br>
                悬赏金额     &nbsp;           :   &nbsp;    ¥2<br>
                送达地点          &nbsp;       :     &nbsp;     师大诚朴园3号楼441<br>
               
                备  &nbsp;    &nbsp;    &nbsp; 注     &nbsp;  :    &nbsp;         暂无<br>
            
            </div>
                   
                  </div>
                </div>

            </div>
           
            
        </div>



    </body>


    </html>