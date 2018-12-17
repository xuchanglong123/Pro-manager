<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>我的钱包</title>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- ZUI 标准版压缩后的 CSS 文件 -->
    <link href="css/zui.min.css" rel="stylesheet">
	<!-- ZUI Javascript 依赖 jQuery -->
	<script src="js/jquery-1.7.min.js"></script>
	<!-- ZUI 标准版压缩后的 JavaScript 文件 -->
	<script src="js/zui.min.js"></script>
	<script src="js/zui.jedate.js"></script>
	<!--****************自定义CSS**************-->
	<link rel="stylesheet" href="css/pc_wallet.css">
	<!--******************外部引用包************-->
</head>
<body>
	<div class="banner">
		<a href="personalCenter_login.jsp"><img src="images/personalCenter/backblack.png" class="back"></a>
		我的钱包
	</div>
	<div class="balance">
		<span>0.00元</span>
	</div>
	<div class="space1"><span>充值(人民币)</span></div>
	<div class="recharge">
		<div class="charge">
			<button>5元</button>
		</div>
		<div class="charge">
			<button>10元</button>
		</div>
		<div class="charge">
			<button>30元</button>
		</div>
		<div class="charge">
			<button>50元</button>
		</div>
		<div class="charge">
			<button>100元</button>
		</div>
		<div class="charge">
			<input type="text" name="rechage" value="自定义">
		</div>
		<div class="space2">支付金额：***元</div>
		<div class="space2"><a href="personalCenter_login.jsp"><button>确认支付</button></a></div>
	</div>




</body>



</html>