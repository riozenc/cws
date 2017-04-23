<%@ page language="java" import="java.util.*" isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<script type="text/javascript">
		//屏蔽浏览器控制台报错（防止tab切换太快控制台显示错误信息）。
		window.onerror=function(){return true;}
	</script> 
	<script src="../miniUI/scripts/boot.js" type="text/javascript"></script>
	<link rel="stylesheet" type="text/css" href="../resource/css/report.css">
	<link rel="stylesheet" type="text/css" href="../resource/css/miniUI_dataGrid.css">
</head>
<body>
	<div id="mainCanvans">
		<div id="mainPanel">
			<div id="panelTitle">
				验证报告列表
			</div>
			<div id="dataGridCan">
				<div style="width:100%;">
			        <div class="mini-toolbar">
			            <table style="width:100%;">
			                <tr>
			                    <td style="width:100%;">
			                        <a class="mini-button" iconCls="icon-add" onclick="addRow()" plain="true" 
			                        	tooltip="添加验证报告">
			                        	新建报告
			                        </a>            
			                    </td>
			                    <td style="white-space:nowrap;">
			                    	<input id="reportType" name="reportType" class="mini-combobox" showNullItem="false" 
					                    value="2" onvaluechanged="reportChange" valueField="value" textField="name" 
					                    data='[{"value": 0, "name": "全部报告"},{"value": 1, "name": "未完成"},{"value": 2, "name": "已完成"}]'/>
					                <input id="key" class="mini-textbox" emptyText="请输入报告名称" style="width:250px;" onenter="onKeyEnter"/>   
			                        <a class="mini-button" onclick="search()" style="background:#FFF;border-color: #BBB;">
			                        	查询
			                        </a>
			                    </td>
			                </tr>
			            </table>           
			        </div>
			    </div>
			    <div id="datagrid1" class="mini-datagrid" style="width:100%;height:92%;min-height:359px;" 
			    	url="../report.do?type=findReportByCompany" pageSize="20" allowCellEdit="false" allowCellSelect="true" 
			    	multiSelect="false" idField="id" pageIndexField="pageCurrent">
			        <div property="columns">
			        	<div field="name" headerAlign="center" allowSort="false" width="160">报告名称
			                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="100" />
			            </div> 
			        	<div field="object" headerAlign="center" allowSort="false" width="120">对象
			                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="100" />
			            </div> 
						<div type="comboboxcolumn" name="propertyType" field="propertyType" width="100" headerAlign="center" 
			        		autoShowPopup="true" allowSort="false">属性
							<input property="editor" class="mini-combobox" style="width:100%;" minWidth="80" 
								valueField="value" textField="name" data="objectTypeDrop"/>
						</div>
						<div type="comboboxcolumn" name="temperatureType" field="temperatureType" width="100" headerAlign="center" 
			        		autoShowPopup="true" allowSort="false" align="center">温度
							<input property="editor" class="mini-combobox" style="width:100%;" minWidth="80" 
								valueField="value" textField="name" data="temperatureDrop"/>
						</div>
						<div type="comboboxcolumn" name="reportStatus" field="reportStatus" width="60" headerAlign="center" 
			        		autoShowPopup="true" allowSort="false" align="center">报告状态
							<input property="editor" class="mini-combobox" style="width:100%;" minWidth="60" 
								valueField="value" textField="name" data="reportStatusDrop"/>
						</div>
			            <div name="operate" headerAlign="center" allowSort="false" width="135">操作
			                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="135" />
			            </div> 
			        </div>
			    </div>
			</div>
		</div>
	</div>
	<div id="childCanvans">
	</div>
	<script type="text/javascript">
		//企业列表点击查看时传过来的id
		var enterpriseId=${param.enterpriseId};
	</script>
	<script type="text/javascript" src="../resource/script/report.js"></script>
</body>
</html>