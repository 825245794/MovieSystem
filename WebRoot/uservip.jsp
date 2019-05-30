<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.film.bean.UserInfoBean" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人中心首页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<%
    
 %>
 <style type="text/css">
 label{font-size: 16px;}
 </style>
<jsp:include page="quote_css.jsp"></jsp:include>

<jsp:include page="quote_js.jsp"></jsp:include>
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
			<jsp:include page="account.jsp" flush="true"></jsp:include>
        <div class="col-sm-3 col-md-2 sidebar">
			<div class="top-navigation">
				<div class="t-menu">MENU</div>
				<div class="t-img">
					<img src="resource/images/lines.png" alt="" />
				</div>
				<div class="clearfix"> </div>
			</div>
				<jsp:include page="menu.jsp" flush="true"></jsp:include>
				
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
       <th style="text-align: center;"><a href="userinfo!load">个人信息修改</a></th>
         <th style="text-align: center;"><a href="userorder.action">订单查询</a></th>
        <th style="text-align: center;"><a href="userpay.jsp">充值</a></th>
        <th class="warning" style="text-align: center;"><a href="uservip.jsp">Vip开通</a></th>
      </tr>
   </thead>
    </table>
					
					
					
					
					
	<!-- Main -->		
	<div>
	<label style="color: red;">开通会员全场购票8折，尊享评论会员红名，仅低至60元/月</label>
  <form  action="pay!payVip" method="post">
  <div class="form-group"> 
      <input type="radio" name="month" value="1"><label>1个月</label>&nbsp;&nbsp;&nbsp;<input type="radio" name="month" value="3"><label>3个月</label><br>
      <input type="radio" name="month" checked="checked" value="6"><label>半年</label>&nbsp;&nbsp;&nbsp;<input type="radio" name="month" value="12"><label>1年</label><br>
      <input type="radio" name="month" value="default"><label>自定义</label>&nbsp;&nbsp;&nbsp;<input type="text" name="amount" value="">月<br>
  </div>
  <button type="submit" class="btn btn-default">提交</button>
</form>
    	
		</div>			</div></div>		 
					<div class="clearfix"> </div>  
			
				
			<div style="bottom:0px; position: fixed; width: 100%;">
			<jsp:include page="footer.jsp" flush="true"></jsp:include>	
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
 