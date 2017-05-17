<%--
  Created by IntelliJ IDEA.
  User: zong
  Date: 2017/4/23
  Time: 23:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="/js/kindeditor-4.1.10/themes/default/default.css" type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<div style="padding:10px 10px 10px 10px">
    <form id="userFareSummary" class="itemForm" method="post">
        <table>
            <tr>
                <th >号码</th>
                <th >通话时长</th>
                <th >短信</th>
                <th >流量</th>
                <th >通话费用</th>
                <th >短信费用</th>
                <th >流量费用</th>
                <th >开始时间</th>
                <th >截止时间</th>
                <th >总费用</th>
            </tr>
            <tr>
                <th ><input name="userPhone"></th>
                <th ><input name="conversation"></th>
                <th ><input name="message"></th>
                <th ><input name="data_traffic"></th>
                <th ><input name="conversatino_price"></th>
                <th ><input name="message_price"></th>
                <th ><input name="data_traffic_price"></th>
                <th ><input name="start_time"></th>
                <th ><input name="end_time"></th>
                <th ><input name="sumFare"></th>
            </tr>
        </table>
        <%--<input type="hidden" name="itemParams"/>
        <input type="hidden" name="itemParamId"/>--%>
    </form>

</div>


