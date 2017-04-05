<%@ page language="java" import="java.util.*" isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<script src="../miniUI/scripts/boot.js" type="text/javascript"></script>
	<!--<script src="../miniUI/fileupload/swfupload/swfupload.js" type="text/javascript"></script>-->
	<link rel="stylesheet" type="text/css" href="../resource/css/freezer.css">
	<link rel="stylesheet" type="text/css" href="../resource/css/miniUI_dataGrid.css">
</head>
<body>
	<div id="mainCanvans">
		<div id="mainPanel">
			<div id="panelTop">
				<div id="panelTitle">
					冷库
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
										<td class="baseInfo_cellTitle">冷库名称</td>
										<td class="baseInfo_cellValue" colspan="5">
											<span class="baseInfoSpan1">
												<span class="baseInfoSpan2">
													<input class="baseInfoInput" type="text" name="name" />
												</span>
											</span>
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">冷库规格</td>
										<td class="baseInfo_cellValue" colspan="5">
											<span class="baseInfoSpan1">
												<span class="baseInfoSpan2">
													<input class="baseInfoInput" type="text" name="type" />
												</span>
											</span>
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">体积</td>
										<td class="baseInfo_cellValue" colspan="5">
											<span class="baseInfoSpan1">
												<span class="baseInfoSpan2">
													<input class="baseInfoInput" type="text" name="volume" />
												</span>
											</span>
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">面积</td>
										<td class="baseInfo_cellValue" colspan="5">
											<span class="baseInfoSpan1">
												<span class="baseInfoSpan2">
													<input class="baseInfoInput" type="text" name="area" />
												</span>
											</span>
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">风机</td>
										<td class="baseInfo_cellValue_d">
											<span class="baseInfoSpan1">
												<span class="baseInfoSpan2">
													<input class="baseInfoInput" type="text" name="fanNum" />
												</span>
											</span>
										</td>
										<td class="baseInfo_cellTitle">主风机</td>
										<td class="baseInfo_cellValue">
											<span class="baseInfoSpan1">
												<span class="baseInfoSpan2">
													<input class="baseInfoInput" type="text" name="fanMainNum" />
												</span>
											</span>
										</td>
										<td class="baseInfo_cellTitle">备用风机</td>
										<td class="baseInfo_cellValue">
											<span class="baseInfoSpan1">
												<span class="baseInfoSpan2">
													<input class="baseInfoInput" type="text" name="fanSpareNum" />
												</span>
											</span>
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">出入口</td>
										<td class="baseInfo_cellValue" colspan="5">
											<span class="baseInfoSpan1">
												<span class="baseInfoSpan2">
													<input class="baseInfoInput" type="text" name="entranceNum" />
												</span>
											</span>
										</td>
									</tr>
									<tr>
										<td class="baseInfo_cellTitle">货架数量</td>
										<td class="baseInfo_cellValue" colspan="5">
											<span class="baseInfoSpan1">
												<span class="baseInfoSpan2">
													<input class="baseInfoInput" type="text" name="goodsShelves" />
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
								</form>
							</tbody>
						</table>
					</div>
					<div id="baseInfoImg">
						<div id="uploadImg"></div>
						<!--<input id="fileupload" class="mini-fileupload" name="Fdata" limitType="*.png;*.bmp;*.jpg;*.jpeg;*.gif" 
                        	flashUrl="../miniUI/fileupload/swfupload/swfupload.swf" uploadUrl=""
    						fileselect="onpload" onuploadsuccess="onUploadSuccess" uploaderror="onuploaderror"/>-->
					</div>
					<!--上传图片-->
					<form id="imgForm" method="post" enctype="multipart/form-data" >
						<input id="uploadButton" type="file" name="Fdata" accept="image/*" />
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
					                        	value="00" url="../resource/data/schemeDropAll.txt" onvaluechanged="schemeChange"/>
					                        <a class="mini-button" iconCls="icon-add" onclick="addRow()" plain="true" 
					                        	tooltip="添加验证对象及布点方案">
					                        	添加
					                        </a>  
					                    </td>
					                </tr>
					            </table>           
					        </div>
					    </div>
					    <div id="datagrid1" class="mini-datagrid" style="width:100%;height:216px;" 
					    	url="../resource/data/layoutSchemeDetail.txt" pageSize="20" allowCellEdit="false" allowCellSelect="true" 
					    		multiSelect="false" idField="id">
					        <div property="columns">
					        	<div field="position" headerAlign="center" align="center" allowSort="true" width="80">位置
					                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="60" />
					            </div> 
					        	<div type="comboboxcolumn" name="schemeType" field="type" width="200" headerAlign="center" 
					        		autoShowPopup="true" allowSort="false">布点
									<input property="editor" class="mini-combobox" style="width:100%;" minWidth="100" 
										data="schemeDrop"/>
								</div>
					            <div field="SN" headerAlign="center" align="center" allowSort="false" width="200">SN
					                <input property="editor" class="mini-textbox" style="width:100%;" minWidth="100" />
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
	</script>
	<script type="text/javascript" src="../resource/script/freezer.js"></script>
</body>
</html>