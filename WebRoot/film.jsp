<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.film.entity.FilmEntity" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>主页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<%
    List<FilmEntity> recent = (List<FilmEntity>)request.getAttribute("recent");
    List<FilmEntity> animate = (List<FilmEntity>)request.getAttribute("animate");
    List<FilmEntity> action = (List<FilmEntity>)request.getAttribute("action");
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
						<h3>最近热门</h3>
					</div>
					<%for(int index=0;index<3;index++){ %>
					<div class="col-md-4 resent-grid recommended-grid slider-top-grids" style="width: 33%; height: 70%;">
						<div class="resent-grid-img recommended-grid-img" style="width: 100%; height: 85%;"> 
							<a href="film!filmDetail?filmid=<%= recent.get(index).getFilmid() %>"><img src="resource/movies/<%= recent.get(index).getImg() %>" alt="" style="width: 100%; height: 100%;"/></a>
							<div class="time">
								<p style="margin-top: 60%;"><%= recent.get(index).getFilmtime() %>分</p>
							</div> 
							<div class="clck">
								<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
							</div>
						</div>
						<div class="resent-grid-info recommended-grid-info">
							<h3><a href="film!filmDetail?filmid=<%= recent.get(index).getFilmid() %>" class="title title-info"><%= recent.get(index).getFilmname() %></a></h3>
							<ul>
								<li><p class="author author-info"><a href="film!filmDetail?filmid=<%= recent.get(index).getFilmid() %>" class="author"><%= recent.get(index).getFilmactor() %></a></p></li>
								<li class="right-list"><p class="views views-info">评分:<%= recent.get(index).getFilmstar() %>分</p></li>
							</ul>
						</div>
					</div>
	<%} %>
					
					<div class="clearfix"> </div>
				</div>
				<div class="recommended">
					<div class="recommended-grids">
						<div class="recommended-info">
							<h3>动画</h3>
						</div>
						 <script>
							// You can also use "$(window).load(function() {"
							$(function () {
							  // Slideshow 4
							  $("#slider3").responsiveSlides({
								auto: true,
								pager: false,
								nav: true,
								speed: 500,
								namespace: "callbacks",
								before: function () {
								  $('.events').append("<li>before event fired.</li>");
								},
								after: function () {
								  $('.events').append("<li>after event fired.</li>");
								}
							  });
						
							});
						  </script>
						<div  id="top" class="callbacks_container">
							<ul class="rslides" id="slider3">
								<li>
									<div class="animated-grids">
									<% for(int index = 0;index<animate.size();index++){ %>
										<div class="col-md-3 resent-grid recommended-grid slider-first">
											<div class="resent-grid-img recommended-grid-img">
												<a href="film!filmDetail?filmid=<%= animate.get(index).getFilmid() %>"><img src="resource/movies/<%= animate.get(index).getImg() %>" alt="" /></a>
												<div class="time small-time slider-time">
													<p style="margin-top: 60%;"><%= animate.get(index).getFilmtime() %>分</p>
												</div>
												<div class="clck small-clck">
													<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
												</div>
											</div> 
											<div class="resent-grid-info recommended-grid-info">
												<h5><a href="single.html" class="title"><%= animate.get(index).getFilmname() %></a></h5>
												<div class="slid-bottom-grids">
													<div class="slid-bottom-grid">
														<p class="author author-info"><a href="film!filmDetail?filmid=<%= animate.get(index).getFilmid() %>" class="author"><%= animate.get(index).getFilmactor() %></a></p>
													</div>
													<div class="slid-bottom-grid slid-bottom-right">
														<p class="views views-info">评分:<%= animate.get(index).getFilmstar() %>分</p>
													</div>
													<div class="clearfix"> </div>
												</div>
											</div>
										</div>
										
										
								<% } %>
								</li>
								</ul></div></div></div>
						
				<div class="clearfix"> </div>
				<div class="recommended">
					<div class="recommended-grids">
						<div class="recommended-info">
							<h3>动作电影</h3>
						</div>
						<% for(int index=0;index<action.size();index++){ %>
						<div class="col-md-3 resent-grid recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="film!filmDetail?filmid=<%= action.get(index).getFilmid() %>"><img src="resource/movies/<%= action.get(index).getImg() %>" alt="" /></a>
								<div class="time small-time">
									<p style="margin-top: 70%;"><%= action.get(index).getFilmtime() %>分</p>
								</div>
								<div class="clck small-clck">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info video-info-grid">
								<h5><a href="single.html" class="title"><%= action.get(index).getFilmname() %></a></h5>
								<ul>
									<li><p class="author author-info"><a href="film!filmDetail?filmid=<%= action.get(index).getFilmid() %>" class="author"><%= action.get(index).getFilmactor() %></a></p></li>
									<li class="right-list"><p class="views views-info">评分:<%= action.get(index).getFilmstar() %>分</p></li>
								</ul>
							</div>
						</div>
						<% } %>
						
						
			
					
					
						<div class="clearfix"> </div>
					</div>
				</div>
				
			<jsp:include page="footer.jsp" flush="true"></jsp:include>	
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
 
