window.onerror=function(){return true;}
mini.parse();
var grid = mini.get("datagrid1");
$(document).ready(function(){
	grid.on("drawcell", function (e) {
		//operate列，超连接操作按钮
	    if (e.column.name == "operate") {
	        e.cellStyle = "text-align:center";
	        e.cellHtml = '<a href="javascript:seek(\'' + e.record.id + '\')">查看</a>&nbsp; '
	                    + '<a href="javascript:edit(\'' + e.record.id + '\')">编辑</a>&nbsp; '
	                    + '<a href="javascript:del(\'' + e.record.id + '\')">删除</a>&nbsp; ';
	    }
	});
	var companyName = mini.get("key").getValue();
	grid.load({companyName:companyName});
});
//键入回车查询
function onKeyEnter(){
	search();
}
//查询
function search(){
	var companyName = mini.get("key").getValue();
    var param={companyName:companyName};
    grid.load(param);
}
//添加企业
function addRow(){
	mini.open({
	    url: "page/enterpriseListForm.jsp",
	    title: "添加企业", 
	    width: 350, 
	    height: 325,
	    allowResize: true,
	    onload: function () {
	    },
	    ondestroy: function (action) {
	    	if(action===true){
	    		var companyName = mini.get("key").getValue();
	    		grid.load({companyName:companyName});
	    	}  
	    }
	});
}
//查看
function seek(recode){
	//切换菜单
	var win=window.parent;
	var $menuCan=$(win.document.getElementById("bottomSplit_top"));
	var $allMenu=$($menuCan[0].children);	
	$allMenu.each(function(index){
		var item=$(this);
		if("enterprise_list_detail_menu_can"===item[0].id){
			$(this).css('display', 'block');
			//将当前查看的企业id传到菜单上
			$(this).attr('enterpriseId',recode);
		}else{
			$(this).css('display', 'none');
		}
	});
	//切换页面
	var pageContextCan=win.frames["pageContextCan"];
	var $pageCan=$menuCan.find("#enterprise_list_detail_menu_can");
	var allPage=$pageCan[0].children;
	for (var i = 0; i < allPage.length-1; i++) {
		var $page=$(allPage[i]);
		var selectFlag=$page.attr("myAttr");
		if(selectFlag==="selected"){
			switch(i){
				case 0:
				pageContextCan.location.href="enterpriseDetail.jsp?enterpriseId="+recode;
				break;
				case 1:
				pageContextCan.location.href="equipmentManage.jsp?enterpriseId="+recode;
				break;
				case 2:
				pageContextCan.location.href="layoutScheme.jsp?enterpriseId="+recode;
				break;
				case 3:
				pageContextCan.location.href="report.jsp?enterpriseId="+recode;
				break;
			}
			break;
		}
	}
}
//编辑
function edit(recodeID){
	var recode=grid.getSelected();
	mini.open({
	    url: "page/enterpriseListForm.jsp",
	    title: "编辑企业", 
	    width: 350, 
	    height: 325,
	    allowResize: true,
	    onload: function () {
	    	//向表单传参
	    	var iframe = this.getIFrameEl();
	        iframe.contentWindow.setData(recode);
	    },
	    ondestroy: function (action) {
	        if(action===true){
	        	var companyName = mini.get("key").getValue();
	        	grid.load({companyName:companyName});
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
	        	tip: "您是否要删除当前企业？"
	        };
	        iframe.contentWindow.setData(data);
	    },
	    ondestroy: function (action) {
	    	//点击确认时返回action=true
	    	if (action===true) {
                $.ajax({
                    url: "",
                    type: 'post',
            		data: { id: recode },
            		dataType : 'json',
                    success: function (text) {
                    	alert(text.message);
                    	var companyName = mini.get("key").getValue();
                    	grid.load({companyName:companyName});
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                    	alert(jqXHR.responseText);
                    }
                });
	    	} 
	    }
	});
}