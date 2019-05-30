<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<body onload="f()">
				<div class="drop-navigation drop-navigation">
				  <ul class="nav nav-sidebar">
					<li id="li1"><a href="index.jsp" class="home-icon"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>主页</a></li>
					<li id="li2"><a href="movies.jsp" class="user-icon"><span class="glyphicon glyphicon-home glyphicon-blackboard" aria-hidden="true"></span>推荐电影</a></li>
					<li id="li3"><a href="history.html" class="sub-icon"><span class="glyphicon glyphicon-home glyphicon-hourglass" aria-hidden="true"></span>最新电影</a></li>
				
					<li id="li4"><a href="user/news.jsp" class="news-icon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>新闻</a></li>
					<li id="li5"><a href="user/news.jsp" class="news-icon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>新闻</a></li>
					<li id="li6"><a href="user/news.jsp" class="news-icon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>新闻</a></li>
				  </ul>
				  <!-- script-for-menu -->
						<script>
							$( ".top-navigation" ).click(function() {
							$( ".drop-navigation" ).slideToggle( 300, function() {
							// Animation complete.
							});
							});
							function f(){
							var url=window.location.href;
							var i=0;
							if(url.indexOf("movies")!=-1){
							i=1;
							}
							switch(i){
							case 0: {$('#li1').addClass("active");break;}
							case 1: {$('#li2').addClass("active");break;}
							}
							}
						</script>
					<div class="side-bottom">
						<div class="side-bottom-icons">
							<ul class="nav2">
								<li><a href="#" class="facebook"> </a></li>
								<li><a href="#" class="facebook twitter"> </a></li>
								<li><a href="#" class="facebook chrome"> </a></li>
								<li><a href="#" class="facebook dribbble"> </a></li>
							</ul>
						</div>
						<div class="copyright">
							<p>Copyright &copy; 2017.MovieSystem All rights reserved. <a href="" target="_blank" title=""></a></p>
						</div>
					</div>
				</div>
				</div>
				</body>