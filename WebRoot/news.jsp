<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>新闻</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
  <jsp:include page="quote_css.jsp" flush="true"></jsp:include>
  <jsp:include page="quote_js.jsp" flush="true"></jsp:include>
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
    </nav>
	
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
				<div class="recommended">
					<div class="recommended-grids english-grid">
						<div class="recommended-info">
							<div class="heading">
								<h3>Top News</h3>
							</div>
							<div class="heading-right">
								<a  href="#small-dialog8" class="play-icon popup-with-zoom-anim">Subscribe</a>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.html"><img src="resource/images/n7.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>7:30</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div> 
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.html" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.html"><img src="resource/images/n8.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>9:34</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.html" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.html"><img src="resource/images/n9.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>5:34</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.html" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.html"><img src="resource/images/n10.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>6:55</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.html" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.html"><img src="resource/images/n11.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>8:04</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.html" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.html"><img src="resource/images/n12.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>7:34</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.html" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="recommended">
					<div class="recommended-grids">
						<div class="recommended-info">
							<div class="heading">
								<h3>Update News</h3>
							</div>
							<div class="heading-right">
								<a  href="#small-dialog8" class="play-icon popup-with-zoom-anim">Subscribe</a>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.html"><img src="resource/images/n1.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>7:30</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.html" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.html"><img src="resource/images/n2.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>9:34</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.html" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.html"><img src="resource/images/n3.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>5:34</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.html" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.html"><img src="resource/images/n4.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>6:55</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.html" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.html"><img src="resource/images/n5.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>8:04</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.html" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.html"><img src="resource/images/n6.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>7:34</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.html" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="recommended">
					<div class="recommended-grids">
						<div class="recommended-info">
							<div class="heading">
								<h3>Popular Sports News</h3>
							</div>
							<div class="heading-right">
								<a  href="#small-dialog8" class="play-icon popup-with-zoom-anim">Subscribe</a>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.html"><img src="resource/images/sp4.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>7:30</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.html" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.html"><img src="resource/images/g2.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>9:34</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.html" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.html"><img src="resource/images/sp1.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>5:34</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.html" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.html"><img src="resource/images/sp6.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>6:55</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.html" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.html"><img src="resource/images/g3.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>8:04</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.html" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="col-md-2 resent-grid recommended-grid sports-recommended-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="single.html"><img src="resource/images/sp2.jpg" alt="" /></a>
								<div class="time small-time sports-tome">
									<p>7:34</p>
								</div>
								<div class="clck sports-clock">
									<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								</div>
							</div>
							<div class="resent-grid-info recommended-grid-info">
								<h5><a href="single.html" class="title">Nullam interdum metus varius sit sed viverra</a></h5>
								<p class="author"><a href="#" class="author">John Maniya</a></p>
								<p class="views">2,114,200 views</p>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
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
