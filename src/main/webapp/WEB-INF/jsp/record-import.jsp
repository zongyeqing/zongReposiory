<%--
  Created by IntelliJ IDEA.
  User: zong
  Date: 2017/5/11
  Time: 0:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="/js/kindeditor-4.1.10/themes/default/default.css" type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form id="excelForm">
    <div class="easyui-panel" title="导入使用记录" style="width:400px;padding:30px 70px 50px 70px">

        <div style="margin-bottom:20px">
            <div>excel文件:</div>
            <input class="easyui-filebox" name="excel" data-options="prompt:'选择文件'" style="width:100%">
        </div>

        <div>
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submit()" style="width:100%">上传</a>
        </div>
    </div>
</form>
</body>
</html>
<script type="text/javascript">
    function submit(){
        $.post("/record/import",$("#itemeEditForm").serialize(), function(data){
            if(data.status == 200){
                $.messager.alert('提示',data.msg);
            }
            else if(data.status==400){
                $.messager.alert('提示',data.msg);
            }
        });
    }
</script>

