<%--
  Created by IntelliJ IDEA.
  User: lujiale
  Date: 2017/11/4
  Time: 下午1:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>添加电影场次</title>
    <jsp:include page="../quote_css.jsp"></jsp:include>

    <jsp:include page="../quote_js.jsp"></jsp:include>
</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="user/index.jsp"><h1><img src="resource/images/logo.png" alt="" /></h1></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <div class="top-search">
                <form class="navbar-form navbar-right">
                    <input type="text" class="form-control" placeholder="搜索...">
                    <input type="submit" value=" ">
                </form>
            </div>
            <jsp:include page="../account.jsp" flush="true"></jsp:include>
            <div class="col-sm-3 col-md-2 sidebar">
                <div class="top-navigation">
                    <div class="t-menu">MENU</div>
                    <div class="t-img">
                        <img src="resource/images/lines.png" alt="" />
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <jsp:include page="../menu.jsp" flush="true"></jsp:include>

                <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                    <div class="main-grids">
                        <div class="top-grids">
                            <div class="recommended-info">
                                <h3></h3>
                            </div>
                            <!-- Menu -->
                            <table class="table table-condensed table-bordered" style="width: 90%; text-align: center;">
                                <thead>
                                <tr>
                                    <th style="text-align: center;"><a href="admin!composite?type=0">电影管理</a></th>
                                    <th style="text-align: center;"><a href="admin!composite?type=1">用户管理</a></th>
                                    <th style="text-align: center;"><a href="admin!userPayOrder">支付订单查询</a></th>
                                    <th style="text-align: center;"><a href="admin!userOrder">电影票购买查询</a></th>
                                </tr>
                                </thead>
                            </table>





                            <!-- Main -->			<div style="overflow-y:auto">
                            <table class="table table-hover">
                                <caption>订票信息</caption>
                                <thead>
                                <tr>
                                    <th>订单号</th>
                                    <th>用户id</th>
                                    <th>订票日期</th>
                                    <th>电影名称</th>
                                    <th>放映日期</th>
                                    <th>放映开始时间</th>
                                    <th>放映结束时间</th>
                                    <th>放映厅</th>
                                    <th>座位号</th>
                                    <th>票价</th>
                                    <th>状态</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="success">

                                </tr>

                                </tbody>
                            </table>
                        </div>
                           <s:form>

                           </s:form>
                        <div class="clearfix" style="margin-bottom: 280px;"> </div>
                    </div>

                    <div style="bottom:0px; position: fixed; width: 100%; ">
                        <jsp:include page="../footer.jsp" flush="true"></jsp:include>
                    </div>
                    <div class="clearfix"> </div>
                    <div class="drop-menu">
                        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu4">
                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Regular link</a></li>
                            <li role="presentation" class="disabled"><a role="menuitem" tabindex="-1" href="#">Disabled link</a></li>
                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another link</a></li>
                        </ul>
                    </div>
</body>
</html>


