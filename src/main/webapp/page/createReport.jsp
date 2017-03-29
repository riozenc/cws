<%@ page language="java" import="java.util.*" isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<script src="../miniUI/scripts/boot.js" type="text/javascript"></script>
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
				<span class="flowStep" id="step6">6.预览并下载</span>
			</div>
			<div id="pageContext">
				<form id="reportDataForm" method="post">
					<div id="context1">
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
									<input name="versionNo" class="mini-textbox context1_input" />
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
									<input name="verifySite" class="mini-textbox context1_input" />
								</td>
							</tr>
							<tr>
								<td class="formRowName">验证对象：</td>
								<td>
									<input name="verifyObject" class="mini-textbox context1_input" />
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
									<input name="verifyNature" class="mini-textbox context1_input" />
								</td>
							</tr>
						</table>
						<div class="stepButton" id="context1_next">下一步</div>
					</div>
					<div id="context2">
						<table id="context2_table" cellspacing="0" cellpadding="5px">
							<tr>
								<td colspan="2">
									<input name="companyNameLeft" class="mini-textbox context2_input" required="true"
									emptyText="请输入公司名称(必填)"/>
								</td>
								<td colspan="2">
									<input name="companyNameRight" class="mini-textbox context2_input" required="true"
									emptyText="请输入公司名称(必填)"/>
								</td>
							</tr>
							<tr>
								<th>姓名</th>
								<th>职务</th>
								<th>姓名</th>
								<th>职务</th>
							</tr>
							<tr>
								<td>
									<input name="qualityMan" class="mini-textbox context2_input" required="true"
									emptyText="请输入姓名(必填)"/>
								</td>
								<td>质量管理员</td>
								<td rowspan="2">
									<input name="verifyMan" class="mini-textbox context2_input" required="true"
									emptyText="请输入姓名(必填)"/>
								</td>
								<td>验证设计专员</td>
							</tr>
							<tr>
								<td>
									<input name="storeMan" class="mini-textbox context2_input" required="true"
									emptyText="请输入姓名(必填)"/>
								</td>
								<td>保管员</td>
								<td>验证实施专员</td>
							</tr>
							<tr>
								<td>
									<input name="shippingManager" class="mini-textbox context2_input" required="true"
									emptyText="请输入姓名(必填)"/>
								</td>
								<td>储运部经理</td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td>
									<input name="qualityManager" class="mini-textbox context2_input" required="true"
									emptyText="请输入姓名(必填)"/>
								</td>
								<td>质管部经理</td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td>
									<input name="qualityVP" class="mini-textbox context2_input" required="true"
									emptyText="请输入姓名(必填)"/>
								</td>
								<td>质量副总</td>
								<td></td>
								<td></td>
							</tr>
						</table>
						<div class="stepButton" id="context2_pre">上一步</div>
						<div class="stepButton" id="context2_next">下一步</div>
					</div>
					<div id="context3">
						<table cellpadding="5px">
							<tr>
								<td class="formRowName" id="incubatorNameTitle"></td>
								<td class="context3Value">
									<input name="incubatorName" class="mini-textbox context3_input" />
								</td>
							</tr>
							<tr>
								<td class="formRowName">验证实施：</td>
								<td class="context3Value">
									<input name="verifyImplement" class="mini-textbox context3_input" />
								</td>
							</tr>
							<tr>
								<td class="formRowName">验证设备提供公司：</td>
								<td class="context3Value">
									<input name="companyOfEquipment" class="mini-textbox context3_input" />
								</td>
							</tr>
							<tr>
								<td class="formRowName" id="incubatorParamsTitle"></td>
								<td class="context3Value">
									<table id="incubatorParams" cellspacing="0" cellpadding="2px">
										<tr>
											<td>品牌及型号</td>
											<td>
												<input name="incubatorBrand" class="mini-textbox" required="true"
													emptyText="品牌及型号(必填)"/>
											</td>
										</tr>
										<tr>
											<td>外部尺寸</td>
											<td>
												<input name="incubatorOutside" class="mini-textbox" required="true"
													emptyText="单位mm(必填)"/>
											</td>
										</tr>
										<tr>
											<td>内部尺寸</td>
											<td>
												<input name="incubatorInside" class="mini-textbox" required="true"
													emptyText="单位mm(必填)"/>
											</td>
										</tr>
										<tr>
											<td>重量</td>
											<td>
												<input name="incubatorWeight" class="mini-textbox" required="true"
													emptyText="单位kg(必填)"/>
											</td>
										</tr>
										<tr>
											<td>壁厚</td>
											<td>
												<input name="incubatorWallThickness" class="mini-textbox" required="true"
													emptyText="单位mm(必填)"/>
											</td>
										</tr>
										<tr>
											<td>外部材料</td>
											<td>
												<input name="incubatorOutMaterial" class="mini-textbox" required="true"
													emptyText="PP/ABS(必填)"/>
											</td>
										</tr>
										<tr>
											<td>内部材料</td>
											<td>
												<input name="incubatorInMaterial" class="mini-textbox" required="true"
													emptyText="无毒PU(必填)"/>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td class="formRowName">蓄冷剂品牌型号：</td>
								<td class="context3Value">
									<input id="coldBrand" name="coldBrand" class="mini-textbox" />
									<span class="cellInnerTitle">数量:</span>
									<input id="coldQuantity" name="coldQuantity" class="mini-textbox" />
								</td>
							</tr>
							<tr>
								<td class="formRowName">监控系统探头数量：</td>
								<td class="context3Value">
									<input id="monitorQuantity" name="monitorQuantity" class="mini-textbox" />
									<span class="cellInnerTitle">厂家:</span>
									<input id="monitorManu" name="monitorManu" class="mini-textbox" />
								</td>
							</tr>
							<tr>
								<td class="formRowName">验证对象温度控制范围：</td>
								<td class="context3Value">
									<input id="duty" name="temperatureRange" class="mini-combobox context3_input" showNullItem="true"
                        				data='[{"id": "01", "text": "保温箱：2-8℃"},{"id": "02", "text": "冷库：2-8℃"},
                        					{"id": "03", "text": "阴凉库：0-20℃"},{"id": "04", "text": "常温库：常温"},
                        					{"id": "05", "text": "冷藏车：2-8℃"}]' />
								</td>
							</tr>
						</table>
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
						    	url="../resource/data/meter.txt" multiSelect="false" idField="id" showPager="false">
						        <div property="columns">
						        	<div field="number" headerAlign="center" align="center" allowSort="false" width="60">对应编号
						                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="60" />
						            </div> 
						        	<div field="model" headerAlign="center" align="center" allowSort="false" width="100">仪器型号
						                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="100" />
						            </div>
						            <div field="SN" headerAlign="center" align="center" allowSort="false" width="100">仪器SN号
						                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="100" />
						            </div>
						            <div field="verifyUnit" headerAlign="center" align="center" allowSort="false" width="150">校验单位
						                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="150" />
						            </div> 
						            <div name="operate" headerAlign="center" allowSort="false" width="80">操作
						                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="70" />
						            </div> 
						        </div>
						    </div>
					    </div>
					    <table id="context4_bottomTable" cellpadding="5px">
				    		<tr>
				    			<td class="formRowName">温度监测系统箱体外部探头：</td>
				    			<td>
				    				<div name="outsideProbe" class="mini-radiobuttonlist" repeatLayout="table"
										data='[{"id": 1, "text": "有"},{"id": 0, "text": "无"}]'>
									</div>
				    			</td>
				    		</tr>
				    		<tr>
				    			<td class="formRowName">温度监测系统箱体内部探头：</td>
				    			<td>
				    				<div name="insideProbe" class="mini-radiobuttonlist" repeatLayout="table"
										data='[{"id": 1, "text": "有"},{"id": 0, "text": "无"}]'>
									</div>
				    			</td>
				    		</tr>
				    		<tr>
				    			<td class="formRowName">温度测量点：</td>
				    			<td>
				    				<input name="temperaturePoint" class="mini-textbox measurePoint"/>
				    				<span>处</span>
				    			</td>
				    		</tr>
				    		<tr>
				    			<td class="formRowName">环境测点：</td>
				    			<td>
				    				<input name="environmentPoint" class="mini-textbox measurePoint"/>
				    				<span>处</span>
				    			</td>
				    		</tr>
					    </table>
						<div class="stepButton" id="context4_pre">上一步</div>
						<div class="stepButton" id="configDone">配置完成</div>
					</div>
					<div id="context5">
						<div class="context5Can" id="context5_top">
							<div class="context5Left">
								<div id="context5Left1_top">
									<div id="context5Left1_envir">外部环境：</div>
									<div id="outsideEnvironment">
										<input id="environmentTemp" name="environmentTemperature" class="mini-textbox" />
									</div>
								</div>
								<div id="context5Left1_descrip">描述：</div>
								<table id="context5Left1_table" cellspacing="0" cellpadding="5px">
									<thead>
										<tr>
											<th>环境温度测点位置</th>
											<th>箱体前侧</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>环境测点温度最大值</td>
											<td>
												<input name="temperatureMax" class="mini-textbox environmentTemp" />
											</td>
										</tr>
										<tr>
											<td>环境测点温度最小值</td>
											<td>
												<input name="temperatureMin" class="mini-textbox environmentTemp" />
											</td>
										</tr>
										<tr>
											<td>环境测点温度平均值</td>
											<td>
												<input name="temperatureAvg" class="mini-textbox environmentTemp" />
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="context5Right">
								<div class="context5Right_top">
									<input id="chartTop" class="mini-combobox" showNullItem="false" value="1" onvaluechanged="chartChangeTop"
                        				data='[{"id": 1, "text": "环境温度曲线图1"},{"id": 2, "text": "环境温度曲线图2"}]'/>
                        			<div id="delIconTop" class="delIcon"></div>
								</div>
								<div id="imgCanvansTop" class="imgCanvans">
									<div id="uploadImgTop" class="uploadImg"></div>
								</div>
							</div>
						</div>
						<div class="context5Can" id="context5_middle">
							<div class="context5Left">
								<div id="context5Left2_title">最长保温时限：</div>
								<div id="context5Left2_time">
									<input id="warmTime" name="maxWarmTime" class="mini-textbox" />
								</div>
							</div>
							<div class="context5Right">
								<div class="context5Right_top">
									<input id="chartMid" class="mini-combobox" showNullItem="false" value="1" onvaluechanged="chartChangeMiddle"
                        				data='[{"id": 1, "text": "环境温度曲线图3"}]'/>
                        			<div id="delIconMid" class="delIcon"></div>
								</div>
								<div id="imgCanvansMiddle" class="imgCanvans">
									<div id="uploadImgMiddle" class="uploadImg"></div>
								</div>
							</div>
						</div>
						<div class="context5Can" id="context5_bottom">
							<div class="context5Left">
								<div id="context5Left3_title">分析说明：</div>
								<div>
									<textarea id="desc" name="desc" class="mini-textarea"></textarea>
								</div>
							</div>
							<div class="context5Right">
								<div class="context5Right_top">
									<input id="chartBot" class="mini-combobox" showNullItem="false" value="1" onvaluechanged="chartChangeBottom"
                        				data='[{"id": 1, "text": "环境温度曲线图4"},{"id": 2, "text": "环境温度曲线图5"}]'/>
                        			<div id="delIconBot" class="delIcon"></div>
								</div>
								<div id="imgCanvansBottom" class="imgCanvans">
									<div id="uploadImgBottom" class="uploadImg"></div>
								</div>
							</div>
						</div>
						<div></div>
						<div class="stepButton" id="context5_pre">上一步</div>
						<div class="stepButton" id="download">预览并下载</div>
					</div>
				</form>
				<!--上传图片-->
				<form id="imgForm" method="post" enctype="multipart/form-data" >
					<input id="uploadButton" type="file" name="Fdata" accept="image/*" />
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		//企业列表点击查看时传过来的id
		var enterpriseId=${param.enterpriseId};
		//验证报告管理点击查看时传过来的该条记录id
		var recordId=${param.recordId};
		//该条记录的属性
		var propertyType=${param.propertyType};
	</script>
	<script type="text/javascript" src="../resource/script/createReport.js"></script>
</body>
</html>