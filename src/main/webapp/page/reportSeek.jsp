<%@ page language="java" import="java.util.*" isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<script src="../miniUI/scripts/boot.js" type="text/javascript"></script>
	<script src="../echarts/echarts.js" type="text/javascript"></script>
	<link rel="stylesheet" type="text/css" href="../resource/css/reportSeek.css">
	<!--<link rel="stylesheet" type="text/css" href="../resource/css/miniUI_dataGrid.css">-->
</head>
<body>
	<div id="mainCanvans">
		<div id="mainPanel">
			<div id="panelTop">
				<div id="returnButton">
					<div id="returnButtonIcon"></div>
					<div id="returnButtonInfo">
						返回报告列表
					</div>
				</div>
			</div>
			<div id="panelContent">
				<div id="dropContent">
					<input id="pDropData" class="mini-combobox" showNullItem="false" value="1" onvaluechanged="dropChanged"
						textField="name" valueField="value" name="pointType" 
						url="../resource/data/schemeDrop.txt" />
					<input id="mDropData" class="mini-combobox" showNullItem="false" value="1" onvaluechanged="dropChanged"
						textField="name" valueField="value" name="measureType" 
                        data='[{"value": 1, "name": "断电数据"},{"value": 2, "name": "开门数据"},{"value": 3, "name": "环境数据"}]'/>
				</div>
				<div id="echartContent">
					<div id="chartData"></div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		//企业列表点击查看时传过来的id
		var enterpriseId=${param.enterpriseId};
		//验证报告管理点击查看时传过来的该条记录id
		var recordId=${param.recordId};
		//获得项目路径
		var contextPath="${pageContext.request.contextPath}";
	</script>
	<script type="text/javascript" src="../resource/script/reportSeek.js"></script>
</body>