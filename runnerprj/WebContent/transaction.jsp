<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>交易管理</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/manageSystem.css">
	<link rel="stylesheet" type="text/css" href="css/pagination.css">
	<script type="text/javascript" src="js/manageSystem.js"></script>
	<script type="text/javascript" src="js/pagination.js"></script>

	<script src="js/jquery.js"></script>
  	<script src="js/layer/layer.js"></script>
</head>
<body>
	<div class="container">
		<div class="left">
			<div class="logo">
				<img src="images/logo.png">
			</div>
			<div class="user">
				<div class="userImg">
					<img src="images/manager.png">
				</div>
				<div class="userName">${sessionScope.manager.username}</div>
			</div>
			<div class="title">后台管理</div>
			<div class="choose" onmouseover="change(this)" onmouseout="recover(this)" id="userTarget">
				<div class="chooseImg">
					<img src="images/user.png">
				</div>
				<div class="chooseText">用户管理</div>
			</div>

			<div class="choose" onmouseover="change(this)" onmouseout="recover(this)" id="infoTarget">
				<div class="chooseImg">
					<img src="images/info.png">
				</div>
				<div class="chooseText">个人信息管理</div>
			</div>

			<div class="choose" onmouseover="change(this)" onmouseout="recover(this)"  id="stationTarget">
				<div class="chooseImg">
					<img src="images/school.png">
				</div>
				<div class="chooseText">地区管理</div>
			</div>

			<div class="choose" onmouseover="change(this)" onmouseout="recover(this)"  id="orderTarget">
				<div class="chooseImg">
					<img src="images/order.png">
				</div>
				<div class="chooseText">订单管理</div>
			</div>

			<div class="choose" id="transationChoose" id="tranTarget">
				<div class="chooseImg">
					<img src="images/exchange.png">
				</div>
				<div class="chooseText">交易管理</div>
			</div>

			<div class="choose" onmouseover="change(this)" onmouseout="recover(this)" id="commentTarget">
				<div class="chooseImg">
					<img src="images/comment.png">
				</div>
				<div class="chooseText">评论管理</div>
			</div>

			<div class="choose" onmouseover="change(this)" onmouseout="recover(this)"  id="noticeTarget">
				<div class="chooseImg">
					<img src="images/msg.png">
				</div>
				<div class="chooseText">通知管理管理</div>
			</div>

			<div class="choose" onmouseover="change(this)" onmouseout="recover(this)"  id="exitTarget">
				<div class="chooseImg">
					<img src="images/exit.png">
				</div>
				<div class="chooseText">退出系统</div>
			</div>

			<script type="text/javascript">
				$('#userTarget').on('click',function(){
					window.location.href = "user.jsp";
				})
				$('#infoTarget').on('click',function(){
					window.location.href = "information.jsp";
				})
				$('#stationTarget').on('click',function(){
					window.location.href = "station.jsp";
				})
				$('#orderTarget').on('click',function(){
					window.location.href = "order.jsp";
				})
				$('#tranTarget').on('click',function(){
					window.location.href = "transaction.jsp";
				})
				$('#commentTarget').on('click',function(){
					window.location.href = "comment.jsp";
				})
				$('#noticeTarget').on('click',function(){
					window.location.href = "notice.jsp";
				})
				$('#exitTarget').on('click',function(){
					
				})
			</script>
		</div>
		<div class="right">
			<div class="rightHead">

				<div class="add" id="addTransaction">
					添加交易
				</div>
				
				<script type="text/javascript">
					var index=null;
					$('#addTransaction').on('click', function(){
						index=layer.open({
						  type: 1 
						  ,area: ['400px', '260px']
						  ,title: '添加交易信息'
						  ,shade: 0.6 
						  ,maxmin: true 
						  ,anim: 1 
						  ,content: 
						  	'<div id="addTransactionInfo">'
								+'<table>'
									+'<tr><td class="tdLeft">用户编号:</td><td><input type="" name=""></td></tr>'
									+'<tr><td class="tdLeft">钱:</td><td><input type="" name=""></td></tr>'
									+'<tr><td class="tdLeft">状态:</td><td><input type="" name=""></td></tr>'
									+'<tr><td class="tdLeft">时间:</td><td><input type="" name=""></td></tr>'
									+'<tr><td class="tdLeft">微信号:</td><td><input type="" name=""></td></tr>'
									+'<tr><td  class="tdLeft" colspan="2"><button class="addTransactionInfo">提交</button></td></tr>'
								+'</table>'
							+'</div>'
						});   
						parent.$('.addTransactionInfo').on('click',function(){
							layer.close(index);
						});
					});			
				</script>

				<div class="baidu">
				    <div class="input">
				        <input type="text" id="search"><span class="clear" id="cls">X</span>
				    </div>
   				    <button>按交易编号查询</button>
				</div>

				<div class="baidu">
				    <div class="input">
				        <input type="text" id="search"><span class="clear" id="cls">X</span>
				    </div>
   				    <button>按用户编号查询</button>
				</div>

			</div>

			<div class="rightContent">
				<div id="firstTr">
					<div>交易记录编号</div>
					<div>钱</div>
					<div>状态</div>
					<div>用户编号</div>
					<div>时间</div>
					<div>编辑</div>
				</div>

				<div class="contentTr">
					<div>1</div>
					<div>30￥</div>
					<div>转出</div>
					<div>4</div>
					<div>2018-12-10</div>
					<!--编辑事件-->
					<div>
						<div class="updateTr">修改</div>
						<div class="deleteTr">删除</div>
					</div>
				</div>

				<div class="contentTr">
					<div>2</div>
					<div>30￥</div>
					<div>转入</div>
					<div>4</div>
					<div>2018-12-10</div>
					<!--编辑事件-->
					<div>
						<div class="updateTr">修改</div>
						<div class="deleteTr">删除</div>
					</div>
				</div>

				<div class="contentTr">
					<div>3</div>
					<div>30￥</div>
					<div>转入</div>
					<div>4</div>
					<div>2018-12-10</div>
					<!--编辑事件-->
					<div>
						<div class="updateTr">修改</div>
						<div class="deleteTr">删除</div>
					</div>
				</div>

				<div class="contentTr">
					<div>4</div>
					<div>30￥</div>
					<div>转出</div>
					<div>5</div>
					<div>2018-12-10</div>
					<!--编辑事件-->
					<div>
						<div class="updateTr">修改</div>
						<div class="deleteTr">删除</div>
					</div>
				</div>

				<div class="contentTr">
					<div>5</div>
					<div>30￥</div>
					<div>转出</div>
					<div>1</div>
					<div>2018-12-10</div>
					<!--编辑事件-->
					<div>
						<div class="updateTr">修改</div>
						<div class="deleteTr">删除</div>
					</div>
				</div>

				<div id="page">
					<div id="pagination" class="pagination"></div>
					<script>
						var index=null;
						$('.updateTr').on('click', function(){
							index=layer.open({
							  type: 1 
							  ,area: ['400px', '260px']
							  ,title: '添加交易信息'
							  ,shade: 0.6 
							  ,maxmin: true 
							  ,anim: 1 
							  ,content: 
							  	'<div id="addTransactionInfo">'
									+'<table>'
										+'<tr><td class="tdLeft">用户编号:</td><td><input type="" name=""></td></tr>'
										+'<tr><td class="tdLeft">钱:</td><td><input type="" name=""></td></tr>'
										+'<tr><td class="tdLeft">状态:</td><td><input type="" name=""></td></tr>'
										+'<tr><td class="tdLeft">时间:</td><td><input type="" name=""></td></tr>'
										+'<tr><td class="tdLeft">微信号:</td><td><input type="" name=""></td></tr>'
										+'<tr><td  class="tdLeft" colspan="2"><button class="updateTransactionInfo">修改</button></td></tr>'
									+'</table>'
								+'</div>'
							});   
							parent.$('.updateTransactionInfo').on('click',function(){
								layer.close(index);
							});
						});			
						$('.contentTr').on('mouseover',function(){
							$(this).css({'background-color':'#fde756'});
						})
						$('.contentTr').on('mouseout',function(){
							$(this).css({'background-color':'white'});
						})
						window.onload = function () {
						    new myPagination({
						        id: 'pagination',
						        curPage:1, //初始页码
						        pageTotal: 50, //总页数
								pageAmount: 10,  //每页多少条
						        dataTotal: 50, //总共多少条数据
								pageSize: 5, //可选,分页个数
						        showPageTotalFlag:true, //是否显示数据统计
						        showSkipInputFlag:true, //是否支持跳转
						        getPage: function (page) {
						            //获取当前页数
						            console.log(page);
						        }
						    })
							
						}
					</script>
				</div>
			</div>

		</div>
	</div>
</body>
</html>