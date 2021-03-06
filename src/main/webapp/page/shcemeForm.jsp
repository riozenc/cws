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
        #schemeType,#SNType{
            width: 100%;
        }
	</style>
</head>
<body>
	<form id="form1" method="post">
        <input name="id" class="mini-hidden" /><!--编辑的该记录主键-->
        <input name="verifyId" class="mini-hidden" /><!--编辑的该记录所在的验证对象及布点方案主键-->
        <input name="enterpriseId" class="mini-hidden" /><!--编辑的该记录所在的企业主键-->
        <input name="verifyType" class="mini-hidden" /><!--编辑的该记录所在的对象类型-->
        <div style="padding-left:6px;padding-top:10px;">
            <table cellspacing="0" cellpadding="5px">
                <tr>
                    <td class="colTitle">位置：</td>
                    <td class="colData">    
                        <input name="pointPosition" class="mini-textbox"  emptyText="位置不能为空" required="true" />
                    </td>
                </tr>
                <tr>
                    <td class="colTitle">布点：</td>
                    <td class="colData">    
                        <input id="schemeType" name="pointType" class="mini-combobox" showNullItem="false" required="true" 
                        popupHeight="146" emptyText="布点不能为空" valueField="value" textField="name" 
                        url="../resource/data/schemeDrop.txt" />
                    </td>
                </tr>
                <tr>
                    <td class="colTitle">SN号：</td>
                    <td class="colData">
<!--                     <input name="pointSn" class="mini-textbox"   required="true" readonly="readonly" /> -->
                        <input id="SNType" name="pointSn" class="mini-combobox" showNullItem="false" required="true" 
                        popupHeight="112" emptyText="SN不能为空" valueField="value" textField="name"/> 
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
          	//加载sn下拉
            var enterpriseId=$("input[name='enterpriseId']").val();
            var verifyType=$("input[name='verifyType']").val();
            var verifyId=$("input[name='verifyId']").val();
            var snDrop = mini.get("SNType");
            
            //snDrop.load("../resource/data/SNDrop.txt?enterpriseId="+enterpriseId+"&verifyType="+verifyType+"&verifyId="+verifyId);
            
            var o = form.getData();
            //根据id是否存在判断是修改还是新增操作。
            if(o.id){
            	//snDrop.load("3");
            }else{
            	snDrop.load("../point.do?type=findPointByCompanyToDrop&enterpriseId="+enterpriseId+"&verifyType="+verifyType+"&verifyId="+verifyId+"&status=1");
            	$("#SNType").removeAttr("disabled");
            }
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
                url="../verifyPoint.do?type=update";
            }else{
                url="../verifyPoint.do?type=insert";
            }
            form.validate();
            if (form.isValid() == false) return;
            $.ajax({
                url: url,
				type: 'post',
                data: o,
                dataType : 'json',
                cache: false,
                success: function (success) {
                	if(success.statusCode==200){
                        CloseWindow(true);
                        alert(success.message);
                    }else if(success.statusCode==300){
                        mini.alert(success.message);
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