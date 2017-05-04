mini.parse();
$(document).ready(function(){
	/*--------返回报告列表按钮-----------*/
	var $returnButton=$("#returnButton");
	$returnButton.click(function(event) {
		var win=window.parent;
		var $mainCanvans=$(win.document.getElementById("mainCanvans"));
		var $childCanvans=$(win.document.getElementById("childCanvans"));
		$childCanvans.css('display', 'none');
		$mainCanvans.css('display', 'block');
	});
	loadChart();
});

//下拉切换事件
function dropChanged(event){
	loadChart();
}

//echarts图形加载
function loadChart(){
	var pointType=mini.get("pDropData").getValue();
	var measureType=mini.get("mDropData").getValue();
	$.ajax({
		url : "../report.do?type=getDeviceDate",
		data : {enterpriseId:enterpriseId,recordId:recordId,pointType:pointType,measureType:measureType},
		dataType : "json",
		type : "post",
		success : function(data){
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
		    			toolbox: {
		    				show: true,
		    				padding:[5,10,0,0],
					        feature: {
					            saveAsImage: {
					            	show:true,
		                        	title:"保存图片到本地",
		                        	name:"温度变化曲线图",
		                            pixelRatio: 2
					            }
					        }
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
			alert("请求数据失败！status："+e.status);
		}
	});
}