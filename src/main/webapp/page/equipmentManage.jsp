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
	<link rel="stylesheet" type="text/css" href="../resource/css/equipmentManage.css">
	<link rel="stylesheet" type="text/css" href="../resource/css/miniUI_dataGrid.css">
</head>
<body>
	<div id="mainCanvans">
		<div id="masterPanel">
			<div id="panelTitle">
				主机
			</div>
			<div id="dataGridCanMaster">
				<div style="width:100%;">
			        <div class="mini-toolbar">
			            <table style="width:100%;">
			                <tr>
			                    <td style="width:100%;">
			                        <a class="mini-button" iconCls="icon-add" onclick="addRowMaster()" plain="true" 
			                        	tooltip="添加主机">
			                        	添加主机
			                        </a>            
			                    </td>
			                    <td style="white-space:nowrap;">
			                       <!-- <input id="keyMaster" class="mini-textbox" emptyText="请输入主机SN号" 
			                        	style="width:250px;" onenter="onKeyEnterMaster"/>   
			                        <a class="mini-button" onclick="searchMaster()" 
			                        	style="background:#FFF;border-color: #BBB;">
			                        	查询
			                        </a>-->
			                    </td>
			                </tr>
			            </table>           
			        </div>
			    </div>
			    <div id="datagridMaster" class="mini-datagrid" style="width:100%;height:81%;min-height:148px;" 
			    	url="../host.do?type=findHostByCompany" pageSize="20" allowCellEdit="false" allowCellSelect="true" 
			    	multiSelect="false" idField="id" pageIndexField="pageCurrent">
			        <div property="columns">
			            <div field="name" headerAlign="center" allowSort="false" width="100">名称
			                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="80" />
			            </div>
			            <div field="types" headerAlign="center" allowSort="false" width="100">型号
			                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="80" />
			            </div>
			            <div field="snNo" headerAlign="center" allowSort="false" width="100" align="center">SN号
			                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="80" />
			            </div>
			            <div name="createDate" field="createDate" width="100" allowSort="true" dateFormat="yyyy-MM-dd" 
			            	renderer="dateRenderer" dataType="date" align="center" headerAlign="center">添加日期
                			<input property="editor" class="mini-datepicker" style="width:100%;"/>
            			</div> 
			            <div name="operate" headerAlign="center" allowSort="false" width="60">操作
			                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="60" />
			            </div> 
			        </div>
			    </div>
			</div>
		</div>
		<div id="pointPanel">
			<div id="panelTitle">
				设备测点
			</div>
			<div id="dataGridCanPoint">
				<div style="width:100%;">
			        <div class="mini-toolbar">
			            <table style="width:100%;">
			                <tr>
			                    <td style="width:100%;">
			                        <a class="mini-button" iconCls="icon-add" onclick="addRowPoint()" plain="true" 
			                        	tooltip="添加测点">
			                        	添加测点
			                        </a>            
			                    </td>
			                    <td style="white-space:nowrap;">
			                      <!--  <input id="keyPoint" class="mini-textbox" emptyText="请输入测点SN号" 
			                        	style="width:250px;" onenter="onKeyEnterPoint"/>   
			                        <a class="mini-button" onclick="searchPoint()" 
			                        	style="background:#FFF;border-color: #BBB;">
			                        	查询
			                        </a>-->
			                    </td>
			                </tr>
			            </table>           
			        </div>
			    </div>
			    <div id="datagridPoint" class="mini-datagrid" style="width:100%;height:83%;min-height:148px;" 
			    	url="../point.do?type=findPointByCompany" pageSize="20" allowCellEdit="false" allowCellSelect="true" 
			    	multiSelect="false" idField="id" pageIndexField="pageCurrent">
			        <div property="columns">
			        	<div field="no" headerAlign="center" allowSort="false" width="80">编号
			                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="80" />
			            </div>
			            <div field="snNo" headerAlign="center" allowSort="false" width="100" align="center">SN号
			                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="80" />
			            </div>
			            <div field="types" headerAlign="center" allowSort="false" width="100">型号
			                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="80" />
			            </div>
			            <div field="checkUnit" headerAlign="center" allowSort="false" width="120">校验单位
			                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="80" />
			            </div>
			            <div field="certificateNo" headerAlign="center" align="center" allowSort="false" width="100">证书编号
			                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="80" />
			            </div>
			            <div name="validDate" field="validDate" width="80" allowSort="true" dateFormat="yyyy-MM-dd" 
			            	renderer="dateRenderer" dataType="date" align="center" headerAlign="center">有效期
                			<input property="editor" class="mini-datepicker" style="width:100%;"/>
            			</div> 
			            <div name="operate" headerAlign="center" allowSort="false" width="60">操作
			                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="60" />
			            </div> 
			        </div>
			    </div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		//企业列表点击查看时传过来的id
		var enterpriseId=${param.enterpriseId};
	</script>
	<script type="text/javascript" src="../resource/script/equipmentManage.js"></script>
</body>
</html>