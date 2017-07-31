<%@ page language="java" import="java.util.*" isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>企业管理系统</title>
	<!--jquery miniUI-->
	<script src="miniUI/scripts/boot.js" type="text/javascript"></script>
	<!--main-->
	<link rel="stylesheet" type="text/css" href="resource/css/main.css">
	<script type="text/javascript" src="resource/script/main.js"></script>
	<script type="text/javascript" src="resource/script/miniui_register.js"></script>
	
	
	<script type="text/javascript">
	
	
	var $topNotice_num=$("#topNotice_num");
	$topNotice_num.css('visibility', 'hidden');
	
	</script>
</head>
<body>
	<div id="mainSplit" class="mini-splitter" style="width:100%;height:100%;" handlerSize="0">
	    <div id="mainSplit_left" size="20%" style="height: 100%;border: 0 solid #000;">
	    	<div id="systemIcon">
	    	</div>
	    	<!--<div id="searchBox">
	        	<div id="inputDiv">
	        		<input id="searchInput" type="text" name="project" placeholder="  Search...">
	        	</div>
	        	<div id="searchDiv">
	        	</div>
	        </div>-->
	        <div id="listNav">
	        	MAIN NAVIGATION
	        </div>
	        <div id="listCanvans">
		        <div class="listMenuF">
		        	<div class="listFirst" id="listFirst1">
		        		<div class="listFirstIcon" id="listFirstIcon1">
			        	</div>
			        	<div class="listTitle">
			        		企业管理
			        	</div>
			        	<div class="listArrow" id="listArrow1">	
			        	</div>
		        	</div>
		        	<div id="listSecond1" myAttr="close">
		        		<div class="listSecond" id="enterprise_list">
			        		<div class="listIcon">		
				        	</div>
				        	<div class="listTitle">
				        		企业列表
				        	</div>
			        	</div>
		        	</div>
		        </div>
		        <div class="listMenuS" id="listMenuS1">
		        	<div class="listFirst" id="listFirst2">
			        	<div class="listFirstIcon" id="listFirstIcon2">
			        	</div>
			        	<div class="listTitle">
			        		系统管理
			        	</div>
			        	<div class="listArrow" id="listArrow2">
			        	</div>
		        	</div>
		        	<div id="listSecond2" myAttr="close">
		        		<div class="listSecond" id="object_manage">
			        		<div class="listIcon">	
				        	</div>
				        	<div class="listTitle">
				        		验证对象类型管理
				        	</div>
			        	</div>
			        	<div class="listSecond" id="job_manage">
			        		<div class="listIcon">	
				        	</div>
				        	<div class="listTitle">
				        		职务管理
				        	</div>
			        	</div>
			        	<div class="listSecond" id="duty_manage">
			        		<div class="listIcon">	
				        	</div>
				        	<div class="listTitle">
				        		职责管理
				        	</div>
			        	</div>
		        	</div>
		        </div>
	        </div>
	    </div>
	    <div id="mainSplit_right" style="border: 0 solid #000;">
	        <div class="mini-splitter" vertical="true" style="width:100%;height:100%;" handlerSize="0" allowResize="false">
			    <div size="50" id="rightSplit_top" style="border: 0 solid #000;">
			    	<div id="enterpriseNameDiv">
			    	</div>
			        <!--<div id="topMenu">			        	
			        </div> 
			        <div id="topSetting">			        	
			        </div>-->
			        <div id="topUserInfo">
			        	<!--<div id="userImage">
			        	</div>-->
			        	<div id="userName">
			        		Guide-tech
			        		<!--main.js中通过ajax读取数据如下,使用时必须部署到服务器下-->
			        		<!--Alexander Pierce-->
			        	</div>
			        </div>
			        <!--<div id="topInform">
			        	<div id="topInform_num" class="messageNum">
			        		
			        	</div>
			        </div>-->
			        <div id="topNotice">
			        	<div id="topNotice_num" class="messageNum">
			        		<!--10-->
			        	</div>
			        </div>
			        <!--<div id="topMessage">
			        	<div id="topMessage_num" class="messageNum">
			        		
			        	</div>
			        </div>-->
			    </div>
			    <div id="rightSplit_bottom" style="border:0 solid #000;">
			    	<div id="mainPageCan">
			    		<div id="mainPage">
					    	<!--欢迎界面-->
					    	<div id="welcomePage">
					    		<iframe name="detailPage" src="page/welcome.jsp" width="100%" height="100%" 
					    			style="border-width: 0">
					        	</iframe>
					    	</div>
					        <!--菜单页面-->
					        <div id="dynamicMenuPage">
					        	 <div class="mini-splitter" vertical="true" handlerSize="0" allowResize="false"
					        	 	style="width:100%;height:100%;overflow:hidden;">
					        	 	<div size="40" id="bottomSplit_top" style="border: 0 solid #000;">
					        	 		<div class="rightMenu_can" id="enterprise_list_menu_can">
					        	 			<div class="rightMenu" id="enterprise_list_menu">
					        	 				企业列表
					        	 			</div>
					        	 		</div>
					        	 		<div class="rightMenu_can" id="enterprise_list_detail_menu_can">
					        	 			<div class="rightMenu" id="enterprise_detail_menu" myAttr="selected">
					        	 				企业详情
					        	 			</div>
					        	 			<div class="rightMenu" id="equipment_manage_menu" myAttr="unselected">
					        	 				验证设备管理
					        	 			</div>
					        	 			<div class="rightMenu" id="plan_menu" myAttr="unselected">
					        	 				验证对象及布点方案
					        	 			</div>
					        	 			<div class="rightMenu" id="report_menu" myAttr="unselected">
					        	 				验证报告管理
					        	 			</div>
					        	 			<div class="buttonMenu" id="return_button">
					        	 				<div id="return_button_icon"></div>
					        	 				<div id="return_button_info">
					        	 					返回企业列表
					        	 				</div>
					        	 			</div>
					        	 		</div>
					        	 		<div class="rightMenu_can" id="object_manage_menu_can">
					        	 			<div class="rightMenu" id="object_manage_menu">
					        	 				验证对象类型管理
					        	 			</div>
					        	 		</div>
					        	 		<div class="rightMenu_can" id="job_manage_menu_can">
					        	 			<div class="rightMenu" id="job_manage_menu">
					        	 				职务管理
					        	 			</div>
					        	 		</div>
					        	 		<div class="rightMenu_can" id="duty_manage_menu_can">
					        	 			<div class="rightMenu" id="duty_manage_menu">
					        	 				职责管理
					        	 			</div>
					        	 		</div>
					        	 	</div>
					        	 	<div id="bottomSplit_bottom" style="border: 0 solid #000;">
					        	 		<iframe name="pageContextCan" src="" width="100%" height="100%" style="border-width: 0">
					        			</iframe>
					        	 	</div>
					        	 </div>
					        </div>
				        </div>
			        </div>
			        <div id="bottomInfo">
			        	<div id="copyrightInfo">
			        		Copyright©2014-2017
			        	</div>
			        	<div id="companyInfo">
			        		&nbsp;山东贵德信息科技有限公司
			        	</div>
			        	<div id="descriptionInfo">
			        		. All rights reserved
			        	</div>
			        	<div id="versionInfo">
			        		Version 2.3.6
			        	</div>
			        </div>
			    </div>        
			</div>
	    </div>        
	</div>
</body>
</html>