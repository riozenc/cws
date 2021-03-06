<%@ page language="java" import="java.util.*" isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<script src="../miniUI/scripts/boot.js" type="text/javascript"></script>
	<script type="text/javascript" src="../resource/script/miniui_register.js"></script>
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
			width:90px;
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
        #verifyObject{
            width: 100%;
        }
        #reportType{
            width: 100%;
        }
        #temperature{
        	width: 100%;
        }
        #isFullType{
            width: 100%;
        }
	</style>
</head>
<body>
	<form id="form1" method="post">
        <input name="reportNo" class="mini-hidden" /><!--编辑的该记录主键-->
        <input name="enterpriseId" class="mini-hidden" /><!--编辑的该记录所在的企业主键-->
        <div style="padding-left:6px;padding-top:10px;">
            <table cellspacing="0" cellpadding="5px">
                <tr>
                    <td class="colTitle">报告名称：</td>
                    <td class="colData">    
                        <input name="reportName" class="mini-textbox" />
                    </td>
                </tr>
                <tr>
                    <td class="colTitle">验证对象：</td>
                    <td class="colData">    
                        <input id="verifyObject" name="verifyObject" class="mini-combobox" showNullItem="false"
                        popupHeight="138" valueField="value" textField="name" />
                    </td>
                </tr>
                <tr>
                    <td class="colTitle">验证对象属性：</td>
                    <td class="colData">    
                        <input id="reportType" name="reportType" class="mini-combobox" showNullItem="false"
                        popupHeight="138" valueField="value" textField="name" />
                    </td>
                </tr>
                <tr>
                    <td class="colTitle">温度：</td>
                    <td class="colData">    
                        <input id="temperature" name="temperature" class="mini-combobox" showNullItem="false"
                        valueField="value" textField="name" 
                        data='[{"value": "极高温验证", "name": "极高温验证"},{"value": "极低温验证", "name": "极低温验证"}]' />
                    </td>
                </tr>
                <tr>
                    <td class="colTitle">是否满载：</td>
                    <td class="colData">    
                        <input id="isFullType" name="isFull" class="mini-combobox" showNullItem="false"
                        valueField="value" textField="name" 
                        data='[{"value": "1", "name": "是"},{"value": "0", "name": "否"}]' />
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
          	//加载下拉
        	var enterpriseId=$("input[name='enterpriseId']").val();
         	var verifyObject = mini.get("verifyObject");
         	verifyObject.load("../verify.do?type=getVerifyByCompanyToDrop&enterpriseId="+enterpriseId);
         	var reportType = mini.get("reportType");
//          	reportType.load("../resource/data/objectTypeDrop.txt?enterpriseId="+enterpriseId);
         	reportType.load("../commonParam.do?type=findCommonParamByType&paramType=VERIFY_TYPE");
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
            if(o.reportNo){
                url="../report.do?type=update";
            }else{
                url="../report.do?type=insert";
            }
            form.validate();
            if (form.isValid() == false) return;
            $.ajax({
                url: url,
				type: 'post',
                data: o,
                dataType : 'json',
                cache: false,
                success: function (text) {
                	alert(text.message);
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