mini.parse();
var pointCheckBox=mini.get("pointCheckBox");
//用于判断复选框是否选中全部测点选项（false：否，true：是）
var selectAllFlag=false;
$(document).ready(function(){
	//面板标题
	var $panelTitle=$("#panelTitle");
	if(temperatureType=="01"){
		$panelTitle.text(object+"极高温验证数据");
	}else if(temperatureType=="02"){
		$panelTitle.text(object+"极低温验证数据");
	}
	/*--------返回报告列表按钮-----------*/
	var $returnButton=$("#returnButton");
	$returnButton.click(function(event) {
		var win=window.parent;
		var $mainCanvans=$(win.document.getElementById("mainCanvans"));
		var $childCanvans=$(win.document.getElementById("childCanvans"));
		$childCanvans.css('display', 'none');
		$mainCanvans.css('display', 'block');
	});
	//曲线和表格按钮切换函数
	var $chartContent=$("#chartContent");
	var $tableContent=$("#tableContent");
	$chartContent.click(function(event) {
		$chartContent.css({
			'background-color': '#4285E0',
			'color': '#FFF'
		});
		$tableContent.css({
			'background-color': '#FFF',
			'color': '#000'
		});
		$("#tableData").css("display","none");
		$("#chartData").css("display","block");
		loadChart();
	});
	$tableContent.click(function(event) {
		$tableContent.css({
			'background-color': '#4285E0',
			'color': '#FFF'
		});
		$chartContent.css({
			'background-color': '#FFF',
			'color': '#000'
		});
		$("#chartData").css("display","none");
		$("#tableData").css("display","block");
		loadTable();
	});

	//初始化加载测点复选框
	loadPoint();
});

//下拉切换及页面初始化加载复选框
function loadPoint(){
	var dataType=mini.get("dropData").getValue();
	$.ajax({
		url : "../resource/data/pointCheckBox.txt",
		data : {enterpriseId:enterpriseId,recordId:recordId,dataType:dataType},
		dataType : "json",
		type : "post",
		success : function(data){
			//复选框初始化时全部测点选项为未选中状态
			selectAllFlag=false;
			pointCheckBox.setData(data);
			//复选框改变刷新图形或表格
			var chartDisplay=$("#chartData").css("display");
			if(chartDisplay=="none"){
				loadTable();
			}else{
				loadChart();
			}
		},
		error : function(e){
			alert("请求数据失败！status："+e.status);
		}
	});
}

//下拉值切换事件函数
function dropChanged(event){
	loadPoint();
}

//复选框选中值改变(初始化时全部不选)
function checkBoxChanged(event){
/*	//获得选中的复选框的值
	var selectedStr=event.value;
	var selectedArr=selectedStr.split(",");
	//获得全部测点的复选框的值
	var selectAllId=event.sender.data[0].id;
	//判断全部测点的复选框是否被选中
	if(selectedArr[0]!==undefined&&selectedArr[0]===selectAllId){
		//复选框当前点击全部测点选项 选中全部测点 且先前全部测点选项没有被选中
		if(!selectAllFlag){
			pointCheckBox.selectAll();
			selectAllFlag=true;
		}
	}else{
		if(selectAllFlag){
			//复选框当前点击全部测点选项 取消选中全部测点 且先前全部测点选项已被选中
			pointCheckBox.deselectAll();
			selectAllFlag=false;
		}
	}*/
	//复选框改变刷新图形或表格
	var chartDisplay=$("#chartData").css("display");
	if(chartDisplay=="none"){
		loadTable();
	}else{
		loadChart();
	}
}

//曲线图形加载函数
function loadChart(){
	var dataType=mini.get("dropData").getValue();
	var pointType=pointCheckBox.getValue();
	$.ajax({
		url : "../resource/data/reportChart.txt",
		data : {enterpriseId:enterpriseId,recordId:recordId,dataType:dataType,pointType:pointType},
		dataType : "json",
		type : "post",
		success : function(data){
			var xAxis=data.xAxis;
			var yData1=data.yData1;
			var yData2=data.yData2;
			var yData3=data.yData3;
			var yData4=data.yData4;
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
		        	var myChart = ec.init(document.getElementById('chartData'));
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
							data:['主风机','备用风机','开门测试时段','断电时段'],
							x: 'center',
							y: 'bottom'
						},
		        		grid: {
		        			/*x:40,//左边距
		        			x2:40,//右边距
		        			y:60,//上边距
		        			y2:35,//下边距*/
		        			containLabel: true
		    			},
		    			toolbox: {
		    				show: true,
					        feature: {
					            saveAsImage: {
					            	show:true,
		                        	title:"保存为图片",
		                        	name:"温度变化曲线图",
		                            pixelRatio: 2
					            }
					        }
					    },
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
		    					splitLine: {show:false},
		    					/*axisLabel: {
		    						formatter: function (value) {
		                    			return value.substr(8,8);//横坐标日期格式 dd HH:mm:ss
		                			}
		    					},*/
		    					data:xAxis
		    				}
		    			],
		    			yAxis: {
		    				type: 'value'
		    			},
						series: [
							{
								name:'主风机',
								type:'line',
								data:yData1
							},
							{
								name:'备用风机',
								type:'line',
								data:yData2
							},
							{
								name:'开门测试时段',
								type:'line',
								data:yData3
							},
							{
								name:'断电时段',
								type:'line',
								data:yData4
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

//表格加载函数
function loadTable(){
	$("#tableData").empty();
	var dataType=mini.get("dropData").getValue();
	var pointType=pointCheckBox.getValue();
	$.ajax({
		url : "../resource/data/reportTable.txt",
		data : {enterpriseId:enterpriseId,recordId:recordId,dataType:dataType,pointType:pointType},
		dataType : "json",
		type : "post",
		success : function(data){
			//动态生成表格
			var columns=[];
			var pointType={ header: "测点类型", field: "type", width: 100, headerAlign: "center", allowSort: false };
			columns.push(pointType);
			for(var i=0;i<data.length;i++){
				var dataObj={width: 100, headerAlign: "center", allowSort: false };
				dataObj['header']=data[i];
				dataObj['field']="time"+(i+1);
				columns.push(dataObj);
			}
			var grid = new mini.DataGrid();
			grid.set({
			    url: "../resource/data/reportTableData.txt",
			    style: "height:100%;",
			    pageSize: 20,
			    allowCellEdit: false,
			    idField:"id",
			    columns: columns
			});
			grid.render(document.getElementById("tableData"));
			//加载表格数据
			grid.load({enterpriseId:enterpriseId,recordId:recordId,dataType:dataType,pointType:pointType});
		},
		error : function(e){
			alert("请求数据失败！status："+e.status);
		}
	});
}