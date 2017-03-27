mini.parse();
var grid = mini.get("datagrid1");
//验证对象类型下拉
var objectTypeDrop;
//温度下拉
var temperatureDrop=[{"id": "01", "text": "极高温验证"},{"id": "02", "text": "极低温验证"}];
//是否完成下拉
var reportStatusDrop=[{"id": 0, "text": "未完成"},{"id": 1, "text": "已完成"}];
$(document).ready(function(){
	//渲染单元格
	grid.on("drawcell", function (e) {	
		if(e.column.name == "reportStatus"){
			//reportStatus列，完成状态颜色
			if(e.row.reportStatus==0){
				e.cellStyle = "color:#B3B3B3";
			}else if(e.row.reportStatus==1){
				e.cellStyle = "color:#8BCB8C";
			}
		}else if (e.column.name == "operate") {
			//operate列，超连接操作按钮
	    	e.cellStyle = "text-align:center";
	    	if(e.row.reportStatus==0){
		        e.cellHtml = '<a href="javascript:createReport(\'' + e.record.id + '\',\''+e.record.propertyType+'\')">生成报告</a>&nbsp; '
		                    + '<a href="javascript:del(\'' + e.record.id + '\')">删除</a>&nbsp; ';
	    	}else if (e.row.reportStatus==1) {
	    		e.cellHtml = '<a href="javascript:seek(\'' + e.record.id + '\',\''+e.record.object+'\',\''+
	    					e.record.temperatureType+'\')">查看</a>&nbsp; '
	    					+ '<a href="javascript:edit(\'' + e.record.id + '\')">编辑</a>&nbsp; '
	    					+ '<a href="javascript:download(\'' + e.record.id + '\')">下载</a>&nbsp; '
		                    + '<a href="javascript:del(\'' + e.record.id + '\')">删除</a>&nbsp; ';
	    	}
	    }
	});
	$.ajax({
		url : '../resource/data/objectTypeDrop.txt',
		data : JSON.stringify({}),
		dataType : "json",
		type : "get",
		contentType : "application/json",
		success : function(data) {
			objectTypeDrop=data;
			//加载表格数据
			grid.load({enterpriseId:enterpriseId},function(success){
			});
		},
		error : function(e) {
			alert("请求数据失败！status："+e.status);
		}
	});
});

//新建报告
function addRow(){
	mini.open({
	    url: "page/reportForm.jsp",
	    title: "新建报告", 
	    width: 380, 
	    height: 280,
	    allowResize: true,
	    onload: function () {
	    	var iframe = this.getIFrameEl();
	        var data = { 
	        	enterpriseId: enterpriseId
	        };
	        iframe.contentWindow.setData(data);
	    },
	    ondestroy: function (action) {
	    	if(action===true){
	    		grid.load({enterpriseId:enterpriseId});
	    	}  
	    }
	});
}
//编辑
function edit(recodeID){
	var recode=grid.getSelected();
	mini.open({
	    url: "page/reportForm.jsp",
	    title: "编辑报告", 
	    width: 380, 
	    height: 280,
	    allowResize: true,
	    onload: function () {
	    	//向表单传参
	    	recode.enterpriseId=enterpriseId;
	    	var iframe = this.getIFrameEl();
	        iframe.contentWindow.setData(recode);
	    },
	    ondestroy: function (action) {
	        if(action===true){
	    		grid.load({enterpriseId:enterpriseId});
	    	} 
	    }
	});
}
//删除
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
	        	tip: "您是否要删除当前报告？"
	        };
	        iframe.contentWindow.setData(data);
	    },
	    ondestroy: function (action) {
	    	//点击确认时返回action=true
	    	if (action===true) {
	    		grid.loading("操作中，请稍后......");
                $.ajax({
                    url: "",
                    type: 'post',
            		data: { id: recodeID },
                    success: function (text) {
                        grid.load({enterpriseId:enterpriseId});
                    },
                    error: function () {
                    }
                });
	    	} 
	    }
	});
}

//下载
function download(recordId){
	$.ajax({
		url : '',
		data : JSON.stringify({recordId:recordId}),
		dataType : "json",
		type : "get",
		contentType : "application/json",
		success : function(data) {
			
		},
		error : function(e) {
			alert("请求数据失败！status："+e.status);
		}
	});
}
//查看
function seek(recordId,object,temperature){
	var $mainCanvans=$("#mainCanvans");
	var $childCanvans=$("#childCanvans");
	$childCanvans.empty();
	$mainCanvans.css("display", "none");
	$childCanvans.css("display", "block");
	$childCanvans.append("<iframe name='childCanvansIframe' src='reportDetail.jsp?enterpriseId="+enterpriseId+"&recordId="+recordId
		+"&object=\""+object+"\"&temp=\""+temperature+"\"' width='100%' height='100%' style='border-width: 0'>");
}
//生成报告
function createReport(recordId,propertyType){
	var $mainCanvans=$("#mainCanvans");
	var $childCanvans=$("#childCanvans");
	$childCanvans.empty();
	$mainCanvans.css("display", "none");
	$childCanvans.css("display", "block");
	$childCanvans.append("<iframe name='childCanvansIframe' src='createReport.jsp?enterpriseId="+enterpriseId+"&recordId="+recordId
		+"&propertyType=\""+propertyType+"\"' width='100%' height='100%' style='border-width: 0'>");
}