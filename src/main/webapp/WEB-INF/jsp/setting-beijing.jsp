<%--
  Created by IntelliJ IDEA.
  User: zong
  Date: 2017/5/17
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>数据交接中心</title>
    <!-- Import google fonts - Heading first/ text second -->
    <link rel='stylesheet' type='text/css' href='http://fonts.useso.com/css?family=Open+Sans:400,700|Droid+Sans:400,700' />
    <!--[if lt IE 9]>
    <link href="http://fonts.useso.com/css?family=Open+Sans:400" rel="stylesheet" type="text/css" />
    <link href="http://fonts.useso.com/css?family=Open+Sans:700" rel="stylesheet" type="text/css" />
    <link href="http://fonts.useso.com/css?family=Droid+Sans:400" rel="stylesheet" type="text/css" />
    <link href="http://fonts.useso.com/css?family=Droid+Sans:700" rel="stylesheet" type="text/css" />
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="../ico/favicon.ico" type="image/x-icon" />

    <!-- Css files -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/jquery.mmenu.css" rel="stylesheet">
    <link href="../css/font-awesome.min.css" rel="stylesheet">
    <link href="../css/climacons-font.css" rel="stylesheet">
    <link href="../plugins/xcharts/css/xcharts.min.css" rel=" stylesheet">
    <link href="../plugins/fullcalendar/css/fullcalendar.css" rel="stylesheet">
    <link href="../plugins/morris/css/morris.css" rel="stylesheet">
    <link href="../plugins/jquery-ui/css/jquery-ui-1.10.4.min.css" rel="stylesheet">
    <link href="../plugins/jvectormap/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
    <link href="../css/style.min.css" rel="stylesheet">
    <link href="../css/add-ons.min.css" rel="stylesheet">
</head>
<body style="width:80%;">
<nav class="navbar navbar-inverse" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            任务配置 | 北京
        </div>

    </div>
</nav>

<div class="container-fluid content">

    <div class="row">
        <%@include file="sidebar.jsp"%>
    </div>
        <!-- end: Main Menu -->

        <!-- start: Content -->
        <div class="main">

            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2><i class="fa fa-table red"></i><span class="break"></span><strong>基本配置</strong></h2>
                            <div class="panel-actions pull-right">
                                <a href="table.html#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                                <a href="table.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                                <a href="table.html#" class="btn-close"><i class="fa fa-times"></i></a>
                            </div>
                        </div>
                        <div class="panel-body">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>配置项</th>
                                    <th>状态</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>任务状态</td>
                                    <td>进行中</td>
                                </tr>
                                <tr>
                                    <td>切片大小</td>
                                    <td>5000</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2><i class="fa fa-table red"></i><span class="break"></span><strong>车辆运营上线</strong></h2>
                            <div class="panel-actions">
                                <a href="#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                                <a href="javascript:void(0)" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                                <a href="table.html#" class="btn-close"><i class="fa fa-times"></i></a>
                            </div>
                        </div>
                        <div class="panel-body">
                            <table class="table" >
                                <thead>
                                <tr>
                                    <th>元素名称</th>
                                    <th>字段名称</th>
                                    <th>映射表</th>
                                    <th>表字段</th>
                                </tr>
                                </thead>
                                <tbody id="mapTable">
                                <tr>
                                    <td><input type="text" name="" class="form-control"></td>
                                    <td><input type="text" name="" class="form-control"></td>
                                    <td>
                                        <select class="form-control ">
                                            <option>order</option>
                                            <option>driver</option>
                                            <option>order_detail</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select class="form-control ">
                                            <option>order</option>
                                            <option>driver</option>
                                            <option>order_detail</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td>
                                        <select class="form-control ">
                                            <option>order</option>
                                            <option>driver</option>
                                            <option>order_detail</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select class="form-control ">
                                            <option>order</option>
                                            <option>driver</option>
                                            <option>order_detail</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td>
                                        <select class="form-control ">
                                            <option>order</option>
                                            <option>driver</option>
                                            <option>order_detail</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select class="form-control ">
                                            <option>order</option>
                                            <option>driver</option>
                                            <option>order_detail</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td>
                                        <select class="form-control ">
                                            <option>order</option>
                                            <option>driver</option>
                                            <option>order_detail</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select class="form-control ">
                                            <option>order</option>
                                            <option>driver</option>
                                            <option>order_detail</option>
                                        </select>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                            <button class="btn-primary" onclick="addTr()">添加行</button>
                            <button class="btn-primary" onclick="removeTr()">删除行</button>
                            <hr/>
                            <h3>表间映射</h3>
                            <table class="table">
                                <thead>
                                <tr>
                                    <th class="col-sm-3">表1</th>
                                    <th class="col-sm-3">表1字段</th>
                                    <th class="col-sm-3">表2</th>
                                    <th class="col-sm-3">表2字段</th>
                                </tr>
                                </thead>
                                <tbody id="tableMapTable">
                                <tr>
                                    <td >
                                        <select class="form-control ">
                                            <option>order</option>
                                            <option>driver</option>
                                            <option>order_detail</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select class="form-control ">
                                            <option>order</option>
                                            <option>driver</option>
                                            <option>order_detail</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select class="form-control ">
                                            <option>order</option>
                                            <option>driver</option>
                                            <option>order_detail</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select class="form-control ">
                                            <option>order</option>
                                            <option>driver</option>
                                            <option>order_detail</option>
                                        </select>
                                    </td>
                                </tr>

                                </tbody>
                            </table>
                            <button class="btn-primary" onclick="addTr1()">添加行</button>
                            <button class="btn-primary" onclick="removeTr1()">删除行</button><br><br>
                            <button type="button" class="btn btn-primary">提交</button>
                        </div>
                    </div>
                </div><!--/col-->


            </div><!--/row-->



        </div>


</body>

<script type="text/javascript">
    function addTr(){
        var str="" +
            " <tr>"+
            "<td><input type='text' class='form-control'></td><td><input type='text' class='form-control'></td>"+
            " <td> <select class='form-control'> <option>order</option> <option>driver</option> <option>order_detail</option> </select> </td>"+
            " <td> <select class='form-control '> <option>order</option> <option>driver</option> <option>order_detail</option> </select> </td> "+"" +
            "</tr>";
        $("#mapTable").append(str);
    }
    function removeTr(){
        $("#mapTable").children("tr:last").remove();
    }
    function addTr1(){
        var str= "<tr>"+
            " <td > <select class='form-control '> <option>order</option> <option>driver</option> <option>order_detail</option> </select> </td>"+
            " <td> <select class='form-control '> <option>order</option> <option>driver</option> <option>order_detail</option> </select> </td>"+
            " <td> <select class='form-control '> <option>order</option> <option>driver</option> <option>order_detail</option> </select> </td>"+
            " <td> <select class='form-control '> <option>order</option> <option>driver</option> <option>order_detail</option> </select> </td>"+
            "</tr>";
        $("#tableMapTable").append(str);
    }

    function removeTr1() {
        $("#tableMapTable").children("tr:last").remove();
    }
</script>
<!-- start: JavaScript-->
<!--[if !IE]>-->

<script src="../js/jquery-2.1.1.min.js"></script>

<!--<![endif]-->

<!--[if IE]>

<script src="js/jquery-1.11.1.min.js"></script>

<![endif]-->

<!--[if !IE]>-->

<script type="text/javascript">
    window.jQuery || document.write("<script src='../js/jquery-2.1.1.min.js'>"+"<"+"/script>");
</script>

<!--<![endif]-->

<!--[if IE]>

<script type="text/javascript">
    window.jQuery || document.write("<script src='js/jquery-1.11.1.min.js'>"+"<"+"/script>");
</script>

<![endif]-->
<script src="../js/jquery-migrate-1.2.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>


<!-- page scripts -->
<script src="../plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
<script src="../plugins/touchpunch/jquery.ui.touch-punch.min.js"></script>
<script src="../plugins/moment/moment.min.js"></script>
<script src="../plugins/fullcalendar/js/fullcalendar.min.js"></script>
<!--[if lte IE 8]>
<script language="javascript" type="text/javascript" src="plugins/excanvas/excanvas.min.js"></script>
<![endif]-->
<script src="../plugins/flot/jquery.flot.min.js"></script>
<script src="../plugins/flot/jquery.flot.pie.min.js"></script>
<script src="../plugins/flot/jquery.flot.stack.min.js"></script>
<script src="../plugins/flot/jquery.flot.resize.min.js"></script>
<script src="../plugins/flot/jquery.flot.time.min.js"></script>
<script src="../plugins/flot/jquery.flot.spline.min.js"></script>
<script src="../plugins/xcharts/js/xcharts.min.js"></script>
<script src="../plugins/autosize/jquery.autosize.min.js"></script>
<script src="../plugins/placeholder/jquery.placeholder.min.js"></script>
<script src="../plugins/datatables/js/jquery.dataTables.min.js"></script>
<script src="../plugins/datatables/js/dataTables.bootstrap.min.js"></script>
<script src="../plugins/raphael/raphael.min.js"></script>
<script src="../plugins/morris/js/morris.min.js"></script>
<script src="../plugins/jvectormap/js/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../plugins/jvectormap/js/jquery-jvectormap-world-mill-en.js"></script>
<script src="../plugins/jvectormap/js/gdp-data.js"></script>
<script src="../plugins/gauge/gauge.min.js"></script>


<!-- theme scripts -->
<script src="../js/SmoothScroll.js"></script>
<script src="../js/jquery.mmenu.min.js"></script>
<script src="../js/core.min.js"></script>
<script src="../plugins/d3/d3.min.js"></script>

<!-- inline scripts related to this page -->
<script src="../js/pages/index.js"></script>

<!-- end: JavaScript-->
</html>

<script type="text/javascript">
    $(document).ready(function(){
        $("#addRowButton").bind("click",function () {
            alert("aaaaaa");

        })
    })
</script>

