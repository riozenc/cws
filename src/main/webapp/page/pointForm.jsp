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
        #form1{
            line-height: 30px;
        }
        #deadline{
            width: 100%;
        }
	</style>
</head>
<body>
	<form id="form1" method="post">
        <input name="id" class="mini-hidden" /><!--编辑的该记录主键-->
        <input name="enterpriseId" class="mini-hidden" /><!--编辑的该记录所在的企业主键-->
        <div style="padding-left:6px;padding-top:15px;">
            <table cellspacing="0" cellpadding="5px">
                <tr>
                    <td class="colTitle">编号：</td>
                    <td class="colData">    
                        <input name="no" class="mini-textbox" />
                    </td>
                </tr>
                <tr>
                    <td class="colTitle">SN号：</td>
                    <td class="colData">    
                        <input name="snNo" class="mini-textbox" />
                    </td>
                </tr>
                <tr>
                    <td class="colTitle">型号：</td>
                    <td class="colData">    
                        <input name="types" class="mini-textbox" />
                    </td>
                </tr>
                <tr>
                    <td class="colTitle">校验单位：</td>
                    <td class="colData">    
                        <input name="checkUnit" class="mini-textbox" />
                    </td>
                </tr>
                <tr>
                    <td class="colTitle">证书编号：</td>
                    <td class="colData">    
                        <input name="certificateNo" class="mini-textbox" />
                    </td>
                </tr>  
                <tr>
                    <td class="colTitle">有效期：</td>
                    <td class="colData">    
                        <input id="deadline" name="validDate" class="mini-datepicker" />
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
            //将日期对象转化为字符串
            o.validDate=mini.formatDate(o.validDate,"yyyy-MM-dd");
            //根据id是否存在判断是修改还是新增操作。
            var url;
            if(o.id){
                url="../point.do?type=update";
            }else{
                url="../point.do?type=insert";
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
                	if(success.status==200){
                        CloseWindow(true);
                        alert(success.msg);
                    }else if(success.status==300){
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