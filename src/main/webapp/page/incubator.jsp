<%@ page language="java" import="java.util.*" isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<script src="../miniUI/scripts/boot.js" type="text/javascript"></script>
	<link rel="stylesheet" type="text/css" href="../resource/css/incubator.css">
	<link rel="stylesheet" type="text/css" href="../resource/css/miniUI_dataGrid.css">
	<script type="text/javascript" src="../resource/script/miniui_register.js"></script>
</head>
<body>
	<div id="mainCanvans">
		<div id="mainPanel">
			<div id="panelTop">
				<div id="panelTitle">
					保温箱
				</div>
				<div id="returnButton">
					<div id="returnButtonIcon"></div>
					<div id="returnButtonInfo">
						返回验证对象及布点方案
					</div>
				</div>
			</div>
			<div id="panelContext">
				<div id="baseInfo">
					<div id="baseInfoData">
						<table class="schemeTable" cellspacing="0" cellpadding="3px">
							<thead>
								<tr>
									<th class="schemeTh" colspan="6">
										<div id="tableDescription">基本信息</div>
										<div id="refreshImg">重新上传图片</div>
										<div id="saveBaseInfo">保存</div>
									</th>
								</tr>
							</thead>
							<tbody>
								<form id="baseInfoForm" method="post">
									<tr>
										<td class="baseInfo_cellTitle">名称</td>
										<td class="baseInfo_cellValue" colspan="5">
											<span class="baseInfoSpan1">
												<span class="baseInfoSpan2">
													<input class="baseInfoInput" type="text" name="name" />
												</span>
											</span>
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">品牌</td>
										<td class="baseInfo_cellValue" colspan="2">
											<span class="baseInfoSpan1">
												<span class="baseInfoSpan2">
													<input class="baseInfoInput" type="text" name="brand" />
												</span>
											</span>
										</td>
										<td class="baseInfo_cellTitle">型号</td>
										<td class="baseInfo_cellValue" colspan="2">
											<span class="baseInfoSpan1">
												<span class="baseInfoSpan2">
													<input class="baseInfoInput" type="text" name="types" />
												</span>
											</span>
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">容积</td>
										<td class="baseInfo_cellValue" colspan="5">
											<span class="baseInfoSpan1">
												<span class="baseInfoSpan2">
													<input class="baseInfoInput" type="text" name="volume" />
												</span>
											</span>
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">生产日期</td>
										<td class="baseInfo_cellValue" colspan="5">
											<!--<span class="baseInfoSpan1">
												<span class="baseInfoSpan2">
													<input class="baseInfoInput" type="text" name="productionDate" />
												</span>
											</span>-->
											<input id="productionDate" name="date" class="mini-datepicker" />
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">外部尺寸</td>
										<td class="baseInfo_cellValue" colspan="2">
											<span class="baseInfoSpan1">
												<span class="baseInfoSpan2">
													<input class="baseInfoInput" type="text" name="outSize" />
												</span>
											</span>
										</td>
										<td class="baseInfo_cellTitle">内部尺寸</td>
										<td class="baseInfo_cellValue" colspan="2">
											<span class="baseInfoSpan1">
												<span class="baseInfoSpan2">
													<input class="baseInfoInput" type="text" name="inSize" />
												</span>
											</span>
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">重量</td>
										<td class="baseInfo_cellValue" colspan="2">
											<span class="baseInfoSpan1">
												<span class="baseInfoSpan2">
													<input class="baseInfoInput" type="text" name="weight" />
												</span>
											</span>
										</td>
										<td class="baseInfo_cellTitle">壁厚</td>
										<td class="baseInfo_cellValue" colspan="2">
											<span class="baseInfoSpan1">
												<span class="baseInfoSpan2">
													<input class="baseInfoInput" type="text" name="thickness" />
												</span>
											</span>
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">外部材料</td>
										<td class="baseInfo_cellValue" colspan="2">
											<span class="baseInfoSpan1">
												<span class="baseInfoSpan2">
													<input class="baseInfoInput" type="text" name="outMaterial" />
												</span>
											</span>
										</td>
										<td class="baseInfo_cellTitle">内部材料</td>
										<td class="baseInfo_cellValue" colspan="2">
											<span class="baseInfoSpan1">
												<span class="baseInfoSpan2">
													<input class="baseInfoInput" type="text" name="inMaterial" />
												</span>
											</span>
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">蓄冷剂品牌</td>
										<td class="baseInfo_cellValue_d">
											<span class="baseInfoSpan1">
												<span class="baseInfoSpan2">
													<input class="baseInfoInput" type="text" name="cryogenBrand" />
												</span>
											</span>
										</td>
										<td class="baseInfo_cellTitle">型号</td>
										<td class="baseInfo_cellValue">
											<span class="baseInfoSpan1">
												<span class="baseInfoSpan2">
													<input class="baseInfoInput" type="text" name="cryogenTypes" />
												</span>
											</span>
										</td>
										<td class="baseInfo_cellTitle">数量</td>
										<td class="baseInfo_cellValue">
											<span class="baseInfoSpan1">
												<span class="baseInfoSpan2">
													<input class="baseInfoInput" type="text" name="cryogenCount" />
												</span>
											</span>
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">监控系统探头</td>
										<td class="baseInfo_cellValue_d">
											<span class="baseInfoSpan1">
												<span class="baseInfoSpan2">
													<input class="baseInfoInput" type="text" name="probeNum" />
												</span>
											</span>
										</td>
										<td class="baseInfo_cellTitle">厂家</td>
										<td class="baseInfo_cellValue" colspan="3">
											<span class="baseInfoSpan1">
												<span class="baseInfoSpan2">
													<input class="baseInfoInput" type="text" name="manufactor" />
												</span>
											</span>
										</td>
									</tr>
									<input type="hidden" name="disMap" />
									<input type="hidden" name="imgChanged" value="0" />
								</form>
							</tbody>
						</table>
					</div>
					<div id="baseInfoImg">
						<div id="uploadImg"></div>
					</div>
					<!--上传图片-->
					<form id="imgForm" method="post" enctype="multipart/form-data" >
						<input id="uploadButton" type="file" name="Fdata" 
						accept="image/bmp,image/png,image/jpg,image/jpeg,image/gif" />
					</form>
					<div class="clearfloat"></div><!--清除浮动，使外层div高度自适应内层-->
				</div>
				<div id="layoutScheme">
					<div id="layoutSchemeCollect">
						<div id="collectData">
							<table class="schemeTable" cellspacing="0" cellpadding="3px">
								<thead>
									<tr>
										<th class="schemeTh" colspan="2">布点方案</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="collect_cellTitle">均匀性测量点</td>
										<td id="jyxPoint" class="collect_cellValue"></td>
									</tr>
									<tr>
										<td class="collect_cellTitle">风机测量点</td>
										<td id="fjPoint" class="collect_cellValue"></td>
									</tr>
									<tr>
										<td class="collect_cellTitle">出入口测量点</td>
										<td id="crkPoint" class="collect_cellValue"></td>
									</tr>
									<tr>
										<td class="collect_cellTitle">死角测量点</td>
										<td id="sjPoint" class="collect_cellValue"></td>
									</tr>
									<tr>
										<td class="collect_cellTitle">货架测量点</td>
										<td id="hjPoint" class="collect_cellValue"></td>
									</tr>
									<tr>
										<td class="collect_cellTitle">温湿度监控系统探头测点</td>
										<td id="ttPoint" class="collect_cellValue"></td>
									</tr>
									<tr>
										<td class="collect_cellTitle">环境测点</td>
										<td id="huanjPoint" class="collect_cellValue"></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="clearfloat"></div><!--清除浮动，使外层div高度自适应内层-->
					</div>
					<div id="layoutSchemeDetail">
						<div style="width:100%;">
					        <div class="mini-toolbar">
					            <table style="width:100%;">
					                <tr>
					                    <td style="width:100%;font-family:'微软雅黑';font-weight:bold;padding-left:6px;">
					                    	具体布点方式   
					                    </td>
					                    <td style="white-space:nowrap;">
					                    	<input id="pointType" name="pointType" class="mini-combobox" showNullItem="false" 
					                        	value="0" valueField="value" textField="name" onvaluechanged="schemeChange" 
					                        	url="../resource/data/schemeDropAll.txt"/>
					                        <a class="mini-button" iconCls="icon-add" onclick="addRow()" plain="true" 
					                        	tooltip="添加验证对象及布点方案">
					                        	添加
					                        </a>  
					                    </td>
					                </tr>
					            </table>           
					        </div>
					    </div>
					    
					    
					    <div id="datagrid1" class="mini-datagrid" style="width:100%;height:216px;" pageIndexField="pageCurrent"
					    	url="../verifyPoint.do?type=findVerifyPointByVerify" pageSize="20" allowCellEdit="false" allowCellSelect="true" 
					    	multiSelect="false" idField="id">
					        <div property="columns">
					        	<div field="pointPosition" headerAlign="center" align="center" allowSort="true" width="80">位置
					                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="60" />
					            </div> 
					        	<div type="comboboxcolumn" name="schemeType" field="pointType" width="200" headerAlign="center" 
					        		autoShowPopup="true" allowSort="false">布点
									<input property="editor" class="mini-combobox" style="width:100%;" minWidth="100" 
										valueField="value" textField="name" data="schemeDrop"/>
								</div>
					            <div type="comboboxcolumn" name="SNType" field="pointSn" width="200" headerAlign="center" 
					        		autoShowPopup="true" allowSort="false" align="center">SN
									<input property="editor" class="mini-combobox" style="width:100%;" minWidth="100" 
										valueField="value" textField="name" data="SNDrop"/>
								</div> 
					            <div name="operate" headerAlign="center" allowSort="false" width="80">操作
					                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="80" />
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
		//验证对象及布点方案点击查看时传过来的id
		var verifyId=${param.schemeId};
		var verifyType=${param.verifyType};
		//获得项目路径
		var contextPath="${pageContext.request.contextPath}";
	</script>
	<script type="text/javascript" src="../resource/script/incubator.js"></script>
</body>
</html>