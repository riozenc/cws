<%@ page language="java" import="java.util.*" isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<script src="../miniUI/scripts/boot.js" type="text/javascript"></script>
	<style type="text/css">
		body{
			padding: 0;
			margin: 0;
			overflow: hidden;
		}
		#canvans{
			margin-top: 10px;
			margin-left: 5px;
			margin-bottom: 5px;
		}
		#tipCanvans{
			height: 40px;
			margin-bottom: 10px;
		}
		#tipIcon{
			float: left;
			width: 40px;
			height: 40px;
			margin-left: 20px;
			margin-right: 10px;
			background-image: url(../resource/img/tipIcon.png);
			background-size: 100%;
			background-repeat: no-repeat;
		}
		#tipInfo{
			float: left;
			height: 40px;
			line-height: 38px;
			font-family: "微软雅黑";
		}
	</style>
</head>
<body>
	<div id="canvans">
		<div id="tipCanvans">
			<div id="tipIcon"></div>
			<div id="tipInfo">确认执行该操作？</div>
		</div>
		<div style="text-align:center;padding:10px;">               
            <a class="mini-button" onclick="onOk" style="width:60px;margin-right:20px;">确定</a>       
            <a class="mini-button" onclick="onCancel" style="width:60px;">取消</a>       
        </div> 
	</div>
	<script type="text/javascript">
		mini.parse();
		function setData(data){
			if(data.tip!=undefined){
				document.getElementById("tipInfo").innerText=data.tip;
			}
		}
		//确定
		function onOk(e) {
            CloseWindow(true);
        }
        //取消
        function onCancel(e) {
            CloseWindow(false);
        }
        function CloseWindow(action) {
        	return window.CloseOwnerWindow(action);        
        }
	</script>
</body>
</html>