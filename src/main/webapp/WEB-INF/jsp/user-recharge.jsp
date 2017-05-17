<%--
  Created by IntelliJ IDEA.
  User: zong
  Date: 2017/4/22
  Time: 9:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="/js/kindeditor-4.1.10/themes/default/default.css" type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<form id="rechargeForm"  method="post">
    <table>
        <tr>
            <th>电话号码</th>
            <th><input class="easyui-validatebox" type="text" name="phoneNum" data-options="required:true" /></th>
        </tr>


        <tr>
            <th>充值金额</th>
            <th><input class="easyui-validatebox" type="text" name="money" data-options="required:true" /></th>
        </tr>
        <tr>
            <th><a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">提交</a></th><th></th>
        </tr>
    </table>
</form>
<script>

    function submitForm(){
        $.post("recharge",$("#rechargeForm").serialize(), function(_data){
            if(_data.status == 200){
              alert(_data.data);
                return ;
            }
        });
    }


</script>