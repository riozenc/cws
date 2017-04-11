mini.parse();
var grid = mini.get("datagrid1");
//布点下拉
var schemeDrop;
//记录基本信息数据，用于比较
var baseInfoData;
$(document).ready(function(){
	/*------------基本信息------------------*/
	var $baseInfoImg=$("#baseInfoImg");
	var $refreshImg=$("#refreshImg");
	//查询基本信息
	$.ajax({
		url : "../resource/data/freezerBaseInfo.txt",
		data : {enterpriseId:enterpriseId,verifyId:verifyId},
		dataType : "json",
		type : "post",
		success : function(e){
			$("input[name='name']").val(e.name);
			$("input[name='type']").val(e.type);
			$("input[name='volume']").val(e.volume);
			$("input[name='area']").val(e.area);
			$("input[name='fanNum']").val(e.fanNum);
			$("input[name='fanMainNum']").val(e.fanMainNum);
			$("input[name='fanSpareNum']").val(e.fanSpareNum);
			$("input[name='entranceNum']").val(e.entranceNum);
			$("input[name='goodsShelves']").val(e.goodsShelves);
			$("input[name='probeNum']").val(e.probeNum);
			$("input[name='manufactor']").val(e.manufactor);
			if(e.disMap){
				//取消图片点击事件
				$baseInfoImg.unbind("click");
				//加载图片
				$("#uploadImg").css('display', 'none');
				$baseInfoImg.css('background-image', 'url('+e.disMap+')');
				//显示重新上传图片按钮
				$refreshImg.css('display', 'block');
				$baseInfoImg.css('cursor', 'default');
			}
			baseInfoData=e;
		},
		error : function(e){
			alert("请求数据失败！status："+e.status);
		}
	});
	//图片点击事件
	var $uploadImg=$("#uploadButton");
	$baseInfoImg.click(function(event) {
		$uploadImg.trigger('click');
	});
	//重新上传图片按钮点击事件
	$refreshImg.click(function(event) {
		$uploadImg.trigger('click');
	});
	//上传图片到服务器
	$uploadImg.change(function(event) {
		//判断文件格式
		var imgName=event.currentTarget.value;
		// //获得上传文件后缀
		var imgNames=imgName.split("\.");
		var lastIndex=imgNames[imgNames.length-1];
		if("bmp"!=lastIndex&&"png"!=lastIndex&&"jpg"!=lastIndex&&"jpeg"!=lastIndex&&"gif"!=lastIndex){
			mini.alert("请上传bmp，png，jpg，jpeg，gif类型的图片！","提示");
			return;
		}
		//定义表单参数
		if(FormData==undefined){
			mini.alert("当前浏览器版本过低，请升级或更换浏览器版本！","提示");
			return;
		}
		var formData = new FormData();
		formData.append("img", event.currentTarget.files[0]);
		formData.append("enterpriseId",enterpriseId);
		formData.append("verifyId",verifyId);
		//上传
		$.ajax({
            url: "",
            type: "POST",
            data: formData,
            /**
            *必须false才会自动加上正确的Content-Type
            */
            contentType: false,
            /**
            * 必须false才会避开jQuery对 formdata 的默认处理
            * XMLHttpRequest会对 formdata 进行正确的处理
            */
            processData: false,
            success: function (data) {
            	alert("请指定后台地址");
                if (data.status == true) {
                    mini.alert("上传成功！","提示");
                    $baseInfoImg.unbind("click");
					$("#uploadImg").css('display', 'none');
                    $baseInfoImg.css('background-image', 'url('+data.disMap+')');
                    $refreshImg.css('display', 'block');
                    $baseInfoImg.css('cursor', 'default');
                }
            },
            error: function (XMLHttpRequest, textStatus) {
                mini.alert("上传失败！"+textStatus);
            }
        });
	});
	//保存按钮点击事件
	var $saveBaseInfo=$("#saveBaseInfo");
	$saveBaseInfo.click(function(event) {
		//得到表单数据
		var formData={};
		var allData=$("#baseInfoForm").serializeArray();
		$.each(allData, function(index, val) {
			 formData[this.name]=this.value;
		});
		//判断数据是否被修改过
		var flag=true;
		var props=Object.getOwnPropertyNames(formData);
		for(var i = 0; i < props.length; i++){
			var propName=props[i];
			if(formData[propName]!=baseInfoData[propName]){
				flag=false;
				break;
			}
		}
		if(flag){
			mini.alert("没有修改过的数据！");
			return;
		}
		mini.open({
		    url: "page/confirm.jsp",
		    title: "提示", 
		    width: 350, 
		    height: 130,
		    allowResize: false,
		    onload: function () {
		        var iframe = this.getIFrameEl();
		        var data = { 
		        	tip: "您是否要保存修改后的数据？"
		        };
		        iframe.contentWindow.setData(data);
		    },
		    ondestroy: function (action) {
		    	//点击确认时返回action=true
		    	if (action===true) {
		    		$.ajax({
						url : "",
						data : JSON.stringify(formData),
						dataType : "json",
						type : "post",
						contentType : "application/json",
						success : function(e){
							baseInfoData=formData;
							mini.alert("保存成功！");
						},
						error : function(e){
							alert("请求数据失败！status："+e.status);
						}
					});
		    	} 
		    }
		});
	});
	/*------------布点方案------------------*/
	//查询布点方案数据信息
	seekCollect();
	/*------------具体布点方式------------------*/
	grid.on("drawcell", function (e) {
		//operate列，超连接操作按钮
	    if (e.column.name == "operate") {
	        e.cellStyle = "text-align:center";
	        e.cellHtml =  '<a href="javascript:edit(\'' + e.record.id + '\')">编辑</a>&nbsp; '
	                    + '<a href="javascript:del(\'' + e.record.id + '\')">删除</a>&nbsp; ';
	    }
	});
	//加载表格数据
	$.ajax({
		url : '../resource/data/schemeDrop.txt',
		data : {},
		dataType : "json",
		type : "get",
		success : function(data) {
			schemeDrop=data;
			//加载表格数据
			var pointType=mini.get("pointType").getValue();
			grid.load({enterpriseId:enterpriseId,verifyId:verifyId,pointType:pointType});
		},
		error : function(e) {
			alert("请求数据失败！status："+e.status);
		}
	});
	/*--------返回验证对象及布点方案按钮-----------*/
	var $returnButton=$("#returnButton");
	$returnButton.click(function(event) {
		var win=window.parent;
		var $mainCanvans=$(win.document.getElementById("mainCanvans"));
		var $childCanvans=$(win.document.getElementById("childCanvans"));
		$childCanvans.css('display', 'none');
		$mainCanvans.css('display', 'block');
	});
});

/*
查询布点方案数据信息
*/
function seekCollect(){
	$.ajax({
		url : "../resource/data/schemeCollect.txt",
		data : {enterpriseId:enterpriseId,verifyId:verifyId},
		dataType : "json",
		type : "post",
		success : function(e){
			$("#jyxPoint").text(e.jyxPoint);
			$("#fjPoint").text(e.fjPoint);
			$("#crkPoint").text(e.crkPoint);
			$("#sjPoint").text(e.sjPoint);
			$("#hjPoint").text(e.hjPoint);
			$("#ttPoint").text(e.ttPoint);
			$("#huanjPoint").text(e.huanjPoint);
		},
		error : function(e){
			alert("请求数据失败！status："+e.status);
		}
	});
}

//布点下拉改变事件
function schemeChange(e){
	grid.load({enterpriseId:enterpriseId,verifyId:verifyId,pointType:e.value});
}
//添加验证对象及布点方案
function addRow(){
	mini.open({
	    url: "page/shcemeForm.jsp",
	    title: "添加布点", 
	    width: 380, 
	    height: 255,
	    allowResize: true,
	    onload: function () {
	    	var iframe = this.getIFrameEl();
	        var data = { 
	        	enterpriseId: enterpriseId,
	        	verifyId:verifyId
	        };
	        iframe.contentWindow.setData(data);
	    },
	    ondestroy: function (action) {
	    	if(action===true){
	    		var pointType=mini.get("pointType").getValue();
				grid.load({enterpriseId:enterpriseId,verifyId:verifyId,pointType:pointType});
	    		seekCollect();
	    	}  
	    }
	});
}
//编辑
function edit(recodeID){
	var recode=grid.getSelected();
	mini.open({
	    url: "page/shcemeForm.jsp",
	    title: "编辑布点", 
	    width: 380, 
	    height: 255,
	    allowResize: true,
	    onload: function () {
	    	//向表单传参
	    	recode.enterpriseId=enterpriseId;
	    	recode.verifyId=verifyId;
	    	var iframe = this.getIFrameEl();
	        iframe.contentWindow.setData(recode);
	    },
	    ondestroy: function (action) {
	        if(action===true){
	    		var pointType=mini.get("pointType").getValue();
				grid.load({enterpriseId:enterpriseId,verifyId:verifyId,pointType:pointType});
	    		seekCollect();
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
	        	tip: "您是否要删除当前布点？"
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
                    success: function (text) {
                    	alert(text.msg);
                        var pointType=mini.get("pointType").getValue();
						grid.load({enterpriseId:enterpriseId,verifyId:verifyId,pointType:pointType});
                        seekCollect();
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                    	alert(jqXHR.responseText);
                    }
                });
	    	} 
	    }
	});
}