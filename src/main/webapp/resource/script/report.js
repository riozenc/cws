window.onerror=function(){return true;}
mini.parse();
var grid = mini.get("datagrid1");
//验证对象类型下拉
var objectTypeDrop;
//对象下拉
var objectDrop;
//温度下拉
var temperatureDrop=[{"value": "极高温验证", "name": "极高温验证"},{"value": "极低温验证", "name": "极低温验证"}];
//是否完成下拉
var reportStatusDrop=[{"value": 0, "name": "未完成"},{"value": 1, "name": "已完成"}];
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
		        e.cellHtml = '<a href="javascript:createReport(\'' + e.record.reportNo+"\',\'" + enterpriseId +'\',\''+e.record.reportType+'\')">生成报告</a>&nbsp; '
		                    + '<a href="javascript:del(\'' + e.record.reportNo + '\')">删除</a>&nbsp; ';
	    	}else if (e.row.reportStatus==1) {
	    		e.cellHtml = '<a href="javascript:seek(\'' + e.record.reportNo +'\')">查看</a>&nbsp; '
	    					+ '<a href="javascript:edit(\'' + e.record.reportNo + '\')">编辑</a>&nbsp; '
	    					+ '<a href="javascript:download(\'' + e.record.reportNo + '\')">下载</a>&nbsp; '
		                    + '<a href="javascript:del(\'' + e.record.reportNo + '\')">删除</a>&nbsp; ';
	    	}
	    }
	});
	$.ajax({
		url : '../commonParam.do?type=findCommonParamByType&paramType=VERIFY_TYPE',
		data : {enterpriseId:enterpriseId},
		dataType : "json",
		type : "get",
		success : function(data) {
			objectTypeDrop=data;
			$.ajax({
				url : '../verify.do?type=getVerifyByCompanyToDrop',
				data : {enterpriseId:enterpriseId},
				dataType : "json",
				type : "get",
				success : function(data) {
					objectDrop=data;
					//加载表格数据
					var reportStatus=mini.get("reportType").getValue();
					var reportName = mini.get("key").getValue();
					grid.load({enterpriseId:enterpriseId,reportName:reportName,reportStatus:reportStatus});
				},
				error : function(e) {
					mini.alert("请求数据失败！status："+e.status);
				}
			});
		},
		error : function(e) {
			mini.alert("请求数据失败！status："+e.status);
		}
	});
});

//键入回车查询
function onKeyEnter(){
	search();
}
//查询
function search(){
	var reportStatus=mini.get("reportType").getValue();
	var reportName = mini.get("key").getValue();
    var param={enterpriseId:enterpriseId,reportName:reportName,reportStatus:reportStatus};
    grid.load(param);
}

//切换下拉查询
function reportChange(e){
	var reportName = mini.get("key").getValue();
	grid.load({enterpriseId:enterpriseId,reportName:reportName,reportStatus:e.value});
}

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
	    		var reportStatus=mini.get("reportType").getValue();
				var reportName = mini.get("key").getValue();
	    		grid.load({enterpriseId:enterpriseId,reportName:reportName,reportStatus:reportStatus});
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
	        	var reportStatus=mini.get("reportType").getValue();
				var reportName = mini.get("key").getValue();
	    		grid.load({enterpriseId:enterpriseId,reportName:reportName,reportStatus:reportStatus});
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
                $.ajax({
                    url: "../report.do?type=delete",
                    type: 'post',
            		data: { id: recodeID },
            		dataType : 'json',
                    success: function (text) {
                    	alert(text.message);
                    	var reportStatus=mini.get("reportType").getValue();
						var reportName = mini.get("key").getValue();
                        grid.load({enterpriseId:enterpriseId,reportName:reportName,reportStatus:reportStatus});
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                    	alert(jqXHR.responseText);
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
			mini.alert("请求数据失败！status："+e.status);
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
function createReport(reportNo,enterpriseId,reportType){
	var $mainCanvans=$("#mainCanvans");
	var $childCanvans=$("#childCanvans");
	$childCanvans.empty();
	$mainCanvans.css("display", "none");
	$childCanvans.css("display", "block");
	$childCanvans.append("<iframe name='childCanvansIframe' src='createReport.jsp?enterpriseId="+enterpriseId + "&reportNo=\""+reportNo +"\"&reportType=\""+reportType+"\"' width='100%' height='100%' style='border-width: 0'>");
}