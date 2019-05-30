<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>电影推荐</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
			<div class="show-top-grids">
				<div class="col-sm-10 show-grid-left main-grids">
					<div class="recommended">
						<div class="recommended-grids english-grid">
							<div class="recommended-info">
								<div class="heading">
									<h3>动作电影</h3>
								</div>
								<div class="heading-right">
									<a  href="#small-dialog8" class="play-icon popup-with-zoom-anim">更多</a>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="col-md-3 resent-grid recommended-grid movie-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/mv1.jpg" alt="" /></a>
									<div class="time small-time show-time movie-time">
										<p>7:34</p>
									</div>
									<div class="clck movie-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info recommended-grid-movie-info">
									<h5><a href="single.html" class="title">Varius sit sed viverra Nullam interdum metus</a></h5>
									<ul>
										<li><p class="author author-info"><a href="#" class="author">John Maniya</a></p></li>
										<li class="right-list"><p class="views views-info">2,114,200 views</p></li>
									</ul>
								</div>
							</div>
							<div class="col-md-3 resent-grid recommended-grid movie-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/mv2.jpg" alt="" /></a>
									<div class="time small-time show-time movie-time">
										<p>9:34</p>
									</div>
									<div class="clck movie-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info recommended-grid-movie-info">
									<h5><a href="single.html" class="title">Varius sit sed viverra Nullam interdum metus</a></h5>
									<ul>
										<li><p class="author author-info"><a href="#" class="author">John Maniya</a></p></li>
										<li class="right-list"><p class="views views-info">2,114,200 views</p></li>
									</ul>
								</div>
							</div>
							<div class="col-md-3 resent-grid recommended-grid movie-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/mv3.jpg" alt="" /></a>
									<div class="time small-time show-time movie-time">
										<p>3:04</p>
									</div>
									<div class="clck movie-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info recommended-grid-movie-info">
									<h5><a href="single.html" class="title">Varius sit sed viverra Nullam interdum metus</a></h5>
									<ul>
										<li><p class="author author-info"><a href="#" class="author">John Maniya</a></p></li>
										<li class="right-list"><p class="views views-info">2,114,200 views</p></li>
									</ul>
								</div>
							</div>
							<div class="col-md-3 resent-grid recommended-grid movie-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/mv4.jpg" alt="" /></a>
									<div class="time small-time show-time movie-time">
										<p>2:06</p>
									</div>
									<div class="clck movie-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info recommended-grid-movie-info">
									<h5><a href="single.html" class="title">Varius sit sed viverra Nullam interdum metus</a></h5>
									<ul>
										<li><p class="author author-info"><a href="#" class="author">John Maniya</a></p></li>
										<li class="right-list"><p class="views views-info">2,114,200 views</p></li>
									</ul>
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="recommended">
						<div class="recommended-grids">
							<div class="recommended-info">
								<div class="heading">
									<h3>喜剧电影</h3>
								</div>
								<div class="heading-right">
									<a  href="#small-dialog8" class="play-icon popup-with-zoom-anim">更多</a>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="col-md-3 resent-grid recommended-grid movie-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/ch1.jpg" alt="" /></a>
									<div class="time small-time show-time movie-time">
										<p>2:34</p>
									</div>
									<div class="clck movie-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info recommended-grid-movie-info">
									<h5><a href="single.html" class="title">Varius sit sed viverra Nullam interdum metus</a></h5>
									<ul>
										<li><p class="author author-info"><a href="#" class="author">John Maniya</a></p></li>
										<li class="right-list"><p class="views views-info">2,114,200 views</p></li>
									</ul>
								</div>
							</div>
							<div class="col-md-3 resent-grid recommended-grid movie-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/ch2.jpg" alt="" /></a>
									<div class="time small-time show-time movie-time">
										<p>3:45</p>
									</div>
									<div class="clck movie-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info recommended-grid-movie-info">
									<h5><a href="single.html" class="title">Varius sit sed viverra Nullam interdum metus</a></h5>
									<ul>
										<li><p class="author author-info"><a href="#" class="author">John Maniya</a></p></li>
										<li class="right-list"><p class="views views-info">2,114,200 views</p></li>
									</ul>
								</div>
							</div>
							<div class="col-md-3 resent-grid recommended-grid movie-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/ch3.jpg" alt="" /></a>
									<div class="time small-time show-time movie-time">
										<p>7:34</p>
									</div>
									<div class="clck movie-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info recommended-grid-movie-info">
									<h5><a href="single.html" class="title">Varius sit sed viverra Nullam interdum metus</a></h5>
									<ul>
										<li><p class="author author-info"><a href="#" class="author">John Maniya</a></p></li>
										<li class="right-list"><p class="views views-info">2,114,200 views</p></li>
									</ul>
								</div>
							</div>
							<div class="col-md-3 resent-grid recommended-grid movie-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/ch4.jpg" alt="" /></a>
									<div class="time small-time show-time movie-time">
										<p>6:30</p>
									</div>
									<div class="clck movie-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info recommended-grid-movie-info">
									<h5><a href="single.html" class="title">Varius sit sed viverra Nullam interdum metus</a></h5>
									<ul>
										<li><p class="author author-info"><a href="#" class="author">John Maniya</a></p></li>
										<li class="right-list"><p class="views views-info">2,114,200 views</p></li>
									</ul>
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="recommended">
						<div class="recommended-grids">
							<div class="recommended-info">
								<div class="heading">
									<h3>动画电影</h3>
								</div>
								<div class="heading-right">
									<a  href="#small-dialog8" class="play-icon popup-with-zoom-anim">更多</a>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="col-md-3 resent-grid recommended-grid movie-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/h1.jpg" alt="" /></a>
									<div class="time small-time show-time movie-time">
										<p>2:34</p>
									</div>
									<div class="clck movie-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info recommended-grid-movie-info">
									<h5><a href="single.html" class="title">Varius sit sed viverra Nullam interdum metus</a></h5>
									<ul>
										<li><p class="author author-info"><a href="#" class="author">John Maniya</a></p></li>
										<li class="right-list"><p class="views views-info">2,114,200 views</p></li>
									</ul>
								</div>
							</div>
							<div class="col-md-3 resent-grid recommended-grid movie-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/h2.jpg" alt="" /></a>
									<div class="time small-time show-time movie-time">
										<p>3:45</p>
									</div>
									<div class="clck movie-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info recommended-grid-movie-info">
									<h5><a href="single.html" class="title">Varius sit sed viverra Nullam interdum metus</a></h5>
									<ul>
										<li><p class="author author-info"><a href="#" class="author">John Maniya</a></p></li>
										<li class="right-list"><p class="views views-info">2,114,200 views</p></li>
									</ul>
								</div>
							</div>
							<div class="col-md-3 resent-grid recommended-grid movie-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/h3.jpg" alt="" /></a>
									<div class="time small-time show-time movie-time">
										<p>7:34</p>
									</div>
									<div class="clck movie-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info recommended-grid-movie-info">
									<h5><a href="single.html" class="title">Varius sit sed viverra Nullam interdum metus</a></h5>
									<ul>
										<li><p class="author author-info"><a href="#" class="author">John Maniya</a></p></li>
										<li class="right-list"><p class="views views-info">2,114,200 views</p></li>
									</ul>
								</div>
							</div>
							<div class="col-md-3 resent-grid recommended-grid movie-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/h4.jpg" alt="" /></a>
									<div class="time small-time show-time movie-time">
										<p>6:30</p>
									</div>
									<div class="clck movie-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info recommended-grid-movie-info">
									<h5><a href="single.html" class="title">Varius sit sed viverra Nullam interdum metus</a></h5>
									<ul>
										<li><p class="author author-info"><a href="#" class="author">John Maniya</a></p></li>
										<li class="right-list"><p class="views views-info">2,114,200 views</p></li>
									</ul>
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="recommended">
						<div class="recommended-grids">
							<div class="recommended-info">
								<div class="heading">
									<h3>电影</h3>
								</div>
								<div class="heading-right">
									<a  href="#small-dialog8" class="play-icon popup-with-zoom-anim">更多</a>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="col-md-3 resent-grid recommended-grid movie-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/tm1.jpg" alt="" /></a>
									<div class="time small-time show-time movie-time">
										<p>5:32</p>
									</div>
									<div class="clck movie-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info recommended-grid-movie-info">
									<h5><a href="single.html" class="title">Varius sit sed viverra Nullam interdum metus</a></h5>
									<ul>
										<li><p class="author author-info"><a href="#" class="author">John Maniya</a></p></li>
										<li class="right-list"><p class="views views-info">2,114,200 views</p></li>
									</ul>
								</div>
							</div>
							<div class="col-md-3 resent-grid recommended-grid movie-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/tm2.jpg" alt="" /></a>
									<div class="time small-time show-time movie-time">
										<p>2:34</p>
									</div>
									<div class="clck movie-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info recommended-grid-movie-info">
									<h5><a href="single.html" class="title">Varius sit sed viverra Nullam interdum metus</a></h5>
									<ul>
										<li><p class="author author-info"><a href="#" class="author">John Maniya</a></p></li>
										<li class="right-list"><p class="views views-info">2,114,200 views</p></li>
									</ul>
								</div>
							</div>
							<div class="col-md-3 resent-grid recommended-grid movie-video-grid movie-video-grid-left">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/tm3.jpg" alt="" /></a>
									<div class="time small-time show-time movie-time">
										<p>8:26</p>
									</div>
									<div class="clck movie-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info recommended-grid-movie-info">
									<h5><a href="single.html" class="title">Varius sit sed viverra Nullam interdum metus</a></h5>
									<ul>
										<li><p class="author author-info"><a href="#" class="author">John Maniya</a></p></li>
										<li class="right-list"><p class="views views-info">2,114,200 views</p></li>
									</ul>
								</div>
							</div>
							<div class="col-md-3 resent-grid recommended-grid movie-video-grid movie-video-grid-right">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/tm4.jpg" alt="" /></a>
									<div class="time small-time show-time movie-time">
										<p>3:44</p>
									</div>
									<div class="clck movie-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info recommended-grid-movie-info">
									<h5><a href="single.html" class="title">Varius sit sed viverra Nullam interdum metus</a></h5>
									<ul>
										<li><p class="author author-info"><a href="#" class="author">John Maniya</a></p></li>
										<li class="right-list"><p class="views views-info">2,114,200 views</p></li>
									</ul>
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class="col-md-2 show-grid-right">
					<h3>分类搜索</h3>
					<div class="show-right-grids">
						<ul>
							<li class="tv-img"><a href="#"><img src="resource/images/mv.png" alt="" /></a></li>
							<li><a href="#">英文电影</a></li>
						</ul>
					</div>
					<div class="show-right-grids">
						<ul>
							<li class="tv-img"><a href="#"><img src="resource/images/mv.png" alt="" /></a></li>
							<li><a href="#">国内电影</a></li>
						</ul>
					</div>
					<div class="show-right-grids">
						<ul>
							<li class="tv-img"><a href="#"><img src="resource/images/mv.png" alt="" /></a></li>
							<li><a href="#">日本电影</a></li>
						</ul>
					</div>
					<div class="show-right-grids">
						<ul>
							<li class="tv-img"><a href="#"><img src="resource/images/mv.png" alt="" /></a></li>
							<li><a href="#">泰国电影</a></li>
						</ul>
					</div>
					
				</div>
				<div class="clearfix"> </div>
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
</html>
