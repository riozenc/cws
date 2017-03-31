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
		table{
			table-layout:fixed;
			border-collapse:collapse;
		}
		td{
			border:1px solid #BBB;
			text-align: left;
			vertical-align: middle;
			font-family: "微软雅黑";
		}
		.colTitle{
			width:60px;
		}
		.colData{
			width:250px;
		}
		.mini-textbox{
			width: 100%;
		}
		.mini-textarea{
			width: 100%;
		}
	</style>
</head>
<body>
	<form id="form1" method="post">
        <input name="id" class="mini-hidden" />
        <div style="padding-left:6px;padding-top:10px;">
            <table cellspacing="0" cellpadding="5px">
                <tr>
                    <td class="colTitle">编号：</td>
                    <td class="colData">    
                        <input name="number" class="mini-textbox"/>
                    </td>
                </tr>
                <tr>
                    <td class="colTitle">职责名称：</td>
                    <td class="colData">    
                        <input name="name" class="mini-textbox"/>
                    </td>
                </tr>
                <tr>
                    <td class="colTitle">备注：</td>
	                <td class="colData">    
	                    <input name="remark" class="mini-textarea"/>
	                </td>
                </tr>          
            </table>
        </div>
        <div style="text-align:center;padding:10px;">               
            <a class="mini-button" onclick="onOk" style="width:60px;margin-right:20px;">确定</a>       
            <a class="mini-button" onclick="onCancel" style="width:60px;">取消</a>       
        </div>        
    </form>
	<script type="text/javascript">
		mini.parse();
        var form = new mini.Form("form1");
        //载入数据
        function setData(data){
            form.setData(data);
        }
		//确定
		function onOk(e) {
            SaveData();
        }
        //取消
        function onCancel(e) {
            CloseWindow(false);
        }
        //保存数据
        function SaveData() {
            var o = form.getData(); 
            form.validate();
            if (form.isValid() == false) return;
            var json = mini.encode([o]);
            $.ajax({
                url: "",
				type: 'post',
                data: { data: json },
                cache: false,
                success: function (text) {
                	alert("请指定后台地址");
                    CloseWindow(true);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    alert(jqXHR.responseText);
                    CloseWindow(true);
                }
            });
        }
        //关闭窗口
        function CloseWindow(action) {
        	return window.CloseOwnerWindow(action);      
        }
	</script>
</body>
</html>