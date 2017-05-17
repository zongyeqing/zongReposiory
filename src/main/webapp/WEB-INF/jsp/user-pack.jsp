<%--
  Created by IntelliJ IDEA.
  User: zong
  Date: 2017/4/22
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<div>
电话号码<input id="ss" value="" class="easyui-searchbox" data-options="searcher:doSearch,prompt:'请输入电话号码'"/>
</div>
    <tr>
        <td>电话号码:</td>
        <td><input id="phonenum" class="easyui-textbox" type="text" name="phoneNum" data-options="required:true" style="width: 280px;"></input></td>
        <td><a href="#" id="queryButton" class="easyui-linkbutton" plain="true" url="/pack/findByUser" iconCls="icon-search" onclick="query()">查询</a></td>
    </tr>

<table class="easyui-datagrid" id="itemList" title="商品列表"
       data-options="singleSelect:false,collapsible:true,pagination:true,url:'',method:'get',pageSize:30,toolbar:toolbar">
    <thead>
    <tr>
        <th data-options="field:'ck',checkbox:true"></th>
        <th data-options="field:'id',width:60">商品ID</th>
        <th data-options="field:'conversation',width:60">通话时间</th>
        <th data-options="field:'message',width:60">信息</th>
        <th data-options="field:'dateTraffic',width:60">流量</th>
        <th data-options="field:'unitConversation',width:60">通话单价</th>
        <th data-options="field:'unitMessage',width:60">短信单价</th>
        <th data-options="field:'unitDateTraffic',width:60">流量单价</th>
        <th data-options="field:'packType',width:60">套餐类型</th>
        <th data-options="field:'price',width:60">套餐价格</th>
        <th data-options="field:'description',width:200">商品描述</th>
        <th data-options="field:'title',width:100">标题</th>
        <%-- <th data-options="field:'price',width:70,align:'right',formatter:TAOTAO.formatPrice">价格</th>
         <th data-options="field:'status',width:60,align:'center',formatter:TAOTAO.formatItemStatus">状态</th>
         <th data-options="field:'created',width:130,align:'center',formatter:TAOTAO.formatDateTime">创建日期</th>
         <th data-options="field:'updated',width:130,align:'center',formatter:TAOTAO.formatDateTime">更新日期</th>--%>
    </tr>
    </thead>
</table>
</body>
</html>
<script>
function doSearch(value,phone){ //用户输入用户名,点击搜素,触发此函数  
	        $("#itemList").datagrid({ 
	            iconCls:'icon-ok',  
	            
	            pageSize:30,  
	             
	            nowrap:true,  
	            striped:true,  
	            collapsible:true,  
	            toolbar:"toolbar",  
	            url:'/pack/findByUser?phoneNum='+value, //触发此action,带上参数searcValue  
	            loadMsg:'数据加载中......',  
	           // fitColumns:true,//允许表格自动缩放,以适应父容器  
	             
	            remoteSort:false,  
	          
	            pagination : true,  
	            rownumbers : true  
	        })  
	
	    }  
    $("#queryButton").click(function(){

        $("#itemList").datagrid('reload',{phonenum:$("#phonenum").val()});
    });

</script>
