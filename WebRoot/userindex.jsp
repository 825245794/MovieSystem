<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.film.bean.UserInfoBean" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List<UserInfoBean> info = (List<UserInfoBean>)request.getAttribute("info");
String birthday = info.get(0).getBirthday();
String year = birthday.substring(0,birthday.indexOf("-"));
birthday =  birthday.substring(birthday.indexOf("-")+1);
String month = birthday.substring(0,birthday.indexOf("-"));
birthday =  birthday.substring(birthday.indexOf("-")+1);
String day = birthday.substring(0,birthday.indexOf(" "));
birthday =  birthday.substring(birthday.indexOf("-")+1);
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
       <th class="warning"  style="text-align: center;"><a href="userinfo!load">个人信息修改</a></th>
         <th style="text-align: center;"><a href="userorder.action">订单查询</a></th>
        <th style="text-align: center;"><a href="userpay.jsp">充值</a></th>
        <th style="text-align: center;"><a href="uservip.jsp">Vip开通</a></th>
      </tr>
   </thead>
    </table>
					
					
					
					
					
	<!-- Main -->		
	<div>
	
  <form  action="userinfo.action" enctype="multipart/form-data" method="post">
   <% if(info.get(0).getImg()==null||info.get(0).getImg().equals("null")){ %>
   
  <% }else{ %>
  <div class="form-group">
    <label for="name">头像</label>
    <img alt="" src="resource/userimg/<%= info.get(0).getImg()  %>" style="width: 80px; height: 80px;">
  </div><%} %>
  <div class="form-group">
    <label for="name">用户名</label>
    <input type="text" class="form-control" id="name" placeholder="请输入用户名" name="username" style="width: 20%;" value="<%= info.get(0).getUsername() %>">
  </div>
    <div class="form-group">
    <label for="name">注册日期:<%= info.get(0).getRegisterdate() %></label>
  </div>
  
    <div class="form-group">
    <label for="name">账户余额:<%= info.get(0).getMoney() %>元</label>
  </div>
      <div class="form-group">
      <% if(!info.get(0).getVipdate().equals("0")){ %>
    <label for="name">会员剩余:<%= info.get(0).getVipdate() %>天</label>
    <% }else{ %>
    <label for="name">你还不是会员，<a href="uservip.jsp">开通会员</a></label>
    <% } %>
  </div>
    <div class="form-group">
    <label for="name">生日日期:</label>
    <input type="text" class="form-control" id="name" placeholder="请输入出生年份" name="year" style="width: 15%;" value="<%= year %>">
    
    <input type="text" class="form-control" id="name" placeholder="请输入出生月份" name="month" style="width: 15%;" value="<%= month %>">
    
    <input type="text" class="form-control" id="name" placeholder="请输入出生日期" name="day" style="width: 15%;" value="<%= day %>">
  </div>
  <div class="form-group">
    <label for="inputfile">上传头像</label>
    <input type="file" id="inputfile" name="myfile">
  </div>
  <div class="form-group"> 
    <label for="name">性别</label><br>
    <% if(info.get(0).getSex().equals("m")){ %>
      <input type="radio" name="sex" checked="checked" value="m"><label>男</label>&nbsp;&nbsp;&nbsp;<input type="radio" name="sex" value="f"><label>女</label>
      <% }else{ %>
      <input type="radio" name="sex" value="m"><label>男</label>&nbsp;&nbsp;&nbsp;<input type="radio" name="sex" checked="checked" value="f"><label>女</label>
      <% } %>
  </div>
  <button type="submit" class="btn btn-default">提交</button>
</form>
<br><label>修改密码</label>
<form action="forget.action">
<div class="form-group">
    <label for="name">邮箱</label>
    <input type="text" class="form-control" name="email" style="width: 15%;" >
  </div>
<div class="form-group">
    <label for="name">密码</label>
    <input type="text" class="form-control" name="password" style="width: 15%;" >
  </div>
  
  <div class="form-group">
    <label for="name">确认密码</label>
    <input type="text" class="form-control" name="verifypassword" style="width: 15%;" >
  </div>
  
  <input type="submit" class="btn btn-default" value="提交">
</form>
    	
		</div>	</div></div>				 
					<div class="clearfix" style="margin-bottom: 280px;"> </div>  
			
				
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
 