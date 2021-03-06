mini.parse();
var grid = mini.get("datagrid1");
$(document).ready(function(){
	grid.on("drawcell", function (e) {
		//operate列，超连接操作按钮
	    if (e.column.name == "operate") {
	        e.cellStyle = "text-align:center";
	        e.cellHtml = '<a href="javascript:edit(\'' + e.record.id + '\')">编辑</a>&nbsp; '
	                    + '<a href="javascript:del(\'' + e.record.id + '\')">删除</a>&nbsp; ';
	    }
	});
	grid.load();
});
//键入回车查询
function onKeyEnter(){
	search();
}
//查询
function search(){
	var name = mini.get("key").getValue();
    var param={name:name};
    grid.load(param);
}
//添加企业
function addRow(){
	mini.open({
	    url: "page/objectManageForm.jsp",
	    title: "添加验证对象类型", 
	    width: 350, 
	    height: 235,
	    allowResize: true,
	    onload: function () {
	    },
	    ondestroy: function (action) {
	    	if(action===true){
	    		grid.reload();
	    	}  
	    }
	});
}
//编辑
function edit(recodeID){
	var recode=grid.getSelected();
	mini.open({
	    url: "page/objectManageForm.jsp",
	    title: "编辑验证对象类型", 
	    width: 350, 
	    height: 235,
	    allowResize: true,
	    onload: function () {
	    	//向表单传参
	    	var iframe = this.getIFrameEl();
	        iframe.contentWindow.setData(recode);
	    },
	    ondestroy: function (action) {
	        if(action===true){
	    		grid.reload();
	    	} 
	    }
	});
}
//删除
function del(recode){
	mini.open({
	    url: "page/confirm.jsp",
	    title: "提示", 
	    width: 350, 
	    height: 130,
	    allowResize: false,
	    onload: function () {
	        var iframe = this.getIFrameEl();
	        var data = { 
	        	tip: "您是否要删除当前验证对象类型？"
	        };
	        iframe.contentWindow.setData(data);
	    },
	    ondestroy: function (action) {
	    	//点击确认时返回action=true
	    	if (action===true) {
                $.ajax({
                    url: "../commonParam.do?type=delete&paramType=VERIFY_TYPE",                    
                    type: 'post',
            		data: { id: recode },
            		dataType : 'json',
            		success: function (text) {
                    	alert(text.message);
                        grid.reload();
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                    	alert(jqXHR.responseText);
                    }
                });
	    	} 
	    }
	});
}