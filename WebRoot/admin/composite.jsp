<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.film.entity.UserEntity" %>
<%@ page import="com.film.entity.FilmEntity" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String[] title = (String[])request.getAttribute("title");
String url = request.getAttribute("url").toString();
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>信息</title>
    
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
	<caption>信息</caption>
   <thead>
      <tr>
      <% for(int i=0;i<title.length;i++){ %>
      <th><%= title[i] %></th>
      <% } %>
      </tr>
   </thead> 
   <tbody>  
   <s:if test="#request.user!=null">
   <s:iterator value="#request.user" id="user">
   <form action="admin!user">
   <tr class="success">
          <td style="display: none;"><input type="text" style="display: none;" value="${requestScope.type}" name="type"></td>
          <td style="display: none;"><input type="text" style="display: none;" value="<s:property value="Userid" />" name="userid"></td>
          <td><s:property value="Userid" /></td>
          <td><s:property value="Username" /></td>
          <td><input type="text" name="password" value="<s:property value="Password" />"></td>
          <td><input type="text" name="money" value="<s:property value="Money" />"></td>
          <s:if test='#user.vip=="0"'>
          <td>否</td>
          </s:if>
          <s:else><td>是</td></s:else>
          <td><s:property value="Vipdate" />天</td>
          <td><select name="activity">
          <s:if test='#user.activity=="0"'>
          <option value="0">不可用</option>
          <option value="1">可用</option>
          </s:if> 
          <s:else>
          <option value="1">可用</option>
          <option value="0">不可用</option>
          </s:else> 
          </select> </td>
         <td><input value="应用" type="submit"> </td>
      </tr>
       </form>
   </s:iterator>

</s:if>
 <s:if test="#request.film!=null">
  <s:iterator value="#request.film" id="film">
   
         <tr class="success"> 
          <form action="admin!film"> 
          <td style="display: none;"><input type="text" style="display: none;" value="<s:property value="Filmid" />" name="filmid"></td>
          <td style="display: none;"><input type="text" style="display: none;" value="${requestScope.type}" name="type"></td>
          <td><s:property value="Filmname" /></td>
          <td><input type="text" name="price" value="<s:property value="Price" />"></td>
          <td><select name="activity">
          <s:if test='#film.activity=="0"'>
          <option value="0">不可用</option>
          <option value="1">可用</option>
          </s:if> 
          <s:else>
          <option value="1">可用</option>
          <option value="0">不可用</option>
          </s:else> 
          </select> </td>
          <td><input type="submit" value="应用"></td>
          </form>
      </tr>
      </s:iterator>
</s:if>
 
        </tbody>
    </table>
    	</div> 
    	</div>	
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
 
