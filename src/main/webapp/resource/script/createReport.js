mini.parse();
var grid = mini.get("datagrid1");
var $imgCanvansTop=$("#imgCanvansTop");
var $imgCanvansMiddle=$("#imgCanvansMiddle");
var $imgCanvansBottom=$("#imgCanvansBottom");
var $uploadImgTop=$("#uploadImgTop");
var $uploadImgMiddle=$("#uploadImgMiddle");
var $uploadImgBottom=$("#uploadImgBottom");
//职务下拉
var jobDrop;
//职责下拉
var dutyDrop;
//冷库echarts可截图数
var lkEchartImgTotal=5;
//冷藏车echarts可截图数
var lccEchartImgTotal=6;
//保温箱echarts可截图数
var bwxEchartImgTotal=4;
//冷库echarts当前截图数
var lkEchartImg=1;
//冷藏车echarts当前截图数
var lccEchartImg=1;
//保温箱echarts当前截图数
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
//		url : '../resource/data/createReport1.txt',
		url : '../report.do?type=findReportByKey',
		data : {reportNo:recordId},
		dataType : "json",
		type : "post",
		success : function(data) {
			var verifyObjectDrop = mini.get("verifyObject");
			verifyObjectDrop.load("../commonParam.do?type=findCommonParamByType&paramType=VERIFY_TYPE&enterpriseId="+enterpriseId);
			//格式化日期
			if(data!=null){
				if(!isNaN(data.verifyTime)&&data.verifyTime){
					var value = new Date(Number(data.verifyTime));
			        data.verifyTime=mini.formatDate(value, 'yyyy-MM-dd');
				}
				var setDateFlag=false;
				if(!data.verifyTime){
					setDateFlag=true;
				}
				form1.setData(data);
				if(setDateFlag){
					$("#verifyTime input").empty();
				}
			}
		},
		error : function(e) {
			mini.alert("请求数据失败！status："+e.status);
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
//			url : "../resource/data/companyName.txt",
			url :"../company.do?type=getCompanyName",
			data : {enterpriseId:enterpriseId,recordId:recordId},
			dataType : "json",
			type : "get",
			success : function(e){
				if(e!=null){
					var $companyNameLeft=$("#companyNameLeft");
					var $companyNameRight=$("#companyNameRight");
					$companyNameLeft.text(e.companyNameLeft);
					$companyNameRight.text(e.companyNameRight);
				}
			},
			error : function(e){
				mini.alert("请求数据失败！status："+e.status);
			}
		});
		//加载职责和职务下拉
		var datagridJob = mini.get("datagridJob");
		var datagridDuty = mini.get("datagridDuty");
		$.ajax({
			url : '../commonParam.do?type=findCommonParamByType&paramType=POST_TYPE',
			data : {id:enterpriseId,reportNo:recordId},
			dataType : "json",
			type : "get",
			success : function(data) {
				jobDrop=data;
				//加载表格数据
				datagridJob.load({enterpriseId:enterpriseId,reportNo:recordId});
			},
			error : function(e) {
				mini.alert("请求数据失败！status："+e.status);
			}
		});
		$.ajax({
			url : '../commonParam.do?type=findCommonParamByType&paramType=DUTIES_TYPE',
			data : {enterpriseId:enterpriseId,reportNo:recordId},
			dataType : "json",
			type : "get",
			success : function(data) {
				dutyDrop=data;
				//加载表格数据
				datagridDuty.load({enterpriseId:enterpriseId,reportNo:recordId});
			},
			error : function(e) {
				mini.alert("请求数据失败！status："+e.status);
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
		if(reportType=="1"){
			//第三步加载冷库基本数据
			var form2 = new mini.Form("reportDataForm2");
			$.ajax({
//				url : '../resource/data/freezerBaseInfo.txt',
				url : '../verify.do?type=getVerifyInfoByReport',
				data : {enterpriseId:enterpriseId,reportNo:recordId,reportType:reportType},
				dataType : "json",
				type : "post",
				success : function(data) {
					form2.setData(data);
				},
				error : function(e) {
					mini.alert("请求数据失败！status："+e.status);
				}
			});
			$("#context3_lccCanvas").css("display","none");
			$("#context3_bwxCanvas").css("display","none");
			$("#context3_lkCanvas").css("display","block");
		}else if(reportType=="2"){
			//第三步加载冷藏车基本数据
			var form3 = new mini.Form("reportDataForm3");
			$.ajax({
//				url : '../resource/data/truckBaseInfo.txt',
				url : '../verify.do?type=getVerifyInfoByReport',
				data : {enterpriseId:enterpriseId,reportNo:recordId,reportType:reportType},
				dataType : "json",
				type : "post",
				success : function(data) {
					form3.setData(data);
				},
				error : function(e) {
					mini.alert("请求数据失败！status："+e.status);
				}
			});
			$("#context3_lkCanvas").css("display","none");
			$("#context3_bwxCanvas").css("display","none");
			$("#context3_lccCanvas").css("display","block");
		}else if(reportType=="3"){
			//第三步加载保温箱基本数据
			var form4 = new mini.Form("reportDataForm4");
			$.ajax({
//				url : '../resource/data/incubatorBaseInfo.txt',
				url : '../verify.do?type=getVerifyInfoByReport',
				data : {enterpriseId:enterpriseId,reportNo:recordId,reportType:reportType},
				dataType : "json",
				type : "post",
				success : function(data) {
					form4.setData(data);
				},
				error : function(e) {
					mini.alert("请求数据失败！status："+e.status);
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
		grid.load({enterpriseId:enterpriseId,reportNo:recordId},function(success){
			$("#meterNum").text("仪表数量："+success.data.length);
		});
		//第四步获取测点数量
		/*$.ajax({
			url : "../resource/data/createReport4.txt",
			data : {enterpriseId:enterpriseId,recordId:recordId},
			dataType : "json",
			type : "get",
			success : function(e){
				$("input[name='temperaturePoint']").val(e.temperaturePoint);
				$("input[name='environmentPoint']").val(e.environmentPoint);
			},
			error : function(e){
				mini.alert("请求数据失败！status："+e.status);
			}
		});*/
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
		if(reportType=="1"){
			//切换第五步echarts左侧截图保存内容
			$("#lccImgCanvas").css("display","none");
			$("#bwxImgCanvas").css("display","none");
			$("#lkImgCanvas").css("display","block");
		}else if(reportType=="2"){
			//切换第五步echarts左侧截图保存内容
			$("#lkImgCanvas").css("display","none");
			$("#bwxImgCanvas").css("display","none");
			$("#lccImgCanvas").css("display","block");
		}else if(reportType=="3"){
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
            if(reportType=="1"){
            	//如果当前截图数大于总截图数，返回
            	if(lkEchartImgTotal<lkEchartImg){
            		mini.alert("不能上传更多截图！","提示");
            		return;
            	}
            	//截取echarts图形base64编码
            	var base64data=myChart.getDataURL("png");
            	//将图片数据发送到后台
                $.ajax({
		            url: "../commonParam.do?type=uploadBase64",
		            type: "post",
		            data: {base64data:base64data,measureType:measureType,pointType:pointType,reportType:reportType,reportNo:recordId},
		            dataType : "json",
		            success: function (data) {
		            	if(data.statusCode==200){
			                alert("保存成功！");
			                var imgPath=contextPath+data.message;
			                //解码base64前台显示图形
			                $("#lkImg"+lkEchartImg).css('background-image','url('+base64data+')');
			                //记录base64编码信息，以便传递到后台
			                $("input[name='lkImg"+lkEchartImg+"']").val(imgPath);
			                //记录测量信息，以便传递到后台
			                $("input[name='lkMeasureType"+lkEchartImg+"']").val(measureType);
			                //记录测点信息，以便传递到后台
			                $("input[name='lkPointType"+lkEchartImg+"']").val(pointType);
			                lkEchartImg++;
		            	}else{
		            		alert("保存失败！");
		            	}
		            },
		            error: function (XMLHttpRequest, textStatus) {
		                mini.alert("保存失败！"+textStatus);
		            }
		        });
			}else if(reportType=="2"){
				if(lccEchartImgTotal<lccEchartImg){
            		mini.alert("不能上传更多截图！","提示");
            		return;
            	}
            	var base64data=myChart.getDataURL("png");
            	$.ajax({
            		url: "../commonParam.do?type=uploadBase64",
		            type: "post",
		            data: {base64data:base64data,measureType:measureType,pointType:pointType,reportType:reportType},
		            dataType : "json",
		            success: function (data) {
		            	if(data.statusCode==200){
			                alert("保存成功！");
			                var imgPath=contextPath+data.message;
			                $("#lccImg"+lccEchartImg).css('background-image','url('+base64data+')');
			                $("input[name='lccImg"+lccEchartImg+"']").val(imgPath);
			                $("input[name='lccMeasureType"+lccEchartImg+"']").val(measureType);
			                $("input[name='lccPointType"+lccEchartImg+"']").val(pointType);
			                lccEchartImg++;
		            	}else{
		            		alert("保存失败！");
		            	}
		            },
		            error: function (XMLHttpRequest, textStatus) {
		                mini.alert("保存失败！"+textStatus);
		            }
		        });
			}else if(reportType=="3"){
				if(bwxEchartImgTotal<bwxEchartImg){
            		mini.alert("不能上传更多截图！","提示");
            		return;
            	}
            	var base64data=myChart.getDataURL("png");
            	$.ajax({
            		url: "../commonParam.do?type=uploadBase64",
		            type: "post",
		            data: {base64data:base64data,measureType:measureType,pointType:pointType,reportType:reportType},
		            dataType : "json",
		            success: function (data) {
		            	if(data.statusCode==200){
			                alert("保存成功！");
			                var imgPath=contextPath+data.message;
			                $("#bwxImg"+bwxEchartImg).css('background-image','url('+base64data+')');
			                $("input[name='bwxImg"+bwxEchartImg+"']").val(imgPath);
			                $("input[name='bwxMeasureType"+bwxEchartImg+"']").val(measureType);
			                $("input[name='bwxPointType"+bwxEchartImg+"']").val(pointType);
			                bwxEchartImg++;
		            	}else{
		            		alert("保存失败！");
		            	}
		            },
		            error: function (XMLHttpRequest, textStatus) {
		                mini.alert("保存失败！"+textStatus);
		            }
		        });
			}
			curIf.push({pointType:pointType,measureType:measureType});
		});
		//删除图片按钮点击事件
		var $deleteImg=$("#deleteImg");
		$deleteImg.click(function(){
			if(reportType=="1"){
				if(lkEchartImg==1){
					mini.alert("没有可删除的图片！","提示");
            		return;
				}
				lkEchartImg--;
//				$.ajax({
//		            url: "",
//		            type: "post",
//		            data: {measureType:measureType,pointType:pointType,reportType:reportType},
//		            dataType : "json",
//		            success: function (data) {
//		            	if(data.statusCode==200){
//			                alert("删除成功！");
                //清除图片
                $("#lkImg"+lkEchartImg).css('background-image','none');
                //清除图片路径
                $("input[name='lkImg"+lkEchartImg+"']").val('');
                //清除测量信息
                $("input[name='lkMeasureType"+lkEchartImg+"']").val('');
                //清除测点信息
                $("input[name='lkPointType"+lkEchartImg+"']").val('');
//		            	}else{
//		            		alert("删除失败！");
//		            	}
//		            },
//		            error: function (XMLHttpRequest, textStatus) {
//		                mini.alert("删除失败！"+textStatus);
//		            }
//		        });
			}else if(reportType=="2"){
				if(lccEchartImg==1){
					mini.alert("没有可删除的图片！","提示");
            		return;
				}
				lccEchartImg--;
//				$.ajax({
//		            url: "",
//		            type: "post",
//		            data: {measureType:measureType,pointType:pointType,reportType:reportType},
//		            dataType : "json",
//		            success: function (data) {
//		            	if(data.statusCode==200){
//			                alert("删除成功！");
                $("#lccImg"+lccEchartImg).css('background-image','none');
                $("input[name='lccImg"+lccEchartImg+"']").val('');
                $("input[name='lccMeasureType"+lccEchartImg+"']").val('');
                $("input[name='lccPointType"+lccEchartImg+"']").val('');
//		            	}else{
//		            		alert("删除失败！");
//		            	}
//		            },
//		            error: function (XMLHttpRequest, textStatus) {
//		                mini.alert("删除失败！"+textStatus);
//		            }
//		        });
			}else if(reportType=="3"){
				if(bwxEchartImg==1){
					mini.alert("没有可删除的图片！","提示");
            		return;
				}
				bwxEchartImg--;
//				$.ajax({
//		            url: "",
//		            type: "post",
//		            data: {measureType:measureType,pointType:pointType,reportType:reportType},
//		            dataType : "json",
//		            success: function (data) {
//		            	if(data.statusCode==200){
//			                alert("删除成功！");
                $("#bwxImg"+bwxEchartImg).css('background-image','none');
                $("input[name='bwxImg"+bwxEchartImg+"']").val('');
                $("input[name='bwxMeasureType"+bwxEchartImg+"']").val('');
                $("input[name='bwxPointType"+bwxEchartImg+"']").val('');
//		            	}else{
//		            		alert("删除失败！");
//		            	}
//		            },
//		            error: function (XMLHttpRequest, textStatus) {
//		                mini.alert("删除失败！"+textStatus);
//		            }
//		        });
			}
			//清除参数数组最后一组数据
			curIf.pop();
		});
        $("#step4").css('color', '#000');
		$("#step5").css('color', '#4485E0');		
		$("#context4").css("display","none");
		$("#context5").css("display","block");
	});

	/*----------5-----------*/
	//上一步按钮
	var $pre5=$("#context5_pre");
	$pre5.click(function(event) {
		$("#step5").css('color', '#000');
		$("#step4").css('color', '#4485E0');		
		$("#context5").css("display","none");
		$("#context4").css("display","block");
	});
	//生成报告按钮
	var $download=$("#download");
	$download.click(function(event) {
		//存储所有表单数据
		var allFormData={};
		//获取第一步表单数据
		var formData1=form1.getData();
		formData1.verifyTime=$("input[name='verifyTime']").val();
		//合并对象
		$.extend(allFormData, formData1);
		//向表单中添加第三步温度控制范围
		//var temperature=mini.get("temperature").getValue();
		//allFormData.temperatureRange=temperature;
		//添加该报告属性信息
		allFormData.reportType=reportType;
		//向表单中添加第五步图片链接信息
		//imagePath:{imagePath_1_1:1,imagePath_1_2:2,...}
		//var imagePathAll={};
		if(reportType=="1"){
			for(i=1;i<lkEchartImg;i++){
				//记录一组图片数据			
				var pt=$("input[name='lkPointType"+i+"']").val();
				var mt=$("input[name='lkMeasureType"+i+"']").val();
				//imagePathAll["imagePath_"+pt+"_"+mt]=$("input[name='lkImg"+i+"']").val();
				allFormData["imagePath_"+pt+"_"+mt]=$("input[name='lkImg"+i+"']").val();
			}   
		}else if(reportType=="2"){
			for(i=1;i<lccEchartImg;i++){
				//记录一组图片数据
				var pt=$("input[name='lccPointType"+i+"']").val();
				var mt=$("input[name='lccMeasureType"+i+"']").val();
				//imagePathAll["imagePath_"+pt+"_"+mt]=$("input[name='lccImg"+i+"']").val();
				allFormData["imagePath_"+pt+"_"+mt]=$("input[name='lccImg"+i+"']").val();
			}  
		}else if(reportType=="3"){
			for(i=1;i<bwxEchartImg;i++){
				//记录一组图片数据
				var pt=$("input[name='bwxPointType"+i+"']").val();
				var mt=$("input[name='bwxMeasureType"+i+"']").val();
				//imagePathAll["imagePath_"+pt+"_"+mt]=$("input[name='bwxImg"+i+"']").val();
				allFormData["imagePath_"+pt+"_"+mt]=$("input[name='bwxImg"+i+"']").val();
			} 
		}
		//allFormData.imagePath=imagePathAll;
		//发送报告数据到后台
		$.ajax({
            url: '../report.do?type=createReport',
			type: 'post',
            data: allFormData,
            dataType : 'json',
            success: function (success) {
            	if(success.statusCode==200){
                    alert(success.message);
                }else{
                	alert(success.message);
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                alert(jqXHR.responseText);
            }
        });
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
//		url : "../resource/data/createReportChart.txt",
		url : "../report.do?type=getDeviceDate",
		data : {enterpriseId:enterpriseId,reportNo:recordId,pointType:pointType,measureType:measureType,reportType:reportType},
		dataType : "json",
		type : "post",
		success : function(data){
			if(data==null){
				return;
			}
			//横坐标
			var xAxis=data.xAxis;
			//var yData=data.yData;
			var seriesData=[];
			//图例
			var legendData=[];
			//遍历返回的json对象
			for(var key in data){
				//如果不是横坐标
				if(key!="xAxis"){
					var value=data[key];
					var seriesObj={};
					seriesObj.name=key;
					seriesObj.type="line";
					seriesObj.data=value;
					seriesData.push(seriesObj);
					legendData.push(key);
				}
			}
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
		        		legend: {
							data:legendData,
							x: 'center',
							y: 'bottom'
						},
		        		grid: {
		        			x:40,//左边距
		        			x2:10,//右边距
		        			y:35,//上边距
		        			y2:155,//下边距
		        			containLabel: true
		    			},
		    			xAxis : [
							{
		    					type : 'category',
		    					boundaryGap: false,
		    					splitLine: {
		    						show:false
		    					},
		    					axisLabel: {
		    						rotate:-90
		    						//interval:0
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
						series: seriesData
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
			mini.alert("请求数据失败！status："+e.status);
		}
	});
}