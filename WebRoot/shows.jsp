<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'shows.jsp' starting page</title>
    
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
									<h3>International</h3>
								</div>
								<div class="heading-right">
									<a  href="#small-dialog8" class="play-icon popup-with-zoom-anim">Subscribe</a>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/eg1.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>7:34</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="single.html" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">1,200 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/eg2.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>9:34</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="single.html" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">4,200 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/eg3.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>3:04</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="single.html" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">2,200 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/eg4.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>2:06</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="single.html" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">2,114 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/eg1.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>3:23</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="single.html" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">2,200 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/eg2.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>4:23</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="single.html" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">2,114 views</p>
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="recommended">
						<div class="recommended-grids">
							<div class="recommended-info">
								<div class="heading">
									<h3>Hindi</h3>
								</div>
								<div class="heading-right">
									<a  href="#small-dialog8" class="play-icon popup-with-zoom-anim">Subscribe</a>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/my1.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>2:34</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="single.html" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">2,200 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/my2.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>3:45</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="single.html" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">1,200 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/my3.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>7:34</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="single.html" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">4,200 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/my4.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>6:30</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="single.html" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">2,200 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/my5.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>5:25</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="single.html" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">7,200 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/my6.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>6:45</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="single.html" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">5,786 views</p>
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="recommended">
						<div class="recommended-grids">
							<div class="recommended-info">
								<div class="heading">
									<h3>Telugu</h3>
								</div>
								<div class="heading-right">
									<a  href="#small-dialog8" class="play-icon popup-with-zoom-anim">Subscribe</a>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/mt1.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>5:32</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="single.html" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">5,763 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/mt2.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>2:34</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="single.html" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">7,854 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/mt3.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>8:26</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="single.html" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">5,658 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/mt4.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>3:44</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="single.html" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views"> 7,897 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/mt5.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>4:46</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="single.html" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">5,576 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/mt6.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>5:14</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="single.html" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">2,476 views</p>
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="recommended">
						<div class="recommended-grids">
							<div class="recommended-info">
								<div class="heading">
									<h3>Marathi</h3>
								</div>
								<div class="heading-right">
									<a  href="#small-dialog8" class="play-icon popup-with-zoom-anim">Subscribe</a>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/ma1.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>5:09</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="single.html" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">1,897 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/ma2.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>6:23</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="single.html" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">9,565 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/ma3.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>3:34</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="single.html" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">9,576 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/ma4.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>5:23</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="single.html" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">4,675 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/ma5.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>5:04</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="single.html" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">9,443 views</p>
								</div>
							</div>
							<div class="col-md-2 resent-grid recommended-grid show-video-grid">
								<div class="resent-grid-img recommended-grid-img">
									<a href="single.html"><img src="resource/images/ma6.jpg" alt="" /></a>
									<div class="time small-time show-time">
										<p>3:34</p>
									</div>
									<div class="clck show-clock">
										<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
									</div>
								</div>
								<div class="resent-grid-info recommended-grid-info">
									<h5><a href="single.html" class="title">Varius sit sed Nullam interdum</a></h5>
									<p class="author"><a href="#" class="author">John Maniya</a></p>
									<p class="views">4,545 views</p>
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class="col-md-2 show-grid-right">
					<h3>Upcoming Channels</h3>
					<div class="show-right-grids">
						<ul>
							<li class="tv-img"><a href="#"><img src="resource/images/tv.png" alt="" /></a></li>
							<li><a href="#">Spanish TV Shows</a></li>
						</ul>
					</div>
					<div class="show-right-grids">
						<ul>
							<li class="tv-img"><a href="#"><img src="resource/images/tv.png" alt="" /></a></li>
							<li><a href="#">Italian TV Shows</a></li>
						</ul>
					</div>
					<div class="show-right-grids">
						<ul>
							<li class="tv-img"><a href="#"><img src="resource/images/tv.png" alt="" /></a></li>
							<li><a href="#">Dutch TV Shows</a></li>
						</ul>
					</div>
					<div class="show-right-grids">
						<ul>
							<li class="tv-img"><a href="#"><img src="resource/images/tv.png" alt="" /></a></li>
							<li><a href="#">Chinese TV Shows</a></li>
						</ul>
					</div>
					<div class="show-right-grids">
						<ul>
							<li class="tv-img"><a href="#"><img src="resource/images/tv.png" alt="" /></a></li>
							<li><a href="#">Russian TV Shows</a></li>
						</ul>
					</div>
					<div class="show-right-grids">
						<ul>
							<li class="tv-img"><a href="#"><img src="resource/images/tv.png" alt="" /></a></li>
							<li><a href="#">Hindi TV Shows</a></li>
						</ul>
					</div>
					<div class="show-right-grids">
						<ul>
							<li class="tv-img"><a href="#"><img src="resource/images/tv.png" alt="" /></a></li>
							<li><a href="#">Telugu TV Shows</a></li>
						</ul>
					</div>
					<div class="show-right-grids">
						<ul>
							<li class="tv-img"><a href="#"><img src="resource/images/tv.png" alt="" /></a></li>
							<li><a href="#">Tamil TV Shows</a></li>
						</ul>
					</div>
					<div class="show-right-grids">
						<ul>
							<li class="tv-img"><a href="#"><img src="resource/images/tv.png" alt="" /></a></li>
							<li><a href="#">Marathi TV Shows</a></li>
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
  </body>
</html>