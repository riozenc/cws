mini.parse();
//主机
var gridMaster = mini.get("datagridMaster");
//设备测点
var gridPoint = mini.get("datagridPoint");
$(document).ready(function(){
	gridMaster.on("drawcell", function (e) {
		//operate列，超连接操作按钮
	    if (e.column.name == "operate") {
	        e.cellStyle = "text-align:center";
	        e.cellHtml = '<a href="javascript:editMaster(\'' + e.record.id + '\')">编辑</a>&nbsp; '
	                    + '<a href="javascript:delMaster(\'' + e.record.id + '\')">删除</a>&nbsp; ';
	    }
	});
	gridMaster.load({enterpriseId:enterpriseId});
	gridPoint.on("drawcell", function (e) {
		//operate列，超连接操作按钮
	    if (e.column.name == "operate") {
	        e.cellStyle = "text-align:center";
	        e.cellHtml = '<a href="javascript:editPoint(\'' + e.record.id + '\')">编辑</a>&nbsp; '
	                    + '<a href="javascript:delPoint(\'' + e.record.id + '\')">删除</a>&nbsp; ';
	    }
	});
	gridPoint.load({enterpriseId:enterpriseId});
});
//格式化日期
function dateRenderer(e) {
	//如果日期是毫秒，则格式化返回，否则直接返回
	if(!isNaN(e.value)){
		var value = new Date(Number(e.value));
        return mini.formatDate(value, 'yyyy-MM-dd');
	}else{
		return e.value;
	}
}
/*-----------主机----------*/
//键入回车查询
function onKeyEnterMaster(){
	searchMaster();
}
//查询
function searchMaster(){
	var name = mini.get("keyMaster").getValue();
    var param={enterpriseId:enterpriseId,name:name};
    gridMaster.load(param);
}
//添加主机
function addRowMaster(){
	mini.open({
	    url: "page/masterForm.jsp",
	    title: "添加主机", 
	    width: 350, 
	    height: 410,
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
	    		gridMaster.load({enterpriseId:enterpriseId});
	    	}  
	    }
	});
}
//编辑
function editMaster(recodeID){
	var recode=gridMaster.getSelected();
	mini.open({
	    url: "page/masterForm.jsp",
	    title: "编辑主机", 
	    width: 350, 
	    height: 410,
	    allowResize: true,
	    onload: function () {
	    	//如果是毫秒，则转换为字符串形式
	    	if(!isNaN(recode.createDate)){
				var value = new Date(Number(recode.createDate));
		        recode.createDate=mini.formatDate(value, 'yyyy-MM-dd');
			}
	    	//向表单传参
	    	recode.enterpriseId=enterpriseId;
	    	var iframe = this.getIFrameEl();
	        iframe.contentWindow.setData(recode);
	    },
	    ondestroy: function (action) {
	        if(action===true){
	    		gridMaster.load({enterpriseId:enterpriseId});
	    	} 
	    }
	});
}
//删除
function delMaster(recode){
	mini.open({
	    url: "page/confirm.jsp",
	    title: "提示", 
	    width: 350, 
	    height: 130,
	    allowResize: false,
	    onload: function () {
	        var iframe = this.getIFrameEl();
	        var data = { 
	        	tip: "您是否要删除当前主机？"
	        };
	        iframe.contentWindow.setData(data);
	    },
	    ondestroy: function (action) {
	    	//点击确认时返回action=true
	    	if (action===true) {
                $.ajax({
                    url: "../host.do?type=delete",
                    type: 'post',
            		data: { id: recode,enterpriseId:enterpriseId },
                    success: function (text) {
                    	alert(text.msg);
                        gridMaster.load({enterpriseId:enterpriseId});
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                    	alert(jqXHR.responseText);
                    }
                });
	    	} 
	    }
	});
}
/*-----------设备测点----------*/
//键入回车查询
function onKeyEnterPoint(){
	searchPoint();
}
//查询
function searchPoint(){
	var name = mini.get("keyPoint").getValue();
    var param={enterpriseId:enterpriseId,name:name};
    gridPoint.load(param);
}
//添加设备测点
function addRowPoint(){
	mini.open({
	    url: "page/pointForm.jsp",
	    title: "添加设备测点", 
	    width: 350, 
	    height: 410,
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
	    		gridPoint.load({enterpriseId:enterpriseId});
	    	}  
	    }
	});
}
//编辑
function editPoint(recodeID){
	var recode=gridPoint.getSelected();
	mini.open({
	    url: "page/pointForm.jsp",
	    title: "编辑设备测点", 
	    width: 350, 
	    height: 410,
	    allowResize: true,
	    onload: function () {
	    	//如果是毫秒，则转换为字符串形式
	    	if(!isNaN(recode.validDate)){
				var value = new Date(Number(recode.validDate));
		        recode.validDate=mini.formatDate(value, 'yyyy-MM-dd');
			}
	    	//向表单传参
	    	recode.enterpriseId=enterpriseId;
	    	var iframe = this.getIFrameEl();
	        iframe.contentWindow.setData(recode);
	    },
	    ondestroy: function (action) {
	        if(action===true){
	    		gridPoint.load({enterpriseId:enterpriseId});
	    	} 
	    }
	});
}
//删除
function delPoint(recode){
	mini.open({
	    url: "page/confirm.jsp",
	    title: "提示", 
	    width: 350, 
	    height: 130,
	    allowResize: false,
	    onload: function () {
	        var iframe = this.getIFrameEl();
	        var data = { 
	        	tip: "您是否要删除当前设备测点？"
	        };
	        iframe.contentWindow.setData(data);
	    },
	    ondestroy: function (action) {
	    	//点击确认时返回action=true
	    	if (action===true) {
                $.ajax({
                    url: "../point.do?type=delete",
                    type: 'post',
            		data: { id: recode,enterpriseId:enterpriseId },
                    success: function (text) {
                    	alert(text.msg);
                        gridPoint.load({enterpriseId:enterpriseId});
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                    	alert(jqXHR.responseText);
                    }
                });
	    	} 
	    }
	});
}