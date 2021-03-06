window.onerror=function(){return true;}
mini.parse();
//职务表
var grid1 = mini.get("datagrid1");
//左侧职责表
var grid2 = mini.get("datagrid2");
//右侧职责表
var grid3 = mini.get("datagrid3");
//职务下拉
var jobDrop;
//职责下拉
var dutyDrop;
//客户公司职责表人名下拉
var dutyNameDrop;
$(document).ready(function(){
	//读取全部统计信息
	$.ajax({
		url : "../company.do?type=getCompanyInfo",
		data : {id:enterpriseId},
		dataType : "json",
		type : "get",
		success : function(e){
			var $equipmentNum=$("#equipmentNum");
			var $objectNum=$("#objectNum");
			var $reportNum=$("#reportNum");
			$equipmentNum.text(e.pointCount);
			$objectNum.text(e.verifyCount);
			$reportNum.text(e.validationReporCount);
		},
		error : function(e){
			mini.alert("请求数据失败！status："+e.status);
		}
	});
	//读取企业详情
	$.ajax({
		url : "../company.do?type=findCompanyByKey",
		data : {id:enterpriseId},
		dataType : "json",
		type : "get",
		success : function(e){
			var $tableHeader=$("#tableHeader");
			var $cantact=$("#cantact");
			var $telephone=$("#telephone");
			var $address=$("#address");
			$tableHeader.text(e.name);
			$cantact.text(e.linkman);
			$telephone.text(e.phone);
			$address.text(e.address);
		},
		error : function(e){
			mini.alert("请求数据失败！status："+e.status);
		}
	});
	/*
	职务表初始化数据
	*/
	grid1.on("drawcell", function (e) {
		//operate列，超连接操作按钮
	    if (e.column.name == "operate") {
	        e.cellStyle = "text-align:center";
	        e.cellHtml = '<a href="javascript:edit(\'' + e.record.id + '\')">编辑</a>&nbsp; '
	                    + '<a href="javascript:del(\'' + e.record.id + '\')">删除</a>&nbsp; ';
	    }
	});
	//获取职务下拉
	$.ajax({
		url : "../commonParam.do?type=findCommonParamByType&paramType=POST_TYPE",
//		data : {id:enterpriseId},
		dataType : "json",
		type : "get",
		success : function(data) {
			jobDrop=data;
			//加载表格数据
			grid1.load({enterpriseId:enterpriseId});
		},
		error : function(e) {
			mini.alert("请求数据失败！status："+e.status);
		}
	});
	/*
	职责表初始化数据
	*/
	grid2.on("drawcell", function (e) {
		//operate列，超连接操作按钮
	    if (e.column.name == "operate") {
	        e.cellStyle = "text-align:center";
	        e.cellHtml = '<a href="javascript:editDutyLeft(\'' + e.record.id + '\')">编辑</a>&nbsp; '
	                    + '<a href="javascript:delDutyLeft(\'' + e.record.id + '\')">删除</a>&nbsp; ';
	    }
	});
	grid3.on("drawcell", function (e) {
		//operate列，超连接操作按钮
	    if (e.column.name == "operate") {
	        e.cellStyle = "text-align:center";
	        e.cellHtml = '<a href="javascript:editDutyRight(\'' + e.record.id + '\')">编辑</a>&nbsp; '
	                    + '<a href="javascript:delDutyRight(\'' + e.record.id + '\')">删除</a>&nbsp; ';
	    }
	});
	//获取客户公司和验证公司名称
	$.ajax({
		url : "../company.do?type=getCompanyName",
		data : {id:enterpriseId},
		dataType : "json",
		type : "get",
		success : function(e){
			var $companyNameLeft=$("#companyNameLeft");
			var $companyNameRight=$("#companyNameRight");
			$companyNameLeft.text(e.companyNameLeft);
			$companyNameRight.text(e.companyNameRight);
		},
		error : function(e){
			mini.alert("请求数据失败！status："+e.status);
		}
	});
	//获取职责下拉
	$.ajax({
		url : '../commonParam.do?type=findCommonParamByType&paramType=DUTIES_TYPE',
		data : {enterpriseId:enterpriseId},
		dataType : "json",
		type : "get",
		success : function(data) {
			dutyDrop=data;
			//加载表格数据
			grid3.load({});
			$.ajax({
				url : "../personnelPost.do?type=findPersonnelPostByCompanyToDrop",
				data : {enterpriseId:enterpriseId},
				dataType : "json",
				type : "get",
				success : function(data) {
					dutyNameDrop=data;
					//加载表格数据
					grid2.load({enterpriseId:enterpriseId});
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
	
	var $parentWin=$(window.parent.document);
	//设备总数点击跳转
	$("#equipmentNumCan").click(function(){
		$parentWin.find("#equipment_manage_menu").trigger("click");
	});
	//验证对象点击跳转
	$("#objectNumCan").click(function(){
		$parentWin.find("#plan_menu").trigger("click");
	});
	//验证报告点击跳转
	$("#reportNumCan").click(function(){
		$parentWin.find("#report_menu").trigger("click");
	});
	
	//读取提示消息数量
	$.ajax({
		url : "../point.do?type=getOverduePointCount",
		data : {enterpriseId:enterpriseId},
		dataType : "json",
		type : "get",
		success : function(e){
			/*if(e.message1>0){
				var $topMessage_num=$("#topMessage_num");
				$topMessage_num.text(e.message1);
				$topMessage_num.css('visibility', 'visible');
			}*/
			if(e.message>=0){
//				var $topNotice_num=$("#topNotice_num");
				
				var $topNotice_num=$(window.parent.document).find("#topNotice_num");
				
				$topNotice_num.text(e.message);
				$topNotice_num.css('visibility', 'visible');
			}
			/*if(e.message3>0){
				var $topInform_num=$("#topInform_num");
				$topInform_num.text(e.message3);
				$topInform_num.css('visibility', 'visible');
			}*/
		},
		error : function(e){
			alert("请求数据失败！status："+e.status);
		}
	});
	
	
	//后台获取设备
	$(window.parent.document).find("#topNotice").click(function(){
		mini.open({
		    url: "page/equipmentWin.jsp?enterpriseId="+enterpriseId,
		    title: "过期设备", 
		    width: 890, 
		    height: 280,
		    allowResize: true,
		    onload: function () {
		    },
		    ondestroy: function (action) {
		        
		    }
		});
	});
	
});

/*
--------------职务表增删改查----------------
*/
//键入回车查询
function onKeyEnter(){
	search();
}
//查询
function search(){
	var name = mini.get("key1").getValue();
    var param={enterpriseId:enterpriseId,name:name};
    grid1.load(param);
}
//添加验证人员
function addRow(){
	mini.open({
	    url: "page/jobDetailForm.jsp",
	    title: "添加验证人员", 
	    width: 350, 
	    height: 255,
	    allowResize: true,
	    onload: function () {
	    	var $tableHeader=$("#tableHeader");
	    	var iframe = this.getIFrameEl();
	        var data = { 
	        	enterpriseId: enterpriseId,
	        	companyName: $tableHeader.text()
	        };
	        iframe.contentWindow.setData(data);
	    },
	    ondestroy: function (action) {
	    	if(action===true){
	    		grid1.load({enterpriseId:enterpriseId});
	    	}  
	    }
	});
}
//编辑验证人员信息
function edit(recodeID){
	var recode=grid1.getSelected();
	mini.open({
	    url: "page/jobDetailForm.jsp",
	    title: "编辑验证人员信息", 
	    width: 350, 
	    height: 255,
	    allowResize: true,
	    onload: function () {
	    	//向表单传参
	    	recode.enterpriseId=enterpriseId;
	    	var iframe = this.getIFrameEl();
	        iframe.contentWindow.setData(recode);
	    },
	    ondestroy: function (action) {
	        if(action===true){
	    		grid1.load({enterpriseId:enterpriseId});
	    	} 
	    }
	});
}
//删除验证人员
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
	        	tip: "您是否要删除当前验证人员？"
	        };
	        iframe.contentWindow.setData(data);
	    },
	    ondestroy: function (action) {
	    	//点击确认时返回action=true
	    	if (action===true) {
                $.ajax({
                    url: "../personnelPost.do?type=delete",
                    type: 'post',
            		data: { id: recode },
            		dataType : 'json',
                    success: function (text) {
                    	alert(text.message);
                        grid1.load({enterpriseId:enterpriseId});
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                    	alert(jqXHR.responseText);
                    }
                });
	    	} 
	    }
	});
}

/*
--------------左侧职责表增删改查----------------
*/
//键入回车查询
function onKeyEnterDutyLeft(){
	searchDutyLeft();
}
//查询
function searchDutyLeft(){
	var name = mini.get("key2").getValue();
    var param={enterpriseId:enterpriseId,name:name};
    grid2.load(param);
}
//添加验证人员
function addRowDutyLeft(){
	mini.open({
	    url: "page/dutyConsDetailForm.jsp",
	    title: "添加验证人员", 
	    width: 350, 
	    height: 220,
	    allowResize: true,
	    onload: function () {
	    	var iframe = this.getIFrameEl();
	    	//1表明添加的是客户公司
	        var data = { 
	        	enterpriseId: enterpriseId
	        	//dutyFlag: 1
	        };
	        iframe.contentWindow.setData(data);
	    },
	    ondestroy: function (action) {
	    	if(action===true){
	    		grid2.load({enterpriseId:enterpriseId});
	    	}  
	    }
	});
}
//编辑验证人员信息
function editDutyLeft(recodeID){
	var recode=grid2.getSelected();
	mini.open({
	    url: "page/dutyConsDetailForm.jsp",
	    title: "编辑验证人员信息", 
	    width: 350, 
	    height: 220,
	    allowResize: true,
	    onload: function () {
	    	//向表单传参
	    	//recode.dutyFlag=1;
	    	recode.enterpriseId=enterpriseId;
	    	var iframe = this.getIFrameEl();
	        iframe.contentWindow.setData(recode);
	    },
	    ondestroy: function (action) {
	        if(action===true){
	    		grid2.load({enterpriseId:enterpriseId});
	    	} 
	    }
	});
}
//删除验证人员
function delDutyLeft(recode){
	mini.open({
	    url: "page/confirm.jsp",
	    title: "提示", 
	    width: 350, 
	    height: 130,
	    allowResize: false,
	    onload: function () {
	        var iframe = this.getIFrameEl();
	        var data = { 
	        	tip: "您是否要删除当前验证人员？"
	        };
	        iframe.contentWindow.setData(data);
	    },
	    ondestroy: function (action) {
	    	//点击确认时返回action=true
	    	if (action===true) {
                $.ajax({
                    url: "../personnelDuties.do?type=delete",
                    type: 'post',
            		data: { id: recode 
            			//dutyFlag: 1 
            		},
            		dataType : 'json',
                    success: function (text) {
                    	alert(text.message);
                        grid2.load({enterpriseId:enterpriseId});
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                    	alert(jqXHR.responseText);
                    }
                });
	    	} 
	    }
	});
}

/*
--------------右侧职责表增删改查----------------
*/
//键入回车查询
function onKeyEnterDutyRight(){
	searchDutyRight();
}
//查询
function searchDutyRight(){
	var name = mini.get("key3").getValue();
    var param={name:name};
    grid3.load(param);
}
//添加验证人员
function addRowDutyRight(){
	mini.open({
	    url: "page/dutyDetailForm.jsp",
	    title: "添加验证人员", 
	    width: 350, 
	    height: 220,
	    allowResize: true,
	    onload: function () {
	    	var iframe = this.getIFrameEl();
	    	//2表明添加的是验证公司
	        var data = {
	        	enterpriseId: 0 
	        	//dutyFlag: 2
	        };
	        iframe.contentWindow.setData(data);
	    },
	    ondestroy: function (action) {
	    	if(action===true){
	    		grid3.load({});
	    	}  
	    }
	});
}
//编辑验证人员信息
function editDutyRight(recodeID){
	var recode=grid3.getSelected();
	mini.open({
	    url: "page/dutyDetailForm.jsp",
	    title: "编辑验证人员信息", 
	    width: 350, 
	    height: 220,
	    allowResize: true,
	    onload: function () {
	    	//向表单传参
	    	//recode.dutyFlag=2;
	    	recode.enterpriseId=0;
	    	var iframe = this.getIFrameEl();
	        iframe.contentWindow.setData(recode);
	    },
	    ondestroy: function (action) {
	        if(action===true){
	    		grid3.load({});
	    	} 
	    }
	});
}
//删除验证人员
function delDutyRight(recode){
	mini.open({
	    url: "page/confirm.jsp",
	    title: "提示", 
	    width: 350, 
	    height: 130,
	    allowResize: false,
	    onload: function () {
	        var iframe = this.getIFrameEl();
	        var data = { 
	        	tip: "您是否要删除当前验证人员？"
	        };
	        iframe.contentWindow.setData(data);
	    },
	    ondestroy: function (action) {
	    	//点击确认时返回action=true
	    	if (action===true) {
                $.ajax({
                    url: "../personnelDuties.do?type=delete",
                    type: 'post',
            		data: { id: recode 
            			//dutyFlag: 2 
            		},
            		dataType : 'json',
                    success: function (text) {
                    	alert(text.message);
                        grid3.load({});
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                    	alert(jqXHR.responseText);
                    }
                });
	    	} 
	    }
	});
}