<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,minimum-scale=1,maximum-scale=1,user-scalable=no;">
<title>聊天列表</title>

<link href="${pageContext.request.contextPath}/statics/skin_css/m_style.css" type="text/css" rel="stylesheet" />

<script type="text/javascript" src="${pageContext.request.contextPath}/statics/skin_js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/skin_js/m_global.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/skin_js/swipe.js"></script>

</head>
<body>

<div class="main">
 <div class="focus">
     <div class="focusbox" id="focusbox">
        
     </div>
     
    <script type="text/javascript">
     <!--
      if (navigator.userAgent.indexOf('Trident') > -1) {
      var IE = true;
        }
      var mySwipe = new Swipe(document.getElementById('focusbox'), {callback: focus});
    !IE && elemclick($('#focusnum span'), mySwipe);
    //-->
    </script>
</div>
 <div class="main_list">
   <ul>
       <li>
           <a href="#" class="pic"><img src="images/touxiang.png" width="48" height="46" alt=""></a>
           <a href="#">
               <h3 class="name">刘金辀</h3>
           </a>
           <a href="/websocket/who?who=ljz"  target='_blank'  class='btn_dl_nor'> > </a>
       </li>
       <li>
           <a href="#" class="pic">
               <img src="images/touxiang.png" width="48" height="48" alt=""></a>
           <a href="#">
               <h3 class="name">丁泽仁</h3>
           </a>
           <a href="/websocket/who?who=dzr"  target='_blank'  class='btn_dl_nor'> > </a>
       </li>
       <li>
           <a href="#" class="pic">
               <img src="images/touxiang.png" width="48" height="48" alt=""></a>
           <a href="#">
               <h3 class="name">李春良</h3>
           </a>
           <a href="#"  target='_blank'  class='btn_dl_nor'> > </a>
       </li>
       <li>
           <a href="#" class="pic">
               <img src="images/touxiang.png" width="48" height="48" alt=""></a>
           <a href="#">
               <h3 class="name">卓必成</h3>
           </a>
           <a href="#"  target='_blank'  class='btn_dl_nor'> > </a>
       </li>
       <li>
           <a href="#" class="pic">
               <img src="images/touxiang.png" width="48" height="48" alt=""></a>
           <a href="#">
               <h3 class="name">毛琳欣</h3>
           </a>
           <a href="#"  target='_blank'  class='btn_dl_nor'> > </a>
       </li>
       <li>
           <a href="#" class="pic">
               <img src="images/touxiang.png" width="48" height="48" alt=""></a>
           <a href="#">
               <h3 class="name">许昌隆</h3>
           </a>
           <a href="#"  target='_blank'  class='btn_dl_nor'> > </a>
       </li>
   </ul>
     <p class="footer"></p>
 </div>
</div>

</body>
</html>