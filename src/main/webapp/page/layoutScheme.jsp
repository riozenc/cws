<%@ page language="java" import="java.util.*" isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<script src="../miniUI/scripts/boot.js" type="text/javascript"></script>
	<link rel="stylesheet" type="text/css" href="../resource/css/layoutScheme.css">
	<link rel="stylesheet" type="text/css" href="../resource/css/miniUI_dataGrid.css">
</head>
<body>
	<div id="mainCanvans">
		<div id="mainPanel">
			<div id="panelTitle">
				验证对象及布点方案
			</div>
			<div id="dataGridCan">
				<div style="width:100%;">
			        <div class="mini-toolbar">
			            <table style="width:100%;">
			                <tr>
			                    <td style="width:100%;">
			                        <a class="mini-button" iconCls="icon-add" onclick="addRow()" plain="true" 
			                        	tooltip="添加验证对象及布点方案">
			                        	添加
			                        </a>            
			                    </td>
			                    <td style="white-space:nowrap;">
			                        <!--<input id="key" class="mini-textbox" emptyText="请输入验证对象名称" 
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
			    	url="../resource/data/layoutScheme.txt" pageSize="20" allowCellEdit="false" allowCellSelect="true" 
			    	multiSelect="false" idField="verifyId" pageIndexField="pageCurrent">
			        <div property="columns">
			        	<div type="comboboxcolumn" name="schemeType" field="verifyType" width="150" headerAlign="center" 
			        		autoShowPopup="true" allowSort="false">验证对象类型
							<input property="editor" class="mini-combobox" style="width:100%;" minWidth="100" 
								data="objectTypeDrop"/>
						</div>
			            <div field="verifyName" headerAlign="center" allowSort="false" width="300">验证对象名称
			                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="150" />
			            </div> 
			            <div name="operate" headerAlign="center" allowSort="false" width="80">操作
			                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="80" />
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
	<script type="text/javascript" src="../resource/script/layoutScheme.js"></script>
</body>
</html>