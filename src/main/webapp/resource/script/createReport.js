mini.parse();
var grid = mini.get("datagrid1");
var $imgCanvansTop=$("#imgCanvansTop");
var $imgCanvansMiddle=$("#imgCanvansMiddle");
var $imgCanvansBottom=$("#imgCanvansBottom");
var $uploadImgTop=$("#uploadImgTop");
var $uploadImgMiddle=$("#uploadImgMiddle");
var $uploadImgBottom=$("#uploadImgBottom");
//存储背景图片url
var imgUrlObj={};
//职务下拉
var jobDrop;
//职责下拉
var dutyDrop;
$(document).ready(function(){
	/*--------------初始化数据-------------*/
	//第一步加载数据
	var form1 = new mini.Form("reportDataForm1");
	$.ajax({
		url : '../resource/data/createReport1.txt',
		data : {enterpriseId:enterpriseId,recordId:recordId},
		dataType : "json",
		type : "post",
		success : function(data) {
			//格式化日期
			if(!isNaN(data.verifyTime)){
				var value = new Date(Number(data.verifyTime));
		        data.verifyTime=mini.formatDate(value, 'yyyy-MM-dd');
			}
			form1.setData(data);
			//显示图片
			/*if(data.imageUrl_Top1){
				//加载图片
				$uploadImgTop.css('display', 'none');
				$imgCanvansTop.css('background-image', 'url('+data.imageUrl_Top1+')');
			}
			if(data.imageUrl_Middle1){
				//加载图片
				$uploadImgMiddle.css('display', 'none');
				$imgCanvansMiddle.css('background-image', 'url('+data.imageUrl_Middle1+')');
			}
			if(data.imageUrl_Bottom1){
				//加载图片
				$uploadImgBottom.css('display', 'none');
				$imgCanvansBottom.css('background-image', 'url('+data.imageUrl_Bottom1+')');
			}
			//存储图片url
			var props=Object.getOwnPropertyNames(data);
			for(var i = 0; i < props.length; i++){
				var propName=props[i];
				if(propName.indexOf("imageUrl")>-1){	
					imgUrlObj[propName]=data[propName];
				}
			}*/
		},
		error : function(e) {
			alert("请求数据失败！status："+e.status);
		}
	});

	/*--------返回报告列表按钮-----------*/
	var $returnButton=$("#returnButton");
	$returnButton.click(function(event) {
		var win=window.parent;
		var $mainCanvans=$(win.document.getElementById("mainCanvans"));
		var $childCanvans=$(win.document.getElementById("childCanvans"));
		$childCanvans.css('display', 'none');
		$mainCanvans.css('display', 'block');
	});

	/*---------1---------*/
	//下一步按钮
	var $next1=$("#context1_next");
	$next1.click(function(event) {
		//获取第二步公司名称
		$.ajax({
			url : "../resource/data/companyName.txt",
			data : {enterpriseId:enterpriseId,recordId:recordId},
			dataType : "json",
			type : "get",
			success : function(e){
				var $companyNameLeft=$("#companyNameLeft");
				var $companyNameRight=$("#companyNameRight");
				$companyNameLeft.text(e.companyNameLeft);
				$companyNameRight.text(e.companyNameRight);
			},
			error : function(e){
				alert("请求数据失败！status："+e.status);
			}
		});
		//加载职责和职务下拉
		var datagridJob = mini.get("datagridJob");
		var datagridDuty = mini.get("datagridDuty");
		$.ajax({
			url : '../resource/data/jobDrop.txt',
			data : {enterpriseId:enterpriseId,recordId:recordId},
			dataType : "json",
			type : "get",
			success : function(data) {
				jobDrop=data;
				//加载表格数据
				datagridJob.load({enterpriseId:enterpriseId,recordId:recordId});
				$.ajax({
					url : '../resource/data/dutyDrop.txt',
					data : {enterpriseId:enterpriseId,recordId:recordId},
					dataType : "json",
					type : "get",
					success : function(data) {
						dutyDrop=data;
						//加载表格数据
						datagridDuty.load({enterpriseId:enterpriseId,recordId:recordId});
					},
					error : function(e) {
						alert("请求数据失败！status："+e.status);
					}
				});
			},
			error : function(e) {
				alert("请求数据失败！status："+e.status);
			}
		});
		$("#step1").css('color', '#000');
		$("#step2").css('color', '#4485E0');
		$("#context1").css("display","none");
		$("#context2").css("display","block");
	});

	/*---------2--------*/
	//上一步按钮
	var $pre2=$("#context2_pre");
	$pre2.click(function(event) {
		$("#step2").css('color', '#000');
		$("#step1").css('color', '#4485E0');		
		$("#context2").css("display","none");
		$("#context1").css("display","block");
	});
	//下一步按钮
	var $next2=$("#context2_next");
	$next2.click(function(event) {
		if(propertyType=="01"){
			//第三步加载冷库基本数据
			var form2 = new mini.Form("reportDataForm2");
			$.ajax({
				url : '../resource/data/freezerBaseInfo.txt',
				data : {enterpriseId:enterpriseId,recordId:recordId},
				dataType : "json",
				type : "post",
				success : function(data) {
					form2.setData(data);
				},
				error : function(e) {
					alert("请求数据失败！status："+e.status);
				}
			});
			$("#context3_lccCanvas").css("display","none");
			$("#context3_bwxCanvas").css("display","none");
			$("#context3_lkCanvas").css("display","block");
		}else if(propertyType=="02"){
			//第三步加载冷藏车基本数据
			var form3 = new mini.Form("reportDataForm3");
			$.ajax({
				url : '../resource/data/truckBaseInfo.txt',
				data : {enterpriseId:enterpriseId,recordId:recordId},
				dataType : "json",
				type : "post",
				success : function(data) {
					form3.setData(data);
				},
				error : function(e) {
					alert("请求数据失败！status："+e.status);
				}
			});
			$("#context3_lkCanvas").css("display","none");
			$("#context3_bwxCanvas").css("display","none");
			$("#context3_lccCanvas").css("display","block");
		}else if(propertyType=="03"){
			//第三步加载保温箱基本数据
			var form4 = new mini.Form("reportDataForm4");
			$.ajax({
				url : '../resource/data/incubatorBaseInfo.txt',
				data : {enterpriseId:enterpriseId,recordId:recordId},
				dataType : "json",
				type : "post",
				success : function(data) {
					form4.setData(data);
				},
				error : function(e) {
					alert("请求数据失败！status："+e.status);
				}
			});
			$("#context3_bwxCanvas").css("display","block");
			$("#context3_lkCanvas").css("display","none");
			$("#context3_lccCanvas").css("display","none");
		}
		$("#step2").css('color', '#000');
		$("#step3").css('color', '#4485E0');
		$("#context2").css("display","none");
		$("#context3").css("display","block");
	});

	/*---------3--------*/
	//验证对象动态名称
	/*$.ajax({
		url : '../resource/data/objectTypeDrop.txt',
		data : {},
		dataType : "json",
		type : "get",
		success : function(data) {
			for(var i=0;i<data.length;i++){
				if(propertyType==data[i].value){
					$("#incubatorNameTitle").text(data[i].name+"名称型号：");
					$("#incubatorParamsTitle").text(data[i].name+"参数：");
					break;
				}
			}
		},
		error : function(e) {
			alert("请求数据失败！status："+e.status);
		}
	});*/
	//上一步按钮
	var $pre3=$("#context3_pre");
	$pre3.click(function(event) {
		$("#step3").css('color', '#000');
		$("#step2").css('color', '#4485E0');		
		$("#context3").css("display","none");
		$("#context2").css("display","block");
	});
	//下一步按钮
	var $next3=$("#context3_next");
	$next3.click(function(event) {
		//第四步表格加载
		grid.on("drawcell", function (e) {
			//operate列，超连接操作按钮
		    if (e.column.name == "operate") {
		        e.cellStyle = "text-align:center";
		        e.cellHtml = '<a href="javascript:edit(\'' + e.record.id + '\')">编辑</a>&nbsp; '
		                    + '<a href="javascript:del(\'' + e.record.id + '\')">删除</a>&nbsp; ';
		    }
		});
		grid.load({enterpriseId:enterpriseId,recordId:recordId},function(success){
			$("#meterNum").text("仪表数量："+success.data.length);
		});
		$("#step3").css('color', '#000');
		$("#step4").css('color', '#4485E0');
		$("#context3").css("display","none");
		$("#context4").css("display","block");
	});

	/*----------4-----------*/
	//上一步按钮
	var $pre4=$("#context4_pre");
	$pre4.click(function(event) {
		$("#step4").css('color', '#000');
		$("#step3").css('color', '#4485E0');		
		$("#context4").css("display","none");
		$("#context3").css("display","block");
	});
	//配置完成按钮
	var $configDone=$("#configDone");
	$configDone.click(function(event) {
		//提交数据
		var configData = form.getData();
		//将日期对象转化为字符串
		configData.verifyTime=mini.formatDate(configData.verifyTime,"yyyy-MM-dd");
		form.validate();
        if (form.isValid() == false) return;
        $.ajax({
            url: "",
			type: 'post',
            data: configData,
            cache: false,
            success: function (text) {
            	//下一步
				$("#step4").css('color', '#000');
				$("#step5").css('color', '#4485E0');		
				$("#context4").css("display","none");
				$("#context5").css("display","block");
            },
            error: function (jqXHR, textStatus, errorThrown) {
                alert(jqXHR.responseText);
            }
        });
	});

	/*----------5-----------*/
	//图片点击事件
	var flag=0;
	var $uploadButton=$("#uploadButton");
	$imgCanvansTop.click(function(event) {
		flag=1;
		$uploadButton.trigger('click');
	});
	$imgCanvansMiddle.click(function(event) {
		flag=2;
		$uploadButton.trigger('click');
	});
	$imgCanvansBottom.click(function(event) {
		flag=3;
		$uploadButton.trigger('click');
	});
	//上传图片到服务器
	$uploadButton.change(function(event) {
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
		formData.append("recordId",recordId);
		var val;	
		if(flag==1){
			val= mini.get("chartTop").getValue();
			var imgSite="imageUrl_Top"+val;
			formData.append("imgSite",imgSite);
		}else if(flag==2){
			val= mini.get("chartMid").getValue();
			var imgSite="imageUrl_Middle"+val;
			formData.append("imgSite",imgSite);
		}else if(flag==3){
			val= mini.get("chartBot").getValue();
			var imgSite="imageUrl_Bottom"+val;
			formData.append("imgSite",imgSite);
		}else{
			return;
		}
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
                    if(flag==1){
                    	$uploadImgTop.css('display', 'none');
                    	$imgCanvansTop.css('background-image', 'url('+data.imageUrl+')');
                    	imgUrlObj["imageUrl_Top"+val]=data.imageUrl;
                    }else if(flag==2){
                    	$uploadImgMiddle.css('display', 'none');
                    	$imgCanvansMiddle.css('background-image', 'url('+data.imageUrl+')');
                    	imgUrlObj["imageUrl_Middle"+val]=data.imageUrl;
                    }else if(flag==3){
                    	$uploadImgBottom.css('display', 'none');
                    	$imgCanvansBottom.css('background-image', 'url('+data.imageUrl+')');
                    	imgUrlObj["imageUrl_Bottom"+val]=data.imageUrl;
                    }
                }
            },
            error: function (XMLHttpRequest, textStatus) {
                mini.alert("上传失败！"+textStatus);
            }
        });
	});
	//删除图片按钮
	$("#delIconTop").click(function(event) {
		var bi=$imgCanvansTop.css('background-image');
		if(bi=="none"){
			mini.alert("没有图片可以删除！");
			return;
		}
		var delval= mini.get("chartTop").getValue();
		delImg(1,delval);
	});
	$("#delIconMid").click(function(event) {
		var bi=$imgCanvansMiddle.css('background-image');
		if(bi=="none"){
			mini.alert("没有图片可以删除！");
			return;
		}
		var delval= mini.get("chartMid").getValue();
		delImg(2,delval);
	});
	$("#delIconBot").click(function(event) {
		var bi=$imgCanvansBottom.css('background-image');
		if(bi=="none"){
			mini.alert("没有图片可以删除！");
			return;
		}
		var delval= mini.get("chartBot").getValue();
		delImg(3,delval);
	});
	//上一步按钮
	var $pre5=$("#context5_pre");
	$pre5.click(function(event) {
		$("#step5").css('color', '#000');
		$("#step4").css('color', '#4485E0');		
		$("#context5").css("display","none");
		$("#context4").css("display","block");
	});
	//预览并下载按钮
	var $download=$("#download");
	$download.click(function(event) {

	});
});

//第四步新增
function addRow(){
	mini.open({
	    url: "page/meterForm.jsp",
	    title: "新增仪表", 
	    width: 380, 
	    height: 280,
	    allowResize: true,
	    onload: function () {
	    	var iframe = this.getIFrameEl();
	        var data = { 
	        	enterpriseId: enterpriseId,
	        	recordId: recordId
	        };
	        iframe.contentWindow.setData(data);
	    },
	    ondestroy: function (action) {
	    	if(action===true){
	    		grid.load({enterpriseId:enterpriseId,recordId:recordId},function(success){
					$("#meterNum").text("仪表数量："+success.data.length);
				});
	    	}  
	    }
	});
}

//第四步编辑
function edit(recodeID){
	var recode=grid.getSelected();
	mini.open({
	    url: "page/meterForm.jsp",
	    title: "编辑仪表信息", 
	    width: 380, 
	    height: 280,
	    allowResize: true,
	    onload: function () {
	    	//向表单传参
	    	recode.enterpriseId=enterpriseId;
	    	recode.recordId=recordId;
	    	var iframe = this.getIFrameEl();
	        iframe.contentWindow.setData(recode);
	    },
	    ondestroy: function (action) {
	        if(action===true){
	    		grid.load({enterpriseId:enterpriseId,recordId:recordId},function(success){
					$("#meterNum").text("仪表数量："+success.data.length);
				});
	    	} 
	    }
	});
}

//第四步删除
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
	        	tip: "您是否要删除当前仪表？"
	        };
	        iframe.contentWindow.setData(data);
	    },
	    ondestroy: function (action) {
	    	//点击确认时返回action=true
	    	if (action===true) {
                $.ajax({
                    url: "",
                    type: 'post',
            		data: { id: recodeID },
                    success: function (text) {
                    	alert(text.msg);
                        grid.load({enterpriseId:enterpriseId,recordId:recordId},function(success){
							$("#meterNum").text("仪表数量："+success.data.length);
						});
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                    	alert(jqXHR.responseText);
                    }
                });
	    	} 
	    }
	});
}

/*下拉切换图片功能*/
function chartChangeTop(event){
	var imgUrl="imageUrl_Top"+event.value;
	if(imgUrlObj[imgUrl]){
		$uploadImgTop.css('display', 'none');
		$imgCanvansTop.css('background-image', 'url('+imgUrlObj[imgUrl]+')');
	}else{
		$imgCanvansTop.css('background-image', 'none');
		$uploadImgTop.css('display', 'block');
	}
}
function chartChangeMiddle(event){
	var imgUrl="imageUrl_Middle"+event.value;
	if(imgUrlObj[imgUrl]){
		$uploadImgMiddle.css('display', 'none');
		$imgCanvansMiddle.css('background-image', 'url('+imgUrlObj[imgUrl]+')');
	}else{
		$imgCanvansMiddle.css('background-image', 'none');
		$uploadImgMiddle.css('display', 'block');
	}
}
function chartChangeBottom(event){
	var imgUrl="imageUrl_Bottom"+event.value;
	if(imgUrlObj[imgUrl]){
		$uploadImgBottom.css('display', 'none');
		$imgCanvansBottom.css('background-image', 'url('+imgUrlObj[imgUrl]+')');
	}else{
		$imgCanvansBottom.css('background-image', 'none');
		$uploadImgBottom.css('display', 'block');
	}
}

/*------删除图片------*/
function delImg(site,dropValue){
	mini.open({
	    url: "page/confirm.jsp",
	    title: "提示", 
	    width: 350, 
	    height: 130,
	    allowResize: false,
	    onload: function () {
	        var iframe = this.getIFrameEl();
	        var data = { 
	        	tip: "您是否要删除当前图片？"
	        };
	        iframe.contentWindow.setData(data);
	    },
	    ondestroy: function (action) {
	    	//点击确认时返回action=true
	    	if (action===true) {
	    		var imgSite;
	    		if(site==1){
	    			imgSite="imageUrl_Top"+dropValue;
				}else if(site==2){
					imgSite="imageUrl_Middle"+dropValue;
				}else if(site==3){
					imgSite="imageUrl_Bottom"+dropValue;
				}
                $.ajax({
                    url: "",
                    type: 'post',
            		data: {enterpriseId:enterpriseId,recordId:recordId,imgSite:imgSite},
                    success: function (data) {
                        if (data.status == true) {
                        	 mini.alert("图片删除成功！","提示");
                        	if(site==1){
				    			$imgCanvansTop.css('background-image', 'none');
								$uploadImgTop.css('display', 'block');
								imgUrlObj["imageUrl_Top"+dropValue]="";
							}else if(site==2){
								$imgCanvansMiddle.css('background-image', 'none');
								$uploadImgMiddle.css('display', 'block');
								imgUrlObj["imageUrl_Middle"+dropValue]="";
							}else if(site==3){
								$imgCanvansBottom.css('background-image', 'none');
								$uploadImgBottom.css('display', 'block');
								imgUrlObj["imageUrl_Bottom"+dropValue]="";
							}
                        }
                    },
                    error: function (err) {
                    	mini.alert("删除失败："+textStatus);
                    }
                });
	    	} 
	    }
	});
}