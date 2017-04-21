mini.parse();
var grid = mini.get("datagrid1");
//验证对象类型下拉
var objectTypeDrop;
$(document).ready(function(){
	grid.on("drawcell", function (e) {
		//operate列，超连接操作按钮
	    if (e.column.name == "operate") {
	        e.cellStyle = "text-align:center";
	        e.cellHtml = '<a href="javascript:seek(\'' + e.record.verifyId + '\',\''+e.record.verifyType+'\')">查看</a>&nbsp; '
	        			+ '<a href="javascript:edit(\'' + e.record.verifyId + '\')">编辑</a>&nbsp; '
	                    + '<a href="javascript:del(\'' + e.record.id + '\',\''+e.record.verifyId+ '\',\''+e.record.verifyType+'\')">删除</a>&nbsp; ';
	    }
	});
	//合并列相同行单元格
	grid.on("load", function(e){
		var grid = e.sender;
		grid.mergeColumns(["schemeType"]);
	});
	$.ajax({
		url : '../commonParam.do?type=findCommonParamByType&paramType=VERIFY_TYPE',
		data : {},
		dataType : "json",
		type : "get",
		success : function(data) {
			objectTypeDrop=data;
			//加载表格数据
			grid.load({enterpriseId:enterpriseId});
		},
		error : function(e) {
			alert("请求数据失败！status："+e.status);
		}
	});
});
//键入回车查询
function onKeyEnter(){
	search();
}
//查询
function search(){
	var name = mini.get("key").getValue();
    var param={enterpriseId:enterpriseId,name:name};
    grid.load(param);
}
//添加验证对象及布点方案
function addRow(){
	mini.open({
	    url: "page/layoutSchemeForm.jsp",
	    title: "添加验证对象及布点方案", 
	    width: 380, 
	    height: 216,
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
//查看
function seek(recodeID,recodeType){
	var $mainCanvans=$("#mainCanvans");
	var $childCanvans=$("#childCanvans");
	$childCanvans.empty();
	$mainCanvans.css("display", "none");
	$childCanvans.css("display", "block");
	if(recodeType==="1"){
		//冷库
		$childCanvans.append("<iframe name='childCanvansIframe' src='freezer.jsp?enterpriseId="+enterpriseId+"&schemeId="+recodeID+"&verifyType="+recodeType+"' "
			+"width='100%' height='100%' style='border-width: 0'>");
	}else if(recodeType==="2"){
		//冷藏车
		$childCanvans.append("<iframe name='childCanvansIframe' src='refrigeratedTruck.jsp?enterpriseId="+enterpriseId+"&schemeId="+recodeID+"&verifyType="+recodeType+"' "
			+"width='100%' height='100%' style='border-width: 0'>");
	}else if(recodeType==="3"){
		//保温箱
		$childCanvans.append("<iframe name='childCanvansIframe' src='incubator.jsp?enterpriseId="+enterpriseId+"&schemeId="+recodeID+"&verifyType="+recodeType+"' "
			+"width='100%' height='100%' style='border-width: 0'>");
	}
}
//编辑
function edit(recodeID){
	var recode=grid.getSelected();
	mini.open({
	    url: "page/layoutSchemeForm.jsp",
	    title: "编辑验证对象及布点方案", 
	    width: 380, 
	    height: 216,
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
function del(id,verifyId,verifyType){
	mini.open({
	    url: "page/confirm.jsp",
	    title: "提示", 
	    width: 350, 
	    height: 130,
	    allowResize: false,
	    onload: function () {
	        var iframe = this.getIFrameEl();
	        var data = { 
	        	tip: "您是否要删除当前验证对象及布点方案？"
	        };
	        iframe.contentWindow.setData(data);
	    },
	    ondestroy: function (action) {
	    	//点击确认时返回action=true
	    	if (action===true) {
                $.ajax({
                    url: "../verify.do?type=delete",
                    type: 'post',
            		data: {enterpriseId:enterpriseId,id:id,verifyId:verifyId,verifyType:verifyType},
            		dataType : 'json',
                    success: function (text) {
                    	alert(text.message);
                        grid.load({enterpriseId:enterpriseId});
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                    	alert(jqXHR.responseText);
                    }
                });
	    	} 
	    }
	});
}