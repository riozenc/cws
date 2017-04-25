mini.parse();
var grid = mini.get("datagrid1");
var $imgCanvansTop=$("#imgCanvansTop");
var $imgCanvansMiddle=$("#imgCanvansMiddle");
var $imgCanvansBottom=$("#imgCanvansBottom");
var $uploadImgTop=$("#uploadImgTop");
var $uploadImgMiddle=$("#uploadImgMiddle");
var $uploadImgBottom=$("#uploadImgBottom");
//存储背景图片url
var imgUrlObj={};
//职务下拉
var jobDrop;
//职责下拉
var dutyDrop;
//冷库echarts可截图数
var lkEchartImgTotal=4;
//冷藏车echarts可截图数
var lccEchartImgTotal=3;
//冷藏车echarts可截图数
var bwxEchartImgTotal=5;
//冷库echarts当前截图数
var lkEchartImg=1;
//冷藏车echarts当前截图数
var lccEchartImg=1;
//冷藏车echarts当前截图数
var bwxEchartImg=1;
//保存echarts截图时记录当前查询条件
var curIf=[];
//echarts图句柄
var myChart;
$(document).ready(function(){
	/*--------------初始化数据-------------*/
	//第一步加载数据
	var form1 = new mini.Form("reportDataForm1");
	$.ajax({
		url : '../resource/data/createReport1.txt',
		data : {enterpriseId:enterpriseId,recordId:recordId},
		dataType : "json",
		type : "post",
		success : function(data) {
			//格式化日期
			if(!isNaN(data.verifyTime)){
				var value = new Date(Number(data.verifyTime));
		        data.verifyTime=mini.formatDate(value, 'yyyy-MM-dd');
			}
			form1.setData(data);
			//显示图片
			/*if(data.imageUrl_Top1){
				//加载图片
				$uploadImgTop.css('display', 'none');
				$imgCanvansTop.css('background-image', 'url('+data.imageUrl_Top1+')');
			}
			if(data.imageUrl_Middle1){
				//加载图片
				$uploadImgMiddle.css('display', 'none');
				$imgCanvansMiddle.css('background-image', 'url('+data.imageUrl_Middle1+')');
			}
			if(data.imageUrl_Bottom1){
				//加载图片
				$uploadImgBottom.css('display', 'none');
				$imgCanvansBottom.css('background-image', 'url('+data.imageUrl_Bottom1+')');
			}
			//存储图片url
			var props=Object.getOwnPropertyNames(data);
			for(var i = 0; i < props.length; i++){
				var propName=props[i];
				if(propName.indexOf("imageUrl")>-1){	
					imgUrlObj[propName]=data[propName];
				}
			}*/
		},
		error : function(e) {
			alert("请求数据失败！status："+e.status);
		}
	});

	/*--------返回报告列表按钮-----------*/
	var $returnButton=$("#returnButton");
	$returnButton.click(function(event) {
		var win=window.parent;
		var $mainCanvans=$(win.document.getElementById("mainCanvans"));
		var $childCanvans=$(win.document.getElementById("childCanvans"));
		$childCanvans.css('display', 'none');
		$mainCanvans.css('display', 'block');
	});

	/*---------1---------*/
	//下一步按钮
	var $next1=$("#context1_next");
	$next1.click(function(event) {
		//获取第二步公司名称
		$.ajax({
			url : "../resource/data/companyName.txt",
			data : {enterpriseId:enterpriseId,recordId:recordId},
			dataType : "json",
			type : "get",
			success : function(e){
				var $companyNameLeft=$("#companyNameLeft");
				var $companyNameRight=$("#companyNameRight");
				$companyNameLeft.text(e.companyNameLeft);
				$companyNameRight.text(e.companyNameRight);
			},
			error : function(e){
				alert("请求数据失败！status："+e.status);
			}
		});
		//加载职责和职务下拉
		var datagridJob = mini.get("datagridJob");
		var datagridDuty = mini.get("datagridDuty");
		$.ajax({
			url : '../resource/data/jobDrop.txt',
			data : {enterpriseId:enterpriseId,recordId:recordId},
			dataType : "json",
			type : "get",
			success : function(data) {
				jobDrop=data;
				//加载表格数据
				datagridJob.load({enterpriseId:enterpriseId,recordId:recordId});
				$.ajax({
					url : '../resource/data/dutyDrop.txt',
					data : {enterpriseId:enterpriseId,recordId:recordId},
					dataType : "json",
					type : "get",
					success : function(data) {
						dutyDrop=data;
						//加载表格数据
						datagridDuty.load({enterpriseId:enterpriseId,recordId:recordId});
					},
					error : function(e) {
						alert("请求数据失败！status："+e.status);
					}
				});
			},
			error : function(e) {
				alert("请求数据失败！status："+e.status);
			}
		});
		$("#step1").css('color', '#000');
		$("#step2").css('color', '#4485E0');
		$("#context1").css("display","none");
		$("#context2").css("display","block");
	});

	/*---------2--------*/
	//上一步按钮
	var $pre2=$("#context2_pre");
	$pre2.click(function(event) {
		$("#step2").css('color', '#000');
		$("#step1").css('color', '#4485E0');		
		$("#context2").css("display","none");
		$("#context1").css("display","block");
	});
	//下一步按钮
	var $next2=$("#context2_next");
	$next2.click(function(event) {
		if(propertyType=="01"){
			//第三步加载冷库基本数据
			var form2 = new mini.Form("reportDataForm2");
			$.ajax({
				url : '../resource/data/freezerBaseInfo.txt',
				data : {enterpriseId:enterpriseId,recordId:recordId},
				dataType : "json",
				type : "post",
				success : function(data) {
					form2.setData(data);
				},
				error : function(e) {
					alert("请求数据失败！status："+e.status);
				}
			});
			$("#context3_lccCanvas").css("display","none");
			$("#context3_bwxCanvas").css("display","none");
			$("#context3_lkCanvas").css("display","block");
		}else if(propertyType=="02"){
			//第三步加载冷藏车基本数据
			var form3 = new mini.Form("reportDataForm3");
			$.ajax({
				url : '../resource/data/truckBaseInfo.txt',
				data : {enterpriseId:enterpriseId,recordId:recordId},
				dataType : "json",
				type : "post",
				success : function(data) {
					form3.setData(data);
				},
				error : function(e) {
					alert("请求数据失败！status："+e.status);
				}
			});
			$("#context3_lkCanvas").css("display","none");
			$("#context3_bwxCanvas").css("display","none");
			$("#context3_lccCanvas").css("display","block");
		}else if(propertyType=="03"){
			//第三步加载保温箱基本数据
			var form4 = new mini.Form("reportDataForm4");
			$.ajax({
				url : '../resource/data/incubatorBaseInfo.txt',
				data : {enterpriseId:enterpriseId,recordId:recordId},
				dataType : "json",
				type : "post",
				success : function(data) {
					form4.setData(data);
				},
				error : function(e) {
					alert("请求数据失败！status："+e.status);
				}
			});
			$("#context3_lkCanvas").css("display","none");
			$("#context3_lccCanvas").css("display","none");
			$("#context3_bwxCanvas").css("display","block");
		}
		$("#step2").css('color', '#000');
		$("#step3").css('color', '#4485E0');
		$("#context2").css("display","none");
		$("#context3").css("display","block");
	});

	/*---------3--------*/
	//验证对象动态名称
	/*$.ajax({
		url : '../resource/data/objectTypeDrop.txt',
		data : {},
		dataType : "json",
		type : "get",
		success : function(data) {
			for(var i=0;i<data.length;i++){
				if(propertyType==data[i].value){
					$("#incubatorNameTitle").text(data[i].name+"名称型号：");
					$("#incubatorParamsTitle").text(data[i].name+"参数：");
					break;
				}
			}
		},
		error : function(e) {
			alert("请求数据失败！status："+e.status);
		}
	});*/
	//上一步按钮
	var $pre3=$("#context3_pre");
	$pre3.click(function(event) {
		$("#step3").css('color', '#000');
		$("#step2").css('color', '#4485E0');		
		$("#context3").css("display","none");
		$("#context2").css("display","block");
	});
	//下一步按钮
	var $next3=$("#context3_next");
	$next3.click(function(event) {
		//第四步表格加载
		grid.on("drawcell", function (e) {
			//operate列，超连接操作按钮
		    if (e.column.name == "operate") {
		        e.cellStyle = "text-align:center";
		        e.cellHtml = '<a href="javascript:edit(\'' + e.record.id + '\')">编辑</a>&nbsp; '
		                    + '<a href="javascript:del(\'' + e.record.id + '\')">删除</a>&nbsp; ';
		    }
		});
		grid.load({enterpriseId:enterpriseId,recordId:recordId},function(success){
			$("#meterNum").text("仪表数量："+success.data.length);
		});
		//第四步获取测点数量
		$.ajax({
			url : "../resource/data/createReport4.txt",
			data : {enterpriseId:enterpriseId,recordId:recordId},
			dataType : "json",
			type : "get",
			success : function(e){
				$("input[name='temperaturePoint']").val(e.temperaturePoint);
				$("input[name='environmentPoint']").val(e.environmentPoint);
			},
			error : function(e){
				alert("请求数据失败！status："+e.status);
			}
		});
		$("#step3").css('color', '#000');
		$("#step4").css('color', '#4485E0');
		$("#context3").css("display","none");
		$("#context4").css("display","block");
	});

	/*----------4-----------*/
	//上一步按钮
	var $pre4=$("#context4_pre");
	$pre4.click(function(event) {
		$("#step4").css('color', '#000');
		$("#step3").css('color', '#4485E0');		
		$("#context4").css("display","none");
		$("#context3").css("display","block");
	});
	//下一步按钮
	var $next4=$("#context4_next");
	$next4.click(function(event) {
		if(propertyType=="01"){
			//切换第五步echarts左侧截图保存内容
			$("#lccImgCanvas").css("display","none");
			$("#bwxImgCanvas").css("display","none");
			$("#lkImgCanvas").css("display","block");
		}else if(propertyType=="02"){
			//切换第五步echarts左侧截图保存内容
			$("#lkImgCanvas").css("display","none");
			$("#bwxImgCanvas").css("display","none");
			$("#lccImgCanvas").css("display","block");
		}else if(propertyType=="03"){
			//切换第五步echarts左侧截图保存内容	
			$("#lkImgCanvas").css("display","none");
			$("#lccImgCanvas").css("display","none");
			$("#bwxImgCanvas").css("display","block");
		}
		//加载echarts图
		loadChart();
		//保存图片按钮点击事件
		var $saveImg=$("#saveImg");
		$saveImg.click(function(){
			var pointType=mini.get("pDropData").getValue();
			var measureType=mini.get("mDropData").getValue();
			//不能重复截图
        	for(i=0;i<curIf.length;i++){
        		if(curIf[i].pointType===pointType&&curIf[i].measureType===measureType){
        			mini.alert("当前截图已存在！","提示");
        			return;
        		}
        	}
            if(propertyType=="01"){
            	//如果当前截图数大于总截图数，返回
            	if(lkEchartImgTotal<lkEchartImg){
            		mini.alert("不能上传更多截图！","提示");
            		return;
            	}
            	//截取echarts图形base64编码
            	var base64data=myChart.getDataURL("png");
            	//解码base64前台显示图形
                $("#lkImg"+lkEchartImg).css('background-image','url('+base64data+')');
                //记录base64编码信息，以便传递到后台
                $("input[name='lkImg"+lkEchartImg+"']").val(base64data);
                //记录测量信息，以便传递到后台
                $("input[name='measureType"+lkEchartImg+"']").val(measureType);
                //记录测点信息，以便传递到后台
                $("input[name='pointType"+lkEchartImg+"']").val(pointType);
                lkEchartImg++;
			}else if(propertyType=="02"){
				if(lccEchartImgTotal<lccEchartImg){
            		mini.alert("不能上传更多截图！","提示");
            		return;
            	}
            	var base64data=myChart.getDataURL("png");
            	$("#lccImg"+lccEchartImg).css('background-image','url('+base64data+')');
                $("input[name='lccImg"+lccEchartImg+"']").val(base64data);
                $("input[name='measureType"+lccEchartImg+"']").val(measureType);
                $("input[name='pointType"+lccEchartImg+"']").val(pointType);
                lccEchartImg++;
			}else if(propertyType=="03"){
				if(bwxEchartImgTotal<bwxEchartImg){
            		mini.alert("不能上传更多截图！","提示");
            		return;
            	}
            	var base64data=myChart.getDataURL("png");
            	$("#bwxImg"+bwxEchartImg).css('background-image','url('+base64data+')');
                $("input[name='bwxImg"+bwxEchartImg+"']").val(base64data);
                $("input[name='measureType"+bwxEchartImg+"']").val(measureType);
                $("input[name='pointType"+bwxEchartImg+"']").val(pointType);
                bwxEchartImg++;
			}
			curIf.push({pointType:pointType,measureType:measureType});
		});
		//删除图片按钮点击事件
		var $deleteImg=$("#deleteImg");
		$deleteImg.click(function(){
			if(propertyType=="01"){
				if(lkEchartImg==1){
					mini.alert("没有可删除的图片！","提示");
            		return;
				}
				lkEchartImg--;
				//解码base64前台显示图形
                $("#lkImg"+lkEchartImg).css('background-image','none');
                //记录base64编码信息，以便传递到后台
                $("input[name='lkImg"+lkEchartImg+"']").val('');
                //记录测量信息，以便传递到后台
                $("input[name='measureType"+lkEchartImg+"']").val('');
                //记录测点信息，以便传递到后台
                $("input[name='pointType"+lkEchartImg+"']").val('');
			}else if(propertyType=="02"){
				if(lccEchartImg==1){
					mini.alert("没有可删除的图片！","提示");
            		return;
				}
				lccEchartImg--;
				$("#lccImg"+lccEchartImg).css('background-image','none');
                $("input[name='lccImg"+lccEchartImg+"']").val('');
                $("input[name='measureType"+lccEchartImg+"']").val('');
                $("input[name='pointType"+lccEchartImg+"']").val('');
			}else if(propertyType=="03"){
				if(bwxEchartImg==1){
					mini.alert("没有可删除的图片！","提示");
            		return;
				}
				bwxEchartImg--;
				$("#bwxImg"+bwxEchartImg).css('background-image','none');
                $("input[name='bwxImg"+bwxEchartImg+"']").val('');
                $("input[name='measureType"+bwxEchartImg+"']").val('');
                $("input[name='pointType"+bwxEchartImg+"']").val('');
			}
			curIf.pop();
		});
		//提交数据
		/*var configData = form.getData();
		//将日期对象转化为字符串
		configData.verifyTime=mini.formatDate(configData.verifyTime,"yyyy-MM-dd");
		form.validate();
        if (form.isValid() == false) return;
        $.ajax({
            url: "",
			type: 'post',
            data: configData,
            cache: false,
            success: function (text) {
            	//下一步
				$("#step4").css('color', '#000');
				$("#step5").css('color', '#4485E0');		
				$("#context4").css("display","none");
				$("#context5").css("display","block");
            },
            error: function (jqXHR, textStatus, errorThrown) {
                alert(jqXHR.responseText);
            }
        });*/
        $("#step4").css('color', '#000');
		$("#step5").css('color', '#4485E0');		
		$("#context4").css("display","none");
		$("#context5").css("display","block");
	});

	/*----------5-----------*/
	//图片点击事件
	/*var flag=0;
	var $uploadButton=$("#uploadButton");
	$imgCanvansTop.click(function(event) {
		flag=1;
		$uploadButton.trigger('click');
	});
	$imgCanvansMiddle.click(function(event) {
		flag=2;
		$uploadButton.trigger('click');
	});
	$imgCanvansBottom.click(function(event) {
		flag=3;
		$uploadButton.trigger('click');
	});
	//上传图片到服务器
	$uploadButton.change(function(event) {
		//判断文件格式
		var imgName=event.currentTarget.value;
		// //获得上传文件后缀
		var imgNames=imgName.split("\.");
		var lastIndex=imgNames[imgNames.length-1];
		if("bmp"!=lastIndex&&"png"!=lastIndex&&"jpg"!=lastIndex&&"jpeg"!=lastIndex&&"gif"!=lastIndex){
			mini.alert("请上传bmp，png，jpg，jpeg，gif类型的图片！","提示");
			return;
		}
		//定义表单参数
		if(FormData==undefined){
			mini.alert("当前浏览器版本过低，请升级或更换浏览器版本！","提示");
			return;
		}

		var formData = new FormData();
		formData.append("img", event.currentTarget.files[0]);
		formData.append("enterpriseId",enterpriseId);
		formData.append("recordId",recordId);
		var val;	
		if(flag==1){
			val= mini.get("chartTop").getValue();
			var imgSite="imageUrl_Top"+val;
			formData.append("imgSite",imgSite);
		}else if(flag==2){
			val= mini.get("chartMid").getValue();
			var imgSite="imageUrl_Middle"+val;
			formData.append("imgSite",imgSite);
		}else if(flag==3){
			val= mini.get("chartBot").getValue();
			var imgSite="imageUrl_Bottom"+val;
			formData.append("imgSite",imgSite);
		}else{
			return;
		}
		//上传
		$.ajax({
            url: "",
            type: "POST",
            data: formData,
            //必须false才会自动加上正确的Content-Type
            contentType: false,
            //必须false才会避开jQuery对 formdata 的默认处理
            //XMLHttpRequest会对 formdata 进行正确的处理
            processData: false,
            success: function (data) {
            	alert("请指定后台地址");
                if (data.status == true) {
                    mini.alert("上传成功！","提示");
                    if(flag==1){
                    	$uploadImgTop.css('display', 'none');
                    	$imgCanvansTop.css('background-image', 'url('+data.imageUrl+')');
                    	imgUrlObj["imageUrl_Top"+val]=data.imageUrl;
                    }else if(flag==2){
                    	$uploadImgMiddle.css('display', 'none');
                    	$imgCanvansMiddle.css('background-image', 'url('+data.imageUrl+')');
                    	imgUrlObj["imageUrl_Middle"+val]=data.imageUrl;
                    }else if(flag==3){
                    	$uploadImgBottom.css('display', 'none');
                    	$imgCanvansBottom.css('background-image', 'url('+data.imageUrl+')');
                    	imgUrlObj["imageUrl_Bottom"+val]=data.imageUrl;
                    }
                }
            },
            error: function (XMLHttpRequest, textStatus) {
                mini.alert("上传失败！"+textStatus);
            }
        });
	});
	//删除图片按钮
	$("#delIconTop").click(function(event) {
		var bi=$imgCanvansTop.css('background-image');
		if(bi=="none"){
			mini.alert("没有图片可以删除！");
			return;
		}
		var delval= mini.get("chartTop").getValue();
		delImg(1,delval);
	});
	$("#delIconMid").click(function(event) {
		var bi=$imgCanvansMiddle.css('background-image');
		if(bi=="none"){
			mini.alert("没有图片可以删除！");
			return;
		}
		var delval= mini.get("chartMid").getValue();
		delImg(2,delval);
	});
	$("#delIconBot").click(function(event) {
		var bi=$imgCanvansBottom.css('background-image');
		if(bi=="none"){
			mini.alert("没有图片可以删除！");
			return;
		}
		var delval= mini.get("chartBot").getValue();
		delImg(3,delval);
	});*/
	//上一步按钮
	var $pre5=$("#context5_pre");
	$pre5.click(function(event) {
		$("#step5").css('color', '#000');
		$("#step4").css('color', '#4485E0');		
		$("#context5").css("display","none");
		$("#context4").css("display","block");
	});
	//预览并下载按钮
	var $download=$("#download");
	$download.click(function(event) {

	});
});

//第四步新增
function addRow(){
	mini.open({
	    url: "page/meterForm.jsp",
	    title: "新增仪表", 
	    width: 380, 
	    height: 280,
	    allowResize: true,
	    onload: function () {
	    	var iframe = this.getIFrameEl();
	        var data = { 
	        	enterpriseId: enterpriseId,
	        	recordId: recordId
	        };
	        iframe.contentWindow.setData(data);
	    },
	    ondestroy: function (action) {
	    	if(action===true){
	    		grid.load({enterpriseId:enterpriseId,recordId:recordId},function(success){
					$("#meterNum").text("仪表数量："+success.data.length);
				});
	    	}  
	    }
	});
}

//第四步编辑
function edit(recodeID){
	var recode=grid.getSelected();
	mini.open({
	    url: "page/meterForm.jsp",
	    title: "编辑仪表信息", 
	    width: 380, 
	    height: 280,
	    allowResize: true,
	    onload: function () {
	    	//向表单传参
	    	recode.enterpriseId=enterpriseId;
	    	recode.recordId=recordId;
	    	var iframe = this.getIFrameEl();
	        iframe.contentWindow.setData(recode);
	    },
	    ondestroy: function (action) {
	        if(action===true){
	    		grid.load({enterpriseId:enterpriseId,recordId:recordId},function(success){
					$("#meterNum").text("仪表数量："+success.data.length);
				});
	    	} 
	    }
	});
}

//第四步删除
function del(recodeID){
	mini.open({
	    url: "page/confirm.jsp",
	    title: "提示", 
	    width: 350, 
	    height: 130,
	    allowResize: false,
	    onload: function () {
	        var iframe = this.getIFrameEl();
	        var data = { 
	        	tip: "您是否要删除当前仪表？"
	        };
	        iframe.contentWindow.setData(data);
	    },
	    ondestroy: function (action) {
	    	//点击确认时返回action=true
	    	if (action===true) {
                $.ajax({
                    url: "",
                    type: 'post',
            		data: { id: recodeID },
                    success: function (text) {
                    	alert(text.msg);
                        grid.load({enterpriseId:enterpriseId,recordId:recordId},function(success){
							$("#meterNum").text("仪表数量："+success.data.length);
						});
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                    	alert(jqXHR.responseText);
                    }
                });
	    	} 
	    }
	});
}

//第五步下拉切换事件
function dropChanged(event){
	loadChart();
}

//echarts图形加载
function loadChart(){
	var pointType=mini.get("pDropData").getValue();
	var measureType=mini.get("mDropData").getValue();
	$.ajax({
		url : "../resource/data/createReportChart.txt",
		data : {enterpriseId:enterpriseId,recordId:recordId,pointType:pointType,measureType:measureType,propertyType:propertyType},
		dataType : "json",
		type : "post",
		success : function(data){
			var xAxis=data.xAxis;
			var yData=data.yData;
			//为模块加载器配置echarts的路径，从当前页面链接到echarts.js，定义所需图表路径
		    require.config({
		        paths: {
		            echarts: contextPath+'/echarts'
		        }
		    });
		    //动态加载echarts然后在回调函数中开始使用，注意保持按需加载结构定义图表路径
		    require(
			    [
			        'echarts',
			        'echarts/chart/line'
			    ],
			    function (ec) {
			    	//初始化容器
		        	myChart = ec.init(document.getElementById('chartData'));
		        	//设置各属性及参数
		        	myChart.setOption({
		        		title: {
					        text: '温度变化曲线图',
					        x: 'center',
							y: 'top'
					    },
		        		tooltip : {
		        			trigger: 'axis',
		       				axisPointer : {            // 坐标轴指示器，坐标轴触发有效
		            			type : 'line'        // 默认为直线，可选为：'line' | 'shadow'
		        			}
		        		},
		        		/*legend: {
							data:['主风机','备用风机','开门测试时段','断电时段'],
							x: 'center',
							y: 'bottom'
						},*/
		        		grid: {
		        			x:40,//左边距
		        			x2:10,//右边距
		        			y:35,//上边距
		        			y2:75,//下边距
		        			containLabel: true
		    			},
		    			/*toolbox: {
		    				show: true,
		    				padding:[5,28,0,0],
					        feature: {
					            saveAsImage: {
					            	show:true,
		                        	title:"保存图片到本地",
		                        	name:"温度变化曲线图",
		                            pixelRatio: 2
					            },
					            selfButtons:
						            {//自定义按钮 danielinbiti,这里增加，selfbuttons可以随便取名字    
					                   show: true,//是否显示    
					                   title: '保存图片到缓存', //鼠标移动上去显示的文字 
					                   name: "温度变化曲线图",
					                   icon: contextPath+'/resource/img/upload.png', //图标 
					                   option: {},    
					                   onclick: function(option1) {//点击事件,这里的option1是chart的option信息    
					                        //这里可以加入自己的处理代码，切换不同的图形 
					                      
					                   }
					               }
					        }
					    },*/
		    			//滚动条以及滚动缩放
		         		/*dataZoom : {
		         		 	show : true, 
		         		 	realtime : true,
		         		 	height : 10,
		         		 	fillerColor : 'rgba(110,181,228,0.4)',
		         		 	start : 0, 
		         		 	end : 100
		         		},*/
		    			xAxis : [
							{
		    					type : 'category',
		    					boundaryGap: false,
		    					splitLine: {
		    						show:false
		    					},
		    					axisLabel: {
		    						rotate:-90,
		    						interval:0
		    						/*formatter: function (value) {
		                    			return value.substr(8,8);//横坐标日期格式 dd HH:mm:ss
		                			}*/
		    					},
		    					axisTick: {
		    						show: false
		    					},
		    					data:xAxis
		    				}
		    			],
		    			yAxis: {
		    				name: '℃',
		    				type: 'value'
		    			},
						series: [
							{
								name:'温度',
								type:'line',
								data:yData
							}
						]
		        	});
		        	//窗口大小改变时图形自适应
				    setTimeout(function(){
				    	window.onresize = function () {
				    		myChart.resize();
				    	}
				    },200);
				}
			);
		},
		error : function(e){
			alert("请求数据失败！status："+e.status);
		}
	});
}

/*下拉切换图片功能*/
/*function chartChangeTop(event){
	var imgUrl="imageUrl_Top"+event.value;
	if(imgUrlObj[imgUrl]){
		$uploadImgTop.css('display', 'none');
		$imgCanvansTop.css('background-image', 'url('+imgUrlObj[imgUrl]+')');
	}else{
		$imgCanvansTop.css('background-image', 'none');
		$uploadImgTop.css('display', 'block');
	}
}
function chartChangeMiddle(event){
	var imgUrl="imageUrl_Middle"+event.value;
	if(imgUrlObj[imgUrl]){
		$uploadImgMiddle.css('display', 'none');
		$imgCanvansMiddle.css('background-image', 'url('+imgUrlObj[imgUrl]+')');
	}else{
		$imgCanvansMiddle.css('background-image', 'none');
		$uploadImgMiddle.css('display', 'block');
	}
}
function chartChangeBottom(event){
	var imgUrl="imageUrl_Bottom"+event.value;
	if(imgUrlObj[imgUrl]){
		$uploadImgBottom.css('display', 'none');
		$imgCanvansBottom.css('background-image', 'url('+imgUrlObj[imgUrl]+')');
	}else{
		$imgCanvansBottom.css('background-image', 'none');
		$uploadImgBottom.css('display', 'block');
	}
}*/

/*------删除图片------*/
/*function delImg(site,dropValue){
	mini.open({
	    url: "page/confirm.jsp",
	    title: "提示", 
	    width: 350, 
	    height: 130,
	    allowResize: false,
	    onload: function () {
	        var iframe = this.getIFrameEl();
	        var data = { 
	        	tip: "您是否要删除当前图片？"
	        };
	        iframe.contentWindow.setData(data);
	    },
	    ondestroy: function (action) {
	    	//点击确认时返回action=true
	    	if (action===true) {
	    		var imgSite;
	    		if(site==1){
	    			imgSite="imageUrl_Top"+dropValue;
				}else if(site==2){
					imgSite="imageUrl_Middle"+dropValue;
				}else if(site==3){
					imgSite="imageUrl_Bottom"+dropValue;
				}
                $.ajax({
                    url: "",
                    type: 'post',
            		data: {enterpriseId:enterpriseId,recordId:recordId,imgSite:imgSite},
                    success: function (data) {
                        if (data.status == true) {
                        	 mini.alert("图片删除成功！","提示");
                        	if(site==1){
				    			$imgCanvansTop.css('background-image', 'none');
								$uploadImgTop.css('display', 'block');
								imgUrlObj["imageUrl_Top"+dropValue]="";
							}else if(site==2){
								$imgCanvansMiddle.css('background-image', 'none');
								$uploadImgMiddle.css('display', 'block');
								imgUrlObj["imageUrl_Middle"+dropValue]="";
							}else if(site==3){
								$imgCanvansBottom.css('background-image', 'none');
								$uploadImgBottom.css('display', 'block');
								imgUrlObj["imageUrl_Bottom"+dropValue]="";
							}
                        }
                    },
                    error: function (err) {
                    	mini.alert("删除失败："+textStatus);
                    }
                });
	    	} 
	    }
	});
}*/