<%@ page language="java" import="java.util.*" isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<script src="../miniUI/scripts/boot.js" type="text/javascript"></script>
	<link rel="stylesheet" type="text/css" href="../resource/css/jobManage.css">
	<link rel="stylesheet" type="text/css" href="../resource/css/miniUI_dataGrid.css">
</head>
<body>
	<div id="mainCanvans">
		<div id="mainPanel">
			<div id="panelTitle">
				职务列表
			</div>
			<div id="dataGridCan">
				<div style="width:100%;">
			        <div class="mini-toolbar">
			            <table style="width:100%;">
			                <tr>
			                    <td style="width:100%;">
			                        <a class="mini-button" iconCls="icon-add" onclick="addRow()" plain="true" 
			                        	tooltip="添加职务">
			                        	添加
			                        </a>            
			                    </td>
			                    <td style="white-space:nowrap;">
			                        <!--<input id="key" class="mini-textbox" emptyText="请输入职务名称" 
			                        	style="width:250px;" onenter="onKeyEnter"/>   
			                        <a class="mini-button" onclick="search()" 
			                        	style="background:#FFF;border-color: #BBB;">
			                        	查询
			                        </a>-->
			                    </td>
			                </tr>
			            </table>           
			        </div>
			    </div>
			    <div id="datagrid1" class="mini-datagrid" style="width:100%;height:92%;min-height:359px;" 
			    	url="../resource/data/jobManage.txt" pageSize="20" allowCellEdit="false" allowCellSelect="true" 
			    		multiSelect="false" idField="id">
			        <div property="columns">
			            <div name="No" field="number" headerAlign="center" allowSort="true" width="80">编号
			                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="80" />
			            </div>           
			            <div field="name" width="300" headerAlign="center" allowSort="false">职务名称
			                <input property="editor" class="mini-textarea" style="width:200px;" minWidth="200" 
			                	minHeight="50"/>
			            </div>
			            <div name="operate" headerAlign="center" allowSort="false" width="80">操作
			                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="80" />
			            </div> 
			        </div>
			    </div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="../resource/script/jobManage.js"></script>
</body>
</html>