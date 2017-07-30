$(document).ready(function(){
	mini.parse();
	/*//查询
	var searchDiv=$("#searchDiv");
	searchDiv.click(function(event) {
		alert("search");
	});*/
	
	/*
		左侧下拉列表
	*/
	//主菜单点击事件
	var listFirst=$(".listFirst");
	listFirst.click(function(e) {
		for (var i = 0; i <listFirst.length; i++) {
			var listFirstId=listFirst[i].id;
			if(listFirstId===e.currentTarget.id){
				var lastIndex=listFirstId.substr(-1,listFirstId.length);
				var listMenuS=$("#listMenuS"+lastIndex);
				var listSecond=$("#listSecond"+lastIndex);
				var listArrow=$("#listArrow"+lastIndex);
				var flag=listSecond.attr("myAttr");
				if(flag==="close"){
					listArrow.css('background-image', 'url(resource/img/arrow-down.png)');
					listMenuS.animate({
						top: 0},
						200, function() {
						
					});
					listSecond.animate({
						top: 0},
						200, function() {
						listSecond.attr('myAttr', 'open');
					});
				}else if(flag==="open"){
					listArrow.css('background-image', 'url(resource/img/arrow-left.png)');
					var top=0;
					if(lastIndex==1){
						top="-40px";
					}else if(lastIndex==2){
						top="-120px";
					}
					//debugger;
					listMenuS.animate({
						top: '-40px'},
						200, function() {
						
					});
					listSecond.animate({
						top: top},
						200, function() {
						listSecond.attr('myAttr', 'close');
					});
				}
			}
		}
	});
	/*
	企业列表子菜单点击事件
	*/
	var enterprise_list=$("#enterprise_list");
	enterprise_list.click(function(e){
		//切换选中菜单颜色
		switchMenuColor(e);
		//切换欢迎页面为菜单页面以及切换菜单
		switchMenuShow(e);
		//加载页面
		var pageContextCan=window.frames["pageContextCan"];
		pageContextCan.location.href="page/enterpriseList.jsp";
	});
	/*
	验证对象类型管理子菜单点击事件
	*/
	var object_manage=$("#object_manage");
	object_manage.click(function(e){
		switchMenuColor(e);
		switchMenuShow(e);
		var pageContextCan=window.frames["pageContextCan"];
		pageContextCan.location.href="page/objectManage.jsp";
	});
	/*
	职务管理子菜单点击事件
	*/
	var job_manage=$("#job_manage");
	job_manage.click(function(e){
		switchMenuColor(e);
		switchMenuShow(e);
		var pageContextCan=window.frames["pageContextCan"];
		pageContextCan.location.href="page/jobManage.jsp";
	});
	/*
	职责管理子菜单点击事件
	*/
	var duty_manage=$("#duty_manage");
	duty_manage.click(function(e){
		switchMenuColor(e);
		switchMenuShow(e);
		var pageContextCan=window.frames["pageContextCan"];
		pageContextCan.location.href="page/dutyManage.jsp";
	});

	/*
	切换选中菜单颜色
	*/
	function switchMenuColor(e){
		$("#enterpriseNameDiv").text("");
		var id=e.currentTarget.id;
		var listCanvans=e.currentTarget.parentNode.parentNode.parentNode;
		for(var i=0;i<listCanvans.children.length;i++){
			var listSecondCan=listCanvans.children[i].children[1];
			var $listSecond=$(listSecondCan.children);
			$listSecond.each(function(index){
				var tt=$(this);
				if(id===tt[0].id){
					tt.unbind("mouseover");
					tt.unbind("mouseout");
					tt.css("background-color","#0C122C");
					tt.find(".listIcon").css("background-image","url(resource/img/onmenu.png)");
				}else{
					tt.css("background-color","#181E3E");
					tt.find(".listIcon").css("background-image","url(resource/img/unmenu.png)");
					tt.mouseover(function(event){
						tt.css("background-color","#141E32");
					});
					tt.mouseout(function(event) {
						tt.css("background-color","#181E3E");
					});
				}
			});
		}
	}

	/*
	切换右侧显示菜单
	*/
	//记录上一个被点击的菜单
	var preMenu;
	function switchMenuShow(e){
		if(preMenu==undefined){
			var welcomePage=$("#welcomePage");
			welcomePage.css('display', 'none');
		}
		var id=e.currentTarget.id;
		//取到右侧对应菜单容器的id以及dom对象
		var menuCanId=id+"_menu_can";
		var menuCan=document.getElementById(menuCanId);
		//取到所有菜单容器
		var $menu=$(menuCan.parentNode.children);
		$menu.each( function(index) {
			var item=$(this);
			if (menuCanId===item[0].id){
				item.css('display', 'block');
			}else{
				item.css('display', 'none');
			}
		});
		preMenu=id;
	}

	/*
	查看企业列表详情时右侧展示菜单点击事件
	*/
	//企业详情菜单点击事件
	var $enterprise_detail_menu=$("#enterprise_detail_menu");
	$enterprise_detail_menu.click(function(event) {
		//若两次点击同一菜单，则返回
		var selectedFlag=$enterprise_detail_menu.attr("myAttr");
		if(selectedFlag==="selected"){
			return;
		}
		//获取当前查看的企业id
		var enterpriseId=getId(event);
		//切换选中菜单样式
		switchRightMenu(event);
		//切换iframe内容
		var pageContextCan=window.frames["pageContextCan"];
		pageContextCan.location.href="page/enterpriseDetail.jsp?enterpriseId="+enterpriseId;
	});
	//验证设备管理菜单点击事件
	var $equipment_manage_menu=$("#equipment_manage_menu");
	$equipment_manage_menu.click(function(event) {
		//若两次点击同一菜单，则返回
		var selectedFlag=$equipment_manage_menu.attr("myAttr");
		if(selectedFlag==="selected"){
			return;
		}
		var enterpriseId=getId(event);
		switchRightMenu(event);
		var pageContextCan=window.frames["pageContextCan"];
		pageContextCan.location.href="page/equipmentManage.jsp?enterpriseId="+enterpriseId;
	});
	//验证对象及布点方案菜单点击事件
	var $plan_menu=$("#plan_menu");
	$plan_menu.click(function(event) {
		//若两次点击同一菜单，则返回
		var selectedFlag=$plan_menu.attr("myAttr");
		if(selectedFlag==="selected"){
			return;
		}
		var enterpriseId=getId(event);
		switchRightMenu(event);
		var pageContextCan=window.frames["pageContextCan"];
		pageContextCan.location.href="page/layoutScheme.jsp?enterpriseId="+enterpriseId;
	});
	//验证报告管理菜单点击事件
	var $report_menu=$("#report_menu");
	$report_menu.click(function(event) {
		//若两次点击同一菜单，则返回
		var selectedFlag=$report_menu.attr("myAttr");
		if(selectedFlag==="selected"){
			return;
		}
		var enterpriseId=getId(event);
		switchRightMenu(event);
		var pageContextCan=window.frames["pageContextCan"];
		pageContextCan.location.href="page/report.jsp?enterpriseId="+enterpriseId;
	});

	/*
	得到当前查看的企业id
	*/
	function getId(event){
		var $menu=$(event.currentTarget.parentNode);
		var enterpriseId=$menu.attr('enterpriseId');
		return enterpriseId;
	}

	/*
	切换右侧选中菜单颜色和选中状态
	*/
	function switchRightMenu(e){
		var id=e.currentTarget.id;
		var $menuCan=$(e.currentTarget.parentNode.children);
		$menuCan.each(function(index) {
			var item=$(this);
			if("return_button"!=item[0].id){
				if (id===item[0].id){
					item.css({
						'color':'#FFF',
						'background-color':'#4285E0'
					});
					item.attr('myAttr', 'selected');
				}else{
					item.css({
						'color':'#000',
						'background-color':'#FFF'
					});
					item.attr('myAttr', 'unselected');
				}
			}
		});
	}

	/*
	返回企业列表按钮点击事件
	*/
	var $return_button=$("#return_button");
	$return_button.click(function(e){
		$("#enterpriseNameDiv").text("");
		var $preMenu=$("#enterprise_list_detail_menu_can");
		var $curMenu=$("#enterprise_list_menu_can");
		$preMenu.css('display', 'none');
		$curMenu.css('display', 'block');
		var pageContextCan=window.frames["pageContextCan"];
		pageContextCan.location.href="page/enterpriseList.jsp";
	});

//	//读取提示消息数量
//	$.ajax({
////		url : "resource/data/message.txt",
//		url : "point.do?type=getOverduePointCount",
//		data : {other:1},
//		dataType : "json",
//		type : "get",
//		success : function(e){
//			/*if(e.message1>0){
//				var $topMessage_num=$("#topMessage_num");
//				$topMessage_num.text(e.message1);
//				$topMessage_num.css('visibility', 'visible');
//			}*/
//			if(e.message>0){
//				var $topNotice_num=$("#topNotice_num");
//				$topNotice_num.text(e.message);
//				$topNotice_num.css('visibility', 'visible');
//			}
//			/*if(e.message3>0){
//				var $topInform_num=$("#topInform_num");
//				$topInform_num.text(e.message3);
//				$topInform_num.css('visibility', 'visible');
//			}*/
//		},
//		error : function(e){
//			alert("请求数据失败！status："+e.status);
//		}
//	});

	//读取用户信息
	/*$.ajax({
		url : "resource/data/userInfo.txt",
		data : {},
		dataType : "json",
		type : "get",
		success : function(e){
			var $userName=$("#userName");
			$userName.text(e.name);
			var $userImage=$("#userImage");
			$userImage.css('background-image', 'url('+e.imageUrl+')');
			$userImage.css('background-size', '100%');
			$userImage.css('background-repeat', 'no-repeat');
		},
		error : function(e){
			alert("请求数据失败！status："+e.status);
		}
	});*/
	
//	//后台获取设备
//	$("#topNotice").click(function(){
//		mini.open({
//		    url: "page/equipmentWin.jsp",
//		    title: "过期设备", 
//		    width: 890, 
//		    height: 280,
//		    allowResize: true,
//		    onload: function () {
//		    },
//		    ondestroy: function (action) {
//		        
//		    }
//		});
//	});
	
	//页面初始化展示企业列表
	$("#listFirst1").trigger("click");
	enterprise_list.trigger('click');
});