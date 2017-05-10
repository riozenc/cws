<%@ page language="java" import="java.util.*" isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<script src="../miniUI/scripts/boot.js" type="text/javascript"></script>
	<script src="../echarts/echarts.js" type="text/javascript"></script>
	<link rel="stylesheet" type="text/css" href="../resource/css/createReport.css">
	<link rel="stylesheet" type="text/css" href="../resource/css/miniUI_dataGrid.css">
</head>
<body>
	<div id="mainCanvans">
		<div id="mainPanel">
			<div id="panelTop">
				<div id="panelTitle">
					生成报告
				</div>
				<div id="returnButton">
					<div id="returnButtonIcon"></div>
					<div id="returnButtonInfo">
						返回报告列表
					</div>
				</div>
			</div>
			<div id="flowList">
				<span class="flowStep" id="step1">1.报告封面编辑</span>
				<span class="flowStep" id="step2">2.验证参与人员确认</span>
				<span class="flowStep" id="step3">3.验证对象描述及再确认</span>
				<span class="flowStep" id="step4">4.验证仪表再确认、测点布置</span>
				<span class="flowStep" id="step5">5.数据获取</span>
			</div>
			<div id="pageContext">
				<div id="context1">
					<form id="reportDataForm1" method="post">
						<table cellpadding="5px">
							<tr>
								<td class="formRowName">报告编号：</td>
								<td>
									<input name="reportNo" class="mini-textbox context1_input" readonly="readonly"/>
								</td>
							</tr>
							<tr>
								<td class="formRowName">版本编号：</td>
								<td>
									<input name="reportVersion" class="mini-textbox context1_input" />
								</td>
							</tr>
							<tr>
								<td class="formRowName">报告题目：</td>
								<td>
									<input name="reportTitle" class="mini-textbox context1_input" />
								</td>
							</tr>
							<tr>
								<td class="formRowName">验证地点：</td>
								<td>
									<input name="verifyPlace" class="mini-textbox context1_input" />
								</td>
							</tr>
							<tr>
								<td class="formRowName">验证对象：</td>
								<td>
									<input id="verifyObject" name="verifyObject" class="mini-combobox context1_input" readonly="true"
									textField="name" valueField="value" />
								</td>
							</tr>
							<tr>
								<td class="formRowName">验证日期：</td>
								<td>
									<input name="verifyTime" class="mini-datepicker context1_input" />
								</td>
							</tr>
							<tr>
								<td class="formRowName">验证性质：</td>
								<td>
									<input name="verifyAttr" class="mini-textbox context1_input" />
								</td>
							</tr>
						</table>
					</form>
					<div class="stepButton" id="context1_next">下一步</div>
				</div>
				<div id="context2">
					<div class="context2_canvas" id="context2_leftCanvas">
						<div class="companyName" id="companyNameLeft"></div>
						<div id="dataGridCan">
						    <div id="datagridJob" class="mini-datagrid" style="width:100%;height:300px;" pageIndexField="pageCurrent"
						    	url="../personnelPost.do?type=findPersonnelPostByCompany" pageSize="20" allowCellEdit="false" allowCellSelect="true" 
						    	multiSelect="false" idField="id">
						        <div property="columns">          
						            <div field="name" width="80" headerAlign="center" allowSort="false">姓名
						                <input property="editor" class="mini-textbox" style="width:200px;" minWidth="80" />
						            </div>
						            <div type="comboboxcolumn" name="job" field="postId" width="150" headerAlign="center" 
						            	autoShowPopup="true">职务
										<input property="editor" class="mini-combobox" style="width:100%;" valueField="value" 
											textField="name" data="jobDrop"/>
									</div>
						        </div>
						    </div>
						</div>
					</div>
					<div class="context2_canvas" id="context2_rightCanvas">
						<div class="companyName" id="companyNameRight"></div>
						<div id="dataGridCan">
						    <div id="datagridDuty" class="mini-datagrid" style="width:100%;height:300px;" pageIndexField="pageCurrent"
						    	url="../personnelDuties.do?type=findPersonnelDutiesByCompany&enterpriseId=0" pageSize="20" allowCellEdit="false" allowCellSelect="true" multiSelect="false" idField="id">
						        <div property="columns">          
						            <div field="name" width="80" headerAlign="center" allowSort="false">姓名
						                <input property="editor" class="mini-textbox" style="width:200px;" minWidth="80" />
						            </div>
						            <div type="comboboxcolumn" name="duty" field="dutiesId" width="150" headerAlign="center" 
						            	autoShowPopup="true">职责
										<input property="editor" class="mini-combobox" style="width:100%;" valueField="value" 
											textField="name" data="dutyDrop"/>
									</div>
						        </div>
						    </div>
						</div>
					</div>
					<div class="stepButton" id="context2_pre">上一步</div>
					<div class="stepButton" id="context2_next">下一步</div>
				</div>
				<div id="context3">
					<div id="context3_lkCanvas">
						<form id="reportDataForm2" method="post">
							<table class="schemeTable" id="lkTabel" cellspacing="0" cellpadding="2px">
								<thead>
									<tr>
										<th class="schemeTh" colspan="6">
											<div id="tableDescription">冷库基本信息</div>
										</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="baseInfo_cellTitle">冷库名称</td>
										<td class="baseInfo_cellValue" colspan="5">
											<input name="name" class="mini-textbox context3_input" allowInput="false" />
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">冷库规格</td>
										<td class="baseInfo_cellValue" colspan="5">
											<input name="types" class="mini-textbox context3_input" allowInput="false" />
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">体积</td>
										<td class="baseInfo_cellValue" colspan="5">
											<input name="volume" class="mini-textbox context3_input" allowInput="false" />
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">面积</td>
										<td class="baseInfo_cellValue" colspan="5">
											<input name="area" class="mini-textbox context3_input" allowInput="false" />
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">风机</td>
										<td class="baseInfo_cellValue_d">
											<input name="fanNum" class="mini-textbox context3_input" allowInput="false" />
										</td>
										<td class="baseInfo_cellTitle">主风机</td>
										<td class="baseInfo_cellValue">
											<input name="fanMainNum" class="mini-textbox context3_input" allowInput="false" />
										</td>
										<td class="baseInfo_cellTitle">备用风机</td>
										<td class="baseInfo_cellValue">
											<input name="fanSpareNum" class="mini-textbox context3_input" allowInput="false" />
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">出入口</td>
										<td class="baseInfo_cellValue" colspan="5">
											<input name="entranceNum" class="mini-textbox context3_input" allowInput="false" />
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">货架数量</td>
										<td class="baseInfo_cellValue" colspan="5">
											<input name="goodsShelves" class="mini-textbox context3_input" allowInput="false" />
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">监控系统探头</td>
										<td class="baseInfo_cellValue_d">
											<input name="probeNum" class="mini-textbox context3_input" allowInput="false" />
										</td>
										<td class="baseInfo_cellTitle">厂家</td>
										<td class="baseInfo_cellValue" colspan="3">
											<input name="manufactor" class="mini-textbox context3_input" allowInput="false" />
										</td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
					<div id="context3_lccCanvas">
						<form id="reportDataForm3" method="post">
							<table class="schemeTable" id="lccTabel" cellspacing="0" cellpadding="2px">
								<thead>
									<tr>
										<th class="schemeTh" colspan="4">
											<div id="tableDescription">冷藏车基本信息</div>
										</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="baseInfo_cellTitle">冷藏车牌号</td>
										<td class="baseInfo_cellValue" colspan="3">
											<input name="name" class="mini-textbox context3_input" allowInput="false" />
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">冷库规格</td>
										<td class="baseInfo_cellValue" colspan="3">
											<input name="types" class="mini-textbox context3_input" allowInput="false" />
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">体积</td>
										<td class="baseInfo_cellValue" colspan="3">
											<input name="volume" class="mini-textbox context3_input" allowInput="false" />
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">风机</td>
										<td class="baseInfo_cellValue" colspan="3">
											<input name="fanNum" class="mini-textbox context3_input" allowInput="false" />
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">出入口</td>
										<td class="baseInfo_cellValue_d">
											<input name="entranceNum" class="mini-textbox context3_input" allowInput="false" />
										</td>
										<td class="baseInfo_cellTitle">门帘</td>
										<td class="baseInfo_cellValue">
											<input name="curtain" class="mini-textbox context3_input" allowInput="false" />
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">监控系统探头</td>
										<td class="baseInfo_cellValue_d">
											<input name="probeNum" class="mini-textbox context3_input" allowInput="false" />
										</td>
										<td class="baseInfo_cellTitle">厂家</td>
										<td class="baseInfo_cellValue">
											<input name="manufactor" class="mini-textbox context3_input" allowInput="false" />
										</td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
					<div id="context3_bwxCanvas">
						<form id="reportDataForm4" method="post">
							<table class="schemeTable" id="bwxTabel" cellspacing="0" cellpadding="2px">
								<thead>
									<tr>
										<th class="schemeTh" colspan="6">
											<div id="tableDescription">保温箱基本信息</div>
										</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="baseInfo_cellTitle">名称</td>
										<td class="baseInfo_cellValue" colspan="5">
											<input name="name" class="mini-textbox context3_input" allowInput="false" />
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">品牌</td>
										<td class="baseInfo_cellValue" colspan="2">
											<input name="brand" class="mini-textbox context3_input" allowInput="false" />
										</td>
										<td class="baseInfo_cellTitle">型号</td>
										<td class="baseInfo_cellValue" colspan="2">
											<input name="model" class="mini-textbox context3_input" allowInput="false" />
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">容积</td>
										<td class="baseInfo_cellValue" colspan="5">
											<input name="volume" class="mini-textbox context3_input" allowInput="false" />
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">生产日期</td>
										<td class="baseInfo_cellValue" colspan="5">
											<input name="productionDate" class="mini-textbox context3_input" allowInput="false" />
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">外部尺寸</td>
										<td class="baseInfo_cellValue" colspan="2">
											<input name="outsideSize" class="mini-textbox context3_input" allowInput="false" />
										</td>
										<td class="baseInfo_cellTitle">内部尺寸</td>
										<td class="baseInfo_cellValue" colspan="2">
											<input name="insideSize" class="mini-textbox context3_input" allowInput="false" />
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">重量</td>
										<td class="baseInfo_cellValue" colspan="2">
											<input name="weight" class="mini-textbox context3_input" allowInput="false" />
										</td>
										<td class="baseInfo_cellTitle">壁厚</td>
										<td class="baseInfo_cellValue" colspan="2">
											<input name="wallThickness" class="mini-textbox context3_input" allowInput="false" />
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">外部材料</td>
										<td class="baseInfo_cellValue" colspan="2">
											<input name="outsideMaterial" class="mini-textbox context3_input" allowInput="false" />
										</td>
										<td class="baseInfo_cellTitle">内部材料</td>
										<td class="baseInfo_cellValue" colspan="2">
											<input name="insideMaterial" class="mini-textbox context3_input" allowInput="false" />
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">蓄冷剂品牌</td>
										<td class="baseInfo_cellValue_d">
											<input name="coldLogo" class="mini-textbox context3_input" allowInput="false" />
										</td>
										<td class="baseInfo_cellTitle">型号</td>
										<td class="baseInfo_cellValue">
											<input name="coldModel" class="mini-textbox context3_input" allowInput="false" />
										</td>
										<td class="baseInfo_cellTitle">数量</td>
										<td class="baseInfo_cellValue">
											<input name="coldQuantity" class="mini-textbox context3_input" allowInput="false" />
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">监控系统探头</td>
										<td class="baseInfo_cellValue_d">
											<input name="monitor" class="mini-textbox context3_input" allowInput="false" />
										</td>
										<td class="baseInfo_cellTitle">厂家</td>
										<td class="baseInfo_cellValue" colspan="3">
											<input name="manufacturer" class="mini-textbox context3_input" allowInput="false" />
										</td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
					<!--  <div id="context3_verifyObjectCanvas">
						<div id="context3_verifyObjectName">验证对象温度控制范围：</div>
						<div id="context3_verifyObjectValue">
							<input id="temperature" name="temperatureRange" class="mini-combobox context3_input" showNullItem="true"
									textField="name" valueField="value" 
                    				data='[{"value": "01", "name": "保温箱：2-8℃"},{"value": "02", "name": "冷库：2-8℃"},
                    					{"value": "03", "name": "阴凉库：0-20℃"},{"value": "04", "name": "常温库：常温"},
                    					{"value": "05", "name": "冷藏车：2-8℃"}]' />
						</div>
					</div>-->
					<br/>
					<div class="stepButton" id="context3_pre">上一步</div>
					<div class="stepButton" id="context3_next">下一步</div>
				</div>
				<div id="context4">
					<div id="context4_topTable">
						<div style="width:80%;text-align: left;">
					        <div class="mini-toolbar">
					            <table style="width:100%;">
					                <tr>
					                    <td style="width:100%;">
					                        <a class="mini-button" iconCls="icon-add" onclick="addRow()" plain="true" 
					                        	tooltip="添加仪表">
					                        	新增仪表
					                        </a>            
					                    </td>
					                    <td id="meterNum" style="white-space:nowrap;padding-right: 5px;font-size: 12px;">
					                    </td>
					                </tr>
					            </table>           
					        </div>
					    </div>
					    <div id="datagrid1" class="mini-datagrid" style="width:80%;" allowCellEdit="false" allowCellSelect="true" 
					    	url="../point.do?type=findPointByReport" multiSelect="false" idField="id" showPager="false">
					        <div property="columns">
					        	<div field="no" headerAlign="center" align="center" allowSort="false" width="60">对应编号
					                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="60" />
					            </div> 
					        	<div field="types" headerAlign="center" align="center" allowSort="false" width="100">仪器型号
					                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="100" />
					            </div>
					            <div field="snNo" headerAlign="center" align="center" allowSort="false" width="100">仪器SN号
					                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="100" />
					            </div>
					            <div field="checkUnit" headerAlign="center" align="center" allowSort="false" width="150">校验单位
					                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="150" />
					            </div> 
					            <div name="operate" headerAlign="center" allowSort="false" width="80">操作
					                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="70" />
					            </div> 
					        </div>
					    </div>
				    </div>
				    <!--  <table id="context4_bottomTable" cellpadding="5px">
			    		<tr>
			    			<td class="formRowName">温度测量点：</td>
			    			<td>
			    				<input name="temperaturePoint" class="mini-textbox measurePoint" allowInput="false"/>
			    				<span>处</span>
			    			</td>
			    		</tr>
			    		<tr>
			    			<td class="formRowName">环境测点：</td>
			    			<td>
			    				<input name="environmentPoint" class="mini-textbox measurePoint" allowInput="false"/>
			    				<span>处</span>
			    			</td>
			    		</tr>
				    </table>-->
					<div class="stepButton" id="context4_pre">上一步</div>
					<div class="stepButton" id="context4_next">下一步</div>
				</div>
				<div id="context5">
					<div id="dropContent">
						<input id="pDropData" class="mini-combobox" showNullItem="false" value="0" onvaluechanged="dropChanged"
							textField="name" valueField="value" name="pointType" 
							url="../resource/data/schemeDropAll.txt" />
						<input id="mDropData" class="mini-combobox" showNullItem="false" value="0" onvaluechanged="dropChanged"
							textField="name" valueField="value" name="measureType" 
	                        data='[{"value": 0, "name": "全部"},{"value": 1, "name": "断电数据"},{"value": 2, "name": "开门数据"},{"value": 3, "name": "环境数据"}]'/>
	                    <div id="deleteImg">删除上一张截图</div>
	                    <div id="saveImg">保存截图</div>
					</div>
					<div id="context5_canvas">
						<div class="context5_imgCanvas" id="lkImgCanvas">
							<div class="echartsImgCanvans" id="lkImg1">
								<input type="text" name="lkImg1" />
								<input type="text" name="lkMeasureType1" />
								<input type="text" name="lkPointType1" />
							</div>
							<div class="echartsImgCanvans" id="lkImg2">
								<input type="text" name="lkImg2" />
								<input type="text" name="lkMeasureType2" />
								<input type="text" name="lkPointType2" />
							</div>
							<div class="echartsImgCanvans" id="lkImg3">
								<input type="text" name="lkImg3" />
								<input type="text" name="lkMeasureType3" />
								<input type="text" name="lkPointType3" />
							</div>
							<div class="echartsImgCanvans" id="lkImg4">
								<input type="text" name="lkImg4" />
								<input type="text" name="lkMeasureType4" />
								<input type="text" name="lkPointType4" />
							</div>
							<div class="echartsImgCanvans" id="lkImg5">
								<input type="text" name="lkImg5" />
								<input type="text" name="lkMeasureType5" />
								<input type="text" name="lkPointType5" />
							</div>
						</div>
						<div class="context5_imgCanvas" id="lccImgCanvas">
							<div class="echartsImgCanvans" id="lccImg1">
								<input type="text" name="lccImg1" />
								<input type="text" name="lccMeasureType1" />
								<input type="text" name="lccPointType1" />
							</div>
							<div class="echartsImgCanvans" id="lccImg2">
								<input type="text" name="lccImg2" />
								<input type="text" name="lccMeasureType2" />
								<input type="text" name="lccPointType2" />
							</div>
							<div class="echartsImgCanvans" id="lccImg3">
								<input type="text" name="lccImg3" />
								<input type="text" name="lccMeasureType3" />
								<input type="text" name="lccPointType3" />
							</div>
							<div class="echartsImgCanvans" id="lccImg4">
								<input type="text" name="lccImg4" />
								<input type="text" name="lccMeasureType4" />
								<input type="text" name="lccPointType4" />
							</div>
							<div class="echartsImgCanvans" id="lccImg5">
								<input type="text" name="lccImg5" />
								<input type="text" name="lccMeasureType5" />
								<input type="text" name="lccPointType5" />
							</div>
							<div class="echartsImgCanvans" id="lccImg6">
								<input type="text" name="lccImg6" />
								<input type="text" name="lccMeasureType6" />
								<input type="text" name="lccPointType6" />
							</div>
						</div>
						<div class="context5_imgCanvas" id="bwxImgCanvas">
							<div class="echartsImgCanvans" id="bwxImg1">
								<input type="text" name="bwxImg1" />
								<input type="text" name="bwxMeasureType1" />
								<input type="text" name="bwxPointType1" />
							</div>
							<div class="echartsImgCanvans" id="bwxImg2">
								<input type="text" name="bwxImg2" />
								<input type="text" name="bwxMeasureType2" />
								<input type="text" name="bwxPointType2" />
							</div>
							<div class="echartsImgCanvans" id="bwxImg3">
								<input type="text" name="bwxImg3" />
								<input type="text" name="bwxMeasureType3" />
								<input type="text" name="bwxPointType3" />
							</div>
							<div class="echartsImgCanvans" id="bwxImg4">
								<input type="text" name="bwxImg4" />
								<input type="text" name="bwxMeasureType4" />
								<input type="text" name="bwxPointType4" />
							</div>
						</div>
						<div id="echartCanvas">
							<div id="chartData"></div>
						</div>
					</div>
					<br/>
					<div class="stepButton" id="context5_pre">上一步</div>
					<div class="stepButton" id="download">生成报告</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		//企业列表点击查看时传过来的id
		var enterpriseId=${param.enterpriseId};
		//验证报告管理点击查看时传过来的该条记录id
		var recordId=${param.reportNo};
		
		//验证报告ID
		//该条记录的属性
 		var reportType=${param.reportType};
		//获得项目路径
		var contextPath="${pageContext.request.contextPath}";
	</script>
	<script type="text/javascript" src="../resource/script/createReport.js"></script>
</body>
</html>