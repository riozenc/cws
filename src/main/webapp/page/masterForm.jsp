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
        #addDate{
            width: 100%;
        }
	</style>
</head>
<body>
	<form id="form1" method="post">
        <input name="id" class="mini-hidden" /><!--编辑的该记录主键-->
        <input name="enterpriseId" class="mini-hidden" /><!--编辑的该记录所在的企业主键-->
        <div style="padding-left:6px;padding-top:10px;">
            <table cellspacing="0" cellpadding="5px">
                <tr>
                    <td class="colTitle">名称：</td>
                    <td class="colData">    
                        <input name="name" class="mini-textbox" />
                    </td>
                </tr>
                <tr>
                    <td class="colTitle">型号：</td>
                    <td class="colData">    
                        <input name="type" class="mini-textbox" />
                    </td>
                </tr>
                <tr>
                    <td class="colTitle">SN号：</td>
                    <td class="colData">    
                        <input name="snNo" class="mini-textbox" />
                    </td>
                </tr>
                <tr>
                    <td class="colTitle">添加日期：</td>
                    <td class="colData">    
                        <input id="addDate" name="createDate" class="mini-datepicker" />
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
        <div style="text-align:center;padding:10px;margin-top:120px;">               
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
            //根据id是否存在判断是修改还是新增操作。
            var url;
            if(o.id){
                url = "../host.do?type=update";
            }else{
                url = "../host.do?type=insert";
            }
            form.validate();
            if (form.isValid() == false) return;
            $.ajax({
                url: url,
				type: 'post',
                data: o,
                cache: false,
                success: function (success) {
                	if(success==200){
                        CloseWindow(true);
                        alert(text.msg);
                    }else if(success==300){
                        mini.alert("SN号已经存在！");
                    }
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