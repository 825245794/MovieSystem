<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.film.bean.UserOrderBean" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List<UserOrderBean> order = (List<UserOrderBean>)request.getAttribute("order");
%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户订单</title>
    
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
         <th class="warning" style="text-align: center;"><a href="userorder.action">订单查询</a></th>
        <th style="text-align: center;"><a href="userpay.jsp">充值</a></th>
        <th style="text-align: center;"><a href="uservip.jsp">Vip开通</a></th>
      </tr>
   </thead>
    </table>
					
					
					
					
					
	<!-- Main -->			<div style="overflow-y:auto">
					<table class="table table-hover">
	<caption>订票信息</caption>
   <thead>
      <tr>
      <th>订单号</th>
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
   <% for(int index=0;index<order.size();index++){ %>
   <% if(order.get(index).getStatusid().equals("2")){ %>
   <tr class="success"> 
         <td><%= order.get(index).getOrderid() %></td>
          <td><%= order.get(index).getOrderdate().substring(0, order.get(index).getOrderdate().lastIndexOf(":")) %></td>
          <td><%= order.get(index).getFilmname() %></td>
          <td><%= order.get(index).getPlacedate() %></td>
          <td><%= order.get(index).getBegintime() %></td>
          <td><%= order.get(index).getEndtime() %></td>
          <td><%= order.get(index).getPlaceroom() %></td>
          <td><%= order.get(index).getSeat() %></td>
          <td><%= order.get(index).getOrdersum() %></td>
          <td><%= order.get(index).getStatusname() %></td>
          <td><a href="userorder!refund?orderid=<%=order.get(index).getOrderid() %>&page=<%=request.getAttribute("page") %>">退票</a></td>
      </tr>
   <% }else{ %>
         <tr class="danger"> 
              <td><%= order.get(index).getOrderid() %></td>
          <td><%= order.get(index).getOrderdate().substring(0, order.get(index).getOrderdate().lastIndexOf(":")) %></td>
          <td><%= order.get(index).getFilmname() %></td>
          <td><%= order.get(index).getPlacedate() %></td>
          <td><%= order.get(index).getBegintime() %></td>
          <td><%= order.get(index).getEndtime() %></td>
          <td><%= order.get(index).getPlaceroom() %></td>
          <td><%= order.get(index).getSeat() %></td>
          <td><%= order.get(index).getOrdersum() %></td>
          <td><%= order.get(index).getStatusname() %></td>
          <td></td>
      </tr>
     <%} %>
      <%} %>
        </tbody>
    </table>
    	</div> 
    	<div align="center">
	 <ul class="pagination">
    <% if(!request.getAttribute("page").toString().equals("0")){ %><li><a href="userorder!previousPage?page=<%=request.getAttribute("page") %>">&laquo;</a></li><%} %> 
    <li><a href="javascript:void(0);">第<%= Integer.parseInt(request.getAttribute("page").toString())+1 %>页</a></li>
   <% if(order.size()==20){ %> <li><a href="userorder!nextPage?page=<%=request.getAttribute("page") %>">&raquo;</a></li><% } %>
</ul></div></div>	
					<div class="clearfix" style="margin-bottom: 280px;"> </div>  
				</div>
				
			<div style="bottom:0px; position: fixed; width: 100%; ">
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
 
