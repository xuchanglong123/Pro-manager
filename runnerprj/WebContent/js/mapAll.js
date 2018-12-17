function getDistance(lnglat1,lnglat2){
			return Math.round(lnglat1.distance(lnglat2));
		}

		function getCurrentSchool(jsonStr){
			var strJson=JSON.parse(jsonStr);
			AMap.service('AMap.PlaceSearch',function(){
	            placeSearch= new AMap.PlaceSearch({
	            pageSize: 100,
	            pageIndex: 1,
	            city: strJson.citycode, 
	            map: map,
	            panel: "result"
	         	});
	            placeSearch.searchNearBy('大学',[strJson.lng,strJson.lat],10000,function(status, result) {
		            if(status=='complete'&&result.info=='OK'){
			            var arr=result.poiList.pois;
			            var temp=arr[0];
		                for(var index in arr){
		                	if(getDistance(arr[index].location,[strJson.lng,strJson.lat])<getDistance(temp.location,[strJson.lng,strJson.lat])){
		                		temp=arr[index];
		                	}
		                }
		                document.getElementsByClassName('schoolName')[0].innerHTML="当前定位:"+temp.name;
		                $.post("display/station",{schooName:temp.name},function(result){
		                	var re=eval("("+result+")");
		                	for(var i=0;i<re.length;++i){
		                		$('#site').append('<option value="station'+re[i].id+'" name="site">'+re[i].name+'</option>');
		                		
		                	}
		                });
		                /*
		                document.getElementsByClassName('address')[0].innerHTML=temp.address;
		                document.getElementsByClassName('tel')[0].innerHTML=temp.tel;
		                document.getElementsByClassName('position')[0].innerHTML=temp.location;
		                */
		            }    
	        	});
      		});
		}

		function getCurrentPosition(map){
			
			AMap.plugin('AMap.Geolocation',function(){
				var geolocation=new AMap.Geolocation({
					//是否使用高精度定位,默认true
					enableHighAccuracy:true,
					//超过10秒后停止定位，默认5s
					timeout:10000,
					//定位按钮的停靠位置
					buttonPosition:'RB',
					//定位按钮与设置的停靠位置的偏移量
					buttonOffset:new AMap.Pixel(10,20),
					//定位成功后是否自动调整地图视野到定位点
					//zoomToAccuracy:true
				});
				map.addControl(geolocation);
				geolocation.getCurrentPosition(function(status,result){
					if(status=='complete'){
						map.setCenter(result.position);
						map.setZoom(17);
						var str=""+result.position;
						map.getCity(function(info){
							var strJson={
								citycode: info.citycode,
								lng: str.split(',')[0],
								lat: str.split(',')[1]
							};
							var jsonStr=JSON.stringify(strJson);
							getCurrentSchool(jsonStr);
						});
					}else{
						alert('高度精确定位失败');
					}
				});
			});
		}

		var buildings = new AMap.Buildings({
	        'zooms':[16,18],
	        'zIndex':10,
	        'opacity':2,
	        'heightFactor':2//2倍于默认高度，3D下有效
	    });

	    var map = new AMap.Map('container', {
	        viewMode:'3D',
	        pitch:60,
	        rotation:-35,
	        features:['bg','road','point'],//隐藏默认楼块
	        layers: [
	        		new AMap.TileLayer({
	        			visible:true
	       			}),
	        		buildings],
	        zoom: 16
	    });

		getCurrentPosition(map);
		var position=null;
		 map.on('click',function(obj){
			 position="["+obj.lnglat.getLng()+","+obj.lnglat.getLat()+"]";
			 alert(position);
		 	document.getElementById('dest').value=position;
     	 });
		 
			var filechange=function(event){
			    var files = event.target.files, file;
			    if (files && files.length > 0) {
			        // 获取目前上传的文件
			        file = files[0];// 文件大小校验的动作
			        if(file.size > 1024 * 1024 * 2) {
			            alert('图片大小不能超过 2MB!');
			            return false;
			        }
			        // 获取 window 的 URL 工具
			        var URL = window.URL || window.webkitURL;
			        // 通过 file 生成目标 url
			        var imgURL = URL.createObjectURL(file);
			        //用attr将img的src属性改成获得的url
			        $("#addInfoImg").attr("src",imgURL);
			    }
			};
			$('#addInfoImg').on('click',function(){
				$('#addOrderFile').click();
			})
			var jsonObject={
				orderNumber:'null',//订单号码
				coordinate:'null',
				delivery:document.getElementById('dest').value,
				deliveryTime:'null',
				invoiceTime:'null',
				itemNumber:'null',
				money:5,
				receipt:'null',
				receiptTime:'null',
				remarks:position,
				size:0,
				status:1,
				successTime:'null',
				invoiceId:'null',
				receiptId:'null',
			};
			$('#pay').on('click',function(){
				$.ajaxFileUpload({
		            url: 'send/order',
		            fileElementId:'addOrderFile',
		            dataType:'txt',
		            secureuri : false,
		            data:{jsonString:JSON.stringify(jsonObject)},
		            type:'post',
		            success: function (data){
		              
		            }
		        });
				alert("发布订单");
			})