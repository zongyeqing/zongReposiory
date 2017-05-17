<%--
  Created by IntelliJ IDEA.
  User: zong
  Date: 2017/4/23
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div>
按月份查找<input id="ss" value="" class="easyui-searchbox" data-options="searcher:doSearch,prompt:'请输入月份'"/>
</div>
<!-- <div id="tb">  
                    <input id="ss" class="easyui-searchbox"  
                        searcher="doSearch" prompt="请输入用户名"  
                        style="width: 130px; vertical-align: middle;"></input>   
                </div>  -->

<table class="easyui-datagrid" id="itemList" title="月记录列表"
       data-options="singleSelect:false,collapsible:true,pagination:true,url:'/fare/summary',method:'get',pageSize:30,toolbar:toolbar">
    <thead>
    
    
	
    <tr>
        <!-- <th data-options="field:'ck',checkbox:true"></th> -->
        <th data-options="field:'userPhone',width:100">号码</th>
        <th data-options="field:'conversation',width:100">通话时长</th>
        <th data-options="field:'message',width:100">短信</th>
        <th data-options="field:'dateTraffic',width:100">流量</th>
        <th data-options="field:'conversationPrice',width:100">通话费用</th>
        <th data-options="field:'messagePrice',width:100">短信费用</th>
        <th data-options="field:'dataTrafficPrice',width:100">流量费用</th>
        <th data-options="field:'startTime',width:120">开始时间</th>
        <th data-options="field:'endTime',width:120">截止时间</th>
        <th data-options="field:'sumFare',width:100">总费用</th>
        <%-- <th data-options="field:'price',width:70,align:'right',formatter:TAOTAO.formatPrice">价格</th>
         <th data-options="field:'status',width:60,align:'center',formatter:TAOTAO.formatItemStatus">状态</th>
         <th data-options="field:'created',width:130,align:'center',formatter:TAOTAO.formatDateTime">创建日期</th>
         <th data-options="field:'updated',width:130,align:'center',formatter:TAOTAO.formatDateTime">更新日期</th>--%>
    </tr>
    </thead>
</table>

<div id="itemEditWindow" class="easyui-window" title="编辑商品" data-options="modal:true,closed:true,iconCls:'icon-save',href:'/pack-edit'" style="width:80%;height:80%;padding:10px;">
</div>
 <script>

    function getSelectionsIds(){
        var itemList = $("#itemList");
        var sels = itemList.datagrid("getSelections");
        var ids = [];
        for(var i in sels){
            ids.push(sels[i].id);
        }
        ids = ids.join(",");
        return ids;
    }
    
    function doSearch(value,month){ //用户输入用户名,点击搜素,触发此函数  
    	        $("#itemList").datagrid({ 
    	            iconCls:'icon-ok',  
    	            
    	            pageSize:30,  
    	             
    	            nowrap:true,  
    	            striped:true,  
    	            collapsible:true,  
    	            toolbar:"toolbar",  
    	            url:'/fare/summary?month='+value, //触发此action,带上参数searcValue  
    	            loadMsg:'数据加载中......',  
    	           // fitColumns:true,//允许表格自动缩放,以适应父容器  
    	             
    	            remoteSort:false,  
    	          
    	            pagination : true,  
    	            rownumbers : true  
    	        })  
    	
    	    }  

    var toolbar = [/* {
        text:'新增',
        iconCls:'icon-add',
        handler:function(){
            $(".tree-title:contains('新增套餐')").parent().click();
        }
    },{
        text:'编辑',
        iconCls:'icon-edit',
        handler:function(){
            var ids = getSelectionsIds();
            if(ids.length == 0){
                $.messager.alert('提示','必须选择一个商品才能编辑!');
                return ;
            }
            if(ids.indexOf(',') > 1){
                $.messager.alert('提示','只能选择一个商品!');
                return ;
            }

            $("#itemEditWindow").window({
                onLoad :function(){
                    //回显数据
                    var data = $("#itemList").datagrid("getSelections")[0];
                    data.priceView = TAOTAO.formatPrice(data.price);
                    $("#itemeEditForm").form("load",data);

                    // 加载商品描述
                    $.getJSON('/pack/pack_description/'+data.id,function(_data){
                        if(_data.status == 200){
                            //UM.getEditor('itemeEditDescEditor').setContent(_data.data.itemDesc, false);
                            itemEditEditor.html(_data.data.pack);
                        }
                    });

                    //加载商品规格
                    $.getJSON('/pack/desc/'+data.id,function(_data){
                        if(_data && _data.status == 200 && _data.data && _data.data.pack){
                            $("#itemeEditForm .params").show();
                            $("#itemeEditForm [name=itemParams]").val(_data.data.id);
                            $("#itemeEditForm [name=itemParamId]").val(_data.data.conversation);

                            //回显商品规格
                            var paramData = JSON.parse(_data.data.paramData);

                            var html = "<ul>";
                            for(var i in paramData){
                                var pd = paramData[i];
                                html+="<li><table>";
                                html+="<tr><td colspan=\"2\" class=\"group\">"+pd.group+"</td></tr>";

                                for(var j in pd.params){
                                    var ps = pd.params[j];
                                    html+="<tr><td class=\"param\"><span>"+ps.k+"</span>: </td><td><input autocomplete=\"off\" type=\"text\" value='"+ps.v+"'/></td></tr>";
                                }

                                html+="</li></table>";
                            }
                            html+= "</ul>";
                            $("#itemeEditForm .params td").eq(1).html(html);
                        }
                    });

                    TAOTAO.init({
                        "pics" : data.image,
                        "cid" : data.cid,
                        fun:function(node){
                            TAOTAO.changeItemParam(node, "itemeEditForm");
                        }
                    });
                }
            }).window("open");
        }
    },{
        text:'删除',
        iconCls:'icon-cancel',
        handler:function(){
            var ids = getSelectionsIds();
            if(ids.length == 0){
                $.messager.alert('提示','未选中商品!');
                return ;
            }
            $.messager.confirm('确认','确定删除ID为 '+ids+' 的商品吗？',function(r){
                if (r){
                    var params = {"ids":ids};
                    $.post("/pack/delete",params, function(data){
                        if(data.status == 200){
                            $.messager.alert('提示','删除商品成功!',undefined,function(){
                                $("#itemList").datagrid("reload");
                            });
                        }
                    });
                }
            });
        }
    },'-',{
        text:'下架',
        iconCls:'icon-remove',
        handler:function(){
            var ids = getSelectionsIds();
            if(ids.length == 0){
                $.messager.alert('提示','未选中商品!');
                return ;
            }
            $.messager.confirm('确认','确定下架ID为 '+ids+' 的商品吗？',function(r){
                if (r){
                    var params = {"ids":ids};
                    $.post("/rest/item/instock",params, function(data){
                        if(data.status == 200){
                            $.messager.alert('提示','下架商品成功!',undefined,function(){
                                $("#itemList").datagrid("reload");
                            });
                        }
                    });
                }
            });
        }
    },{
        text:'上架',
        iconCls:'icon-remove',
        handler:function(){
            var ids = getSelectionsIds();
            if(ids.length == 0){
                $.messager.alert('提示','未选中商品!');
                return ;
            }
            $.messager.confirm('确认','确定上架ID为 '+ids+' 的商品吗？',function(r){
                if (r){
                    var params = {"ids":ids};
                    $.post("/rest/item/reshelf",params, function(data){
                        if(data.status == 200){
                            $.messager.alert('提示','上架商品成功!',undefined,function(){
                                $("#itemList").datagrid("reload");
                            });
                        }
                    });
                }
            });
        }
    } */]; 
</script>
