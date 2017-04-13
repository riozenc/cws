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
	<link rel="stylesheet" type="text/css" href="../resource/css/enterpriseDetail.css">
	<link rel="stylesheet" type="text/css" href="../resource/css/miniUI_dataGrid.css">
</head>
<body>
	<div id="mainPageCan">
		<div id="topSpan"><!--头部间距--></div>
		<div id="statisticsNum">
			<div class="statisticsNumCan" id="equipmentNumCan">
				<div class="statisticsInfo" id="equipmentInfo">
					<div class="statisticsTitle">设备总数</div>
					<div class="statisticsNum" id="equipmentNum"><!--30--></div>
				</div>
				<div class="statisticsIcon" id="equipmentIcon"></div>
			</div>
			<div class="statisticsNumCan" id="objectNumCan">
				<div class="statisticsInfo" id="objectInfo">
					<div class="statisticsTitle">验证对象</div>
					<div class="statisticsNum" id="objectNum"><!--15--></div>
				</div>
				<div class="statisticsIcon" id="objectIcon"></div>
			</div>
			<div class="statisticsNumCan" id="reportNumCan">
				<div class="statisticsInfo" id="reportInfo">
					<div class="statisticsTitle">验证报告</div>
					<div class="statisticsNum" id="reportNum"><!--24--></div>
				</div>
				<div class="statisticsIcon" id="reportIcon"></div>
			</div>
		</div>
		<div id="enterprisePanel">
			<div id="enterpriseInfo">
				<table id="enterpriseTable">
					<thead>
						<tr>
							<th id="tableHeader" colspan="2"><!--山东丽斯盾有限公司--></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="tableColName">联系人：</td>
							<td id="cantact"></td>
						</tr>
						<tr>
							<td class="tableColName">联系电话：</td>
							<td id="telephone"></td>
						</tr>
						<tr>
							<td class="tableColName">地址：</td>
							<td id="address"></td>
						</tr>
					</tbody>
				</table>
			</div>
			<!--<div id="editButton">
				<div id="edit_button_icon"></div>
 				<div id="edit_button_info">
 					编辑资料
 				</div>
			</div>-->
		</div>
		<div id="jobPanel">
			<div id="panelTitle">
				验证人员职务表
			</div>
			<div id="dataGridCan">
				<div style="width:100%;">
			        <div class="mini-toolbar">
			            <table style="width:100%;">
			                <tr>
			                    <td style="width:100%;">
			                        <a class="mini-button" iconCls="icon-add" onclick="addRow()" plain="true" 
			                        	tooltip="添加人员">
			                        	添加
			                        </a>            
			                    </td>
			                    <td style="white-space:nowrap;">
			                       <!-- <input id="key1" class="mini-textbox" emptyText="请输入人员姓名" 
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
			    <div id="datagrid1" class="mini-datagrid" style="width:100%;height:216px;" pageIndexField="pageCurrent"
			    	url="../resource/data/staffJob.txt" pageSize="20" allowCellEdit="false" allowCellSelect="true" multiSelect="false" idField="id">
			        <div property="columns">          
			            <div field="name" width="100" headerAlign="center" allowSort="false">姓名
			                <input property="editor" class="mini-textbox" style="width:200px;" minWidth="100" />
			            </div>
			            <div type="comboboxcolumn" name="job" field="postName" width="100" headerAlign="center" autoShowPopup="true">
							职务
							<input property="editor" class="mini-combobox" style="width:100%;" valueField="value" 
								textField="name" data="jobDrop"/>
						</div>
			            <div field="companyName" width="300" headerAlign="center" allowSort="false">公司名称
			                <input property="editor" class="mini-textarea" style="width:200px;" minWidth="200" 
			                	minHeight="50"/>
			            </div>
			            <div name="operate" headerAlign="center" allowSort="false" width="60">操作
			                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="60" />
			            </div> 
			        </div>
			    </div>
			</div>
		</div>
		<div id="dutyCanvans">
			<div id="dutyLeft">
				<div id="dutyPanel">
					<div id="panelTitle">
						验证人员职责表（客户公司）
					</div>
					<div class="companyName" id="companyNameLeft"></div>
					<div id="dataGridCan">
						<div style="width:100%;">
					        <div class="mini-toolbar">
					            <table style="width:100%;">
					                <tr>
					                    <td style="width:100%;">
					                        <a class="mini-button" iconCls="icon-add" onclick="addRowDutyLeft()" plain="true" 
					                        	tooltip="添加人员">
					                        	添加
					                        </a>            
					                    </td>
					                    <td style="white-space:nowrap;">
					                       <!-- <input id="key2" class="mini-textbox" emptyText="请输入人员姓名" 
					                        	style="width:250px;" onenter="onKeyEnterDutyLeft"/>   
					                        <a class="mini-button" onclick="searchDutyLeft()" 
					                        	style="background:#FFF;border-color: #BBB;">
					                        	查询
					                        </a>-->
					                    </td>
					                </tr>
					            </table>           
					        </div>
					    </div>
					    <div id="datagrid2" class="mini-datagrid" style="width:100%;height:218px;" pageIndexField="pageCurrent"
					    	url="../resource/data/staffDutyLeft.txt" pageSize="20" allowCellEdit="false" allowCellSelect="true" multiSelect="false" idField="id">
					        <div property="columns">          
					            <div field="name" width="80" headerAlign="center" allowSort="false">姓名
					                <input property="editor" class="mini-textbox" style="width:200px;" minWidth="80" />
					            </div>
					            <div type="comboboxcolumn" name="duty" field="dutiesId" width="150" headerAlign="center" 
					            	autoShowPopup="true">验证职责
									<input property="editor" class="mini-combobox" style="width:100%;" 
										valueField="value" textField="name" data="dutyDrop"/>
								</div>
					            <div name="operate" headerAlign="center" allowSort="false" width="60">操作
					                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="60" />
					            </div> 
					        </div>
					    </div>
					</div>
				</div>
			</div>
			<div id="dutyRight">
				<div id="dutyPanel">
					<div id="panelTitle">
						验证人员职责表（验证公司）
					</div>
					<div class="companyName" id="companyNameRight"></div>
					<div id="dataGridCan">
						<div style="width:100%;">
					        <div class="mini-toolbar">
					            <table style="width:100%;">
					                <tr>
					                    <td style="width:100%;">
					                        <a class="mini-button" iconCls="icon-add" onclick="addRowDutyRight()" plain="true" 
					                        	tooltip="添加人员">
					                        	添加
					                        </a>            
					                    </td>
					                    <td style="white-space:nowrap;">
					                       <!-- <input id="key3" class="mini-textbox" emptyText="请输入人员姓名" 
					                        	style="width:250px;" onenter="onKeyEnterDutyRight"/>   
					                        <a class="mini-button" onclick="searchDutyRight()" 
					                        	style="background:#FFF;border-color: #BBB;">
					                        	查询
					                        </a>-->
					                    </td>
					                </tr>
					            </table>           
					        </div>
					    </div>
					    <div id="datagrid3" class="mini-datagrid" style="width:100%;height:218px;" pageIndexField="pageCurrent"
					    	url="../resource/data/staffDutyRight.txt" pageSize="20" allowCellEdit="false" allowCellSelect="true" multiSelect="false" idField="id">
					        <div property="columns">          
					            <div field="name" width="80" headerAlign="center" allowSort="false">姓名
					                <input property="editor" class="mini-textbox" style="width:200px;" minWidth="80" />
					            </div>
					            <div type="comboboxcolumn" name="duty" field="dutiesId" width="150" headerAlign="center" 
					            	autoShowPopup="true">验证职责
									<input property="editor" class="mini-combobox" style="width:100%;" valueField="value" 
										textField="name" data="dutyDrop"/>
								</div>
					            <div name="operate" headerAlign="center" allowSort="false" width="60">操作
					                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="60" />
					            </div> 
					        </div>
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
	<script type="text/javascript" src="../resource/script/enterpriseDetail.js"></script>
</body>
</html>