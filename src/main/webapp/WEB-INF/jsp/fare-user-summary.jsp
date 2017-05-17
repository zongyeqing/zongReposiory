<%--
  Created by IntelliJ IDEA.
  User: zong
  Date: 2017/4/22
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="/js/kindeditor-4.1.10/themes/default/default.css" type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<div style="padding:10px 10px 10px 10px">
    <form id="queryFare" method="post">
        <table cellpadding="5">
            
            <tr>
                <td>号码:</td>
                <td><input id="phone" class="easyui-textbox" type="text" name="phoneNum" data-options="required:true" style="width: 280px;"></input></td>
            </tr>
            <tr>
                <td>时间:</td>
                <td><input id="date" class="easyui-textbox" type="text" name="month" data-options="required:true" />

                </td>
            </tr>
        </table>
	<div style="padding:5px">
        <a href="javascript:void(0)" class="easyui-linkbutton" onclick="queryFare()">提交</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重置</a>
    </div>
    </form>
	<table class="easyui-datagrid" id="queryResult" title="话费月记录"
       data-options="singleSelect:false,collapsible:true,pagination:true,url:'/fare/userSummay',method:'get',pageSize:30,toolbar:toolbar">
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
    
</div>
<script type="text/javascript">





   /* var itemAddEditor ;
    //页面初始化完毕后执行此方法
    $(function(){
        //创建富文本编辑器
        //itemAddEditor = TAOTAO.createEditor("#itemAddForm [name=desc]");
        itemAddEditor = KindEditor.create("#itemAddForm [name=desc]", TT.kingEditorParams);
        //初始化类目选择和图片上传器
        TAOTAO.init({fun:function(node){
            //根据商品的分类id取商品 的规格模板，生成规格信息。第四天内容。
            TAOTAO.changeItemParam(node, "itemAddForm");
        }});
    });*/
    //提交表单
    
    function queryFare(){
    	var phone=$("#phone").val();
    	var date=$("#date").val();
    	
    	$("#queryResult").datagrid("reload",{phoneNum:phone,month:date});
    }
    
    function submitForm() {

        var phone=$("#phone").val();
        var date= $("#date").val();
        alert(date);
        $("#userSummaryWindow").window({
            onLoad :function(){



                //加载商品规格
                $.getJSON('/fare/userSummay/'+$("#phone").val(),function(_data){
                    alert(_data);
                   if(_data && _data.status == 200 && _data.data){
                    // $("#userFareSummary .params").show();
                       $("#userFareSummary [name=userPhone]").val(_data.data.userPhone);
                     $("#userFareSummary [name=conversation]").val(_data.data.conversation);
                     $("#userFareSummary [name=message]").val(_data.data.message);
                       $("#userFareSummary [name=data_traffic]").val(_data.data.dataTraffic);
                       $("#userFareSummary [name=conversatino_price]").val(_data.data.conversatinoPrice);
                       $("#userFareSummary [name=message_price]").val(_data.data.messagePrice);
                       $("#userFareSummary [name=data_traffic_price]").val(_data.data.dataTrafficPrice);
                       $("#userFareSummary [name=start_time]").val(_data.data.startTime);
                       $("#userFareSummary [name=end_time]").val(_data.data.endTime);
                       $("#userFareSummary [name=sumFare]").val(_data.data.sumFare);




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



    function clearForm(){
        $('#queryFare').form('reset');
       
    }

</script>
