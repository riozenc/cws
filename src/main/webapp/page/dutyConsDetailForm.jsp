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
        #duty{
            width: 100%;
        }
        #name{
            width: 100%;
        }
	</style>
</head>
<body>
	<form id="form1" method="post">
        <input name="id" class="mini-hidden" /><!--编辑的该记录主键-->
        <input name="enterpriseId" class="mini-hidden" /><!--编辑的该记录所在的企业主键-->
        <!--<input name="dutyFlag" class="mini-hidden" />用于判断是客户公司还是验证公司 1：客户，2：验证-->
        <div style="padding-left:6px;padding-top:10px;">
            <table cellspacing="0" cellpadding="5px">
                <tr>
                    <td class="colTitle">姓名：</td>
                    <td class="colData">
                        <input id="name" name="name" class="mini-combobox" showNullItem="false"
                        popupHeight="115" valueField="value" textField="name"/>
                    </td>
                </tr>
                <tr>
                    <td class="colTitle">验证职责：</td>
                    <td class="colData">    
                        <input id="duty" name="dutiesId" class="mini-combobox" showNullItem="false" required="true" 
                        popupHeight="115" emptyText="验证职责不能为空" valueField="value" textField="name"/>
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
            //加载职责和姓名下拉
            var enterpriseId=$("input[name='enterpriseId']").val();
            var dutyDrop = mini.get("duty");
//             dutyDrop.load("../resource/data/dutyDrop.txt?enterpriseId="+enterpriseId);
			dutyDrop.load("../commonParam.do?type=findCommonParamByType&paramType=DUTIES_TYPE&enterpriseId="+enterpriseId);
            var nameDrop = mini.get("name");
//             nameDrop.load("../resource/data/dutyNameDrop.txt?enterpriseId="+enterpriseId);
            nameDrop.load("../personnelPost.do?type=findPersonnelPostByCompanyToDrop&enterpriseId="+enterpriseId);
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
                url = "../personnelDuties.do?type=update";
            }else{
                url = "../personnelDuties.do?type=insert";
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