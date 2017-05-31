<%@ page language="java" import="java.util.*" isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<script src="../miniUI/scripts/boot.js" type="text/javascript"></script>
	<script src="../echarts/echarts.js" type="text/javascript"></script>
	<link rel="stylesheet" type="text/css" href="../resource/css/reportDetail.css">
	<link rel="stylesheet" type="text/css" href="../resource/css/miniUI_dataGrid.css">
	<script type="text/javascript" src="../resource/script/miniui_register.js"></script>
</head>
<body>
	<div id="mainCanvans">
		<div id="mainPanel">
			<div id="panelTop">
				<div id="panelTitle">
					
				</div>
				<div id="returnButton">
					<div id="returnButtonIcon"></div>
					<div id="returnButtonInfo">
						返回报告列表
					</div>
				</div>
			</div>
			<div id="panelContent">
				<div id="dropContent">
					<input id="dropData" class="mini-combobox" showNullItem="false" value="1" onvaluechanged="dropChanged"
						textField="name" valueField="value"
                        data='[{"value": 1, "name": "断电数据"},{"value": 2, "name": "开门数据"},{"value": 3, "name": "环境数据"}]'/>
				</div>
				<div id="measurePointContent">
					<div id="pointCheckBox" class="mini-checkboxlist"  repeatLayout="flow"
					    textField="name" valueField="value" onvaluechanged="checkBoxChanged">
					</div>
				</div>
				<div id="switchContent">
					<div id="chartContent">曲线</div>
					<div id="tableContent">表格</div>
				</div>
				<div id="dataContent">
					<div id="chartData"></div>
					<div id="tableData">
					    <!--<div id="datagrid1" class="mini-datagrid" style="width:100%;height:92%;min-height:359px;" 
					    	url="../resource/data/enterpriseList.txt" pageSize="20" allowCellEdit="false" allowCellSelect="true" multiSelect="false" idField="id">
					    </div>-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		//企业列表点击查看时传过来的id
		var enterpriseId=${param.enterpriseId};
		//验证报告管理点击查看时传过来的该条记录id
		var recordId=${param.recordId};
		//该记录对象名
		var object=${param.object};
		//该记录温度类型
		var temperatureType=${param.temp};
		//获得项目路径
		var contextPath="${pageContext.request.contextPath}";
	</script>
	<script type="text/javascript" src="../resource/script/reportDetail.js"></script>
</body>
</html>