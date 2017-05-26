<%@ page language="java" import="java.util.*" isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<script src="../miniUI/scripts/boot.js" type="text/javascript"></script>
	<link rel="stylesheet" type="text/css" href="../resource/css/equipmentWin.css">
	<link rel="stylesheet" type="text/css" href="../resource/css/miniUI_dataGrid.css">
</head>
<body>
	<div id="mainCanvans">

		<div id="pointPanel">
			<div id="panelTitle">
				设备测点
			</div>
			    <div id="datagridPoint" class="mini-datagrid" style="width:100%;height:83%;min-height:148px;" 
			    	url="../point.do?type=getOverduePoint" pageSize="20" allowCellEdit="false" allowCellSelect="true" 
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
	<script type="text/javascript">
		//企业列表点击查看时传过来的id
		//var enterpriseId=${param.enterpriseId};
	</script>
	<script type="text/javascript" src="../resource/script/equipmentWin.js"></script>
</body>
</html>