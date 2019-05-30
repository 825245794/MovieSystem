<%@page import="com.film.entity.PlaceEntity"%>
<%@page import="com.film.bean.CommentBean"%>
<%@page import="com.film.bean.AccountBean"%>
<%@page import="com.film.entity.FilmEntity"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<% 
    List<FilmEntity> film = (List<FilmEntity>)request.getAttribute("film");
    List<FilmEntity> favourite = (List<FilmEntity>)request.getAttribute("favourite");
    List<CommentBean> comment = (List<CommentBean>)request.getAttribute("comment");
    List<PlaceEntity> calendar = (List<PlaceEntity>)request.getAttribute("calendar");
    AccountBean account =(AccountBean)session.getAttribute("account");
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>电影详情</title>
    
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
				<div class="col-sm-8 single-left">
					<div class="song" style="width: 50%;">
						<div class="song-info">
							<h3><%= film.get(0).getFilmname() %></h3>	
					</div>
						<div class="video-grid" style="width: 70%;">
							<img src="resource/movies/<%= film.get(0).getImg() %>" style="width: 100%;"></img>
						</div>
					</div>
					<div class="song-grid-right" style="float: left;">
						<div class="share">
							<h5></h5>
							<ul>
							 <% for(int index=0;index<1;index++){ %>
							    <li>&nbsp;</li>
							    <% } %>
							    <li>观影日期</li>
							    <li>&nbsp;</li>
							    <li style="text-align: left;">观影厅:</li>
							    <li>&nbsp;</li>
							    <li style="text-align: left;">观影时间:</li>
							    <li>&nbsp;</li>
							    <li style="text-align: left;">剩余票数:</li>
							    <li>&nbsp;</li>
							    <li style="text-align: left;">电影时长:</li>
							    <li>&nbsp;</li>
							    <li style="text-align: left;">售价:</li>
							    <li>&nbsp;</li>
							    <% for(int index=0;index<2;index++){ %>
							    <li>&nbsp;</li>
							    <% } %>
								<li><input value="取消" class="btn btn-success" style="background-color: red; border-color: red; width:135px;"></li>
							</ul>
						</div>
					</div>
						<div class="song-grid-right" style="float: left;">
						<div class="share">
						<form action="seat.jsp">
						<input type="text" name="filmname" value="<%= film.get(0).getFilmname()%>" style="display: none;">
						<input type="text" name="placename" value="" style="display: none;" id="placename">
						<input type="text" name="watchname" value="" style="display: none;" id="watchname">
							<h5></h5>
							<ul>
							 <% for(int index=0;index<1;index++){ %>
							    <li>&nbsp;</li>
							    <% } %>
							    <li>
							    <select id="date" name="date" onchange="AjaxPlaceDate(<%= request.getParameter("filmid") %>,this.options[this.options.selectedIndex].value)">
							    <option>--选择观影日期--</option>
							    <% for(int index=0;index<calendar.size();index++){ %>
							    <option value="<%= calendar.get(index).getPlacedate() %>">
							    <%= calendar.get(index).getPlacedate() %>
							    </option>
							    <% } %>
							    </select>
							    </li>
							    <li>&nbsp;</li>
							    <li>
							    <select name="placeroom" id="placeroom" dir="ltr" onchange="AjaxPlaceRoom(<%= request.getParameter("filmid") %>,this.options[this.options.selectedIndex].value)">
							    <option value="default">--请选择观影厅--</option>
							    </select>
							    </li>
							    <li>&nbsp;</li>
							    <li>
							    <select name="WatchTime" id="WatchTime" onchange="watchtimereq()">
							    <option>--请选择观影时间--</option>
							    </select>
							    </li>
							    <li>&nbsp;</li>
							    <li id="store">--张</li>
							    <li>&nbsp;</li>
							    <li><%= film.get(0).getFilmtime() %>分钟</li>
							    <li>&nbsp;</li>
							    <li><%= film.get(0).getPrice() %>元/张</li>
							    <li>&nbsp;</li>
							    <% for(int index=0;index<2;index++){ %>
							    <li>&nbsp;</li>
							    <% } %>
								<li><input value="购买" class="btn btn-success" style="width:135px; height: 40px;" type="submit"></li>
							</ul>
							</form>
						</div>
					</div>
					<div class="clearfix"> </div>
					<div class="published">
						<script src="jquery.min.js"></script>
							<script>
								$(document).ready(function () {
									size_li = $("#myList li").size();
									x=1;
									$('#myList li:lt('+x+')').show();
									$('#loadMore').click(function () {
										x= (x+1 <= size_li) ? x+1 : size_li;
										$('#myList li:lt('+x+')').show();
									});
									$('#showLess').click(function () {
										x=(x-1<0) ? 1 : x-1;
										$('#myList li').not(':lt('+x+')').hide();
									});
								});
							</script>
							<div class="load_more">	
								<ul id="myList">
									<li>
										<h4><strong style="color: black;">电影名:</strong><%= film.get(0).getFilmname() %></h4>
										<p><strong style="color: black;">电影类型:</strong><%= film.get(0).getFilmtype() %></p>
										<p><strong style="color: black;">电影演员:</strong><%= film.get(0).getFilmactor() %></p>
										<p><strong style="color: black;">电影详情:</strong><%= film.get(0).getFilminfo() %></p>
										
									</li>
									<li>
										
										<div class="load-grids">
											<div class="load-grid">
												<p>Category</p>
											</div>
											<div class="load-grid">
												<a href="movies.html">Entertainment</a>
											</div>
											<div class="clearfix"> </div>
										</div>
									</li>
								</ul>
							</div>
					</div>
					<div class="all-comments">
						<div class="all-comments-info">
							<a href="#">所有评论 (<%= comment.size() %>)</a>
							<div class="box">
							<% if(account!=null){ %>
								<form action="comment!sendComment" method="post"> 		           					   
									<input type="text" name="userid" value="<%= account.getUserid() %>" style="display: none;">
									<input type="text" name="filmid" value="<%= request.getParameter("filmid") %>" style="display: none;">
									<textarea placeholder="请在此评论....." required=" " name="commentcontent"></textarea>
									<div class="clearfix"> </div>
									<input type="submit"  class="btn btn-primary" value="提交">
									<div class="clearfix"> </div>
								</form>
								<% }else{ %>
								<form action="" method="post"> 
									<textarea placeholder="请先登录..." required=" " name="commentcontent" disabled="disabled"></textarea>
									<div class="clearfix"> </div>
									<div class="clearfix"> </div>
									</form>
								<% } %>
							</div>
							
						</div>
						<div class="media-grids">
						<% for(int index=0;index<comment.size();index++){ %>
						    	<div class="media">
							<% if(comment.get(index).getVip().equals("0")){ %>
								<h5><%= comment.get(index).getUsername() %></h5>
								
								<% } else{ %>
								<h5 style="color: red;"><img src="resource/images/vip.png">&nbsp;&nbsp;&nbsp;<%= comment.get(index).getUsername() %></h5>
								<% } %>
								<div class="media-left">
							   <% if(comment.get(index).getImg()==null||comment.get(index).getImg().equals("null")){ %>
										<a href="javascript:void(0);"></a>
										<% }else{ %>		
							<a href="javascript:void(0);" style="background-image: url(resource/userimg/<%= account.getImg() %>); width:40px; height:40px;"></a>
								
								<% } %>
								</div>
								<div class="media-body">
									<p><%= comment.get(index).getCommentcontent() %></p>
									<span>发布时间 :<a href="#"> <%= comment.get(index).getCommentdate() %></a></span>
								</div>
							</div>
							<% } %>
						
						</div>
					</div>
				</div>
							<div class="col-md-4 single-right">
					<h3>猜你喜欢</h3>
					<div class="single-grid-right">
					<% for(int index=0;index<favourite.size();index++){ %>
						<div class="single-right-grids">
							<div class="col-md-4 single-right-grid-left">
								<a href="film!filmDetail?filmid=<%= favourite.get(index).getFilmid() %>"><img src="resource/movies/<%= favourite.get(index).getImg() %>" alt="" /></a>
							</div>
							<div class="col-md-8 single-right-grid-right">
								<a href="film!filmDetail?filmid=<%= favourite.get(index).getFilmid() %>" class="title"> <%= favourite.get(index).getFilmname() %></a>
								<p class="author"><a href="film!filmDetail?filmid=<%= favourite.get(index).getFilmid() %>" class="author">时长:<%= favourite.get(index).getFilmtime() %>分</a></p>
								<p class="views">评分:<%= favourite.get(index).getFilmstar() %>分</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<% } %>
	
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
	<script type="text/javascript">
	function watchtimereq(){
	var obj = document.getElementById('WatchTime'); 
	var index = obj.selectedIndex; 
	var text = obj.options[index].text;
	$("#watchname").val(text);
	GetStore($("#WatchTime").val());
	}
	function GetStore(placeid){
	var loader=new net.AjaxRequest("film!store?nocache="+new Date().getTime()+"&placeid="+placeid, getStores, onError,  "POST");
}

   function getStores(){
	var info=this.req.responseText;
	$("#store").text(info+"张");
}
	 
	</script>
  </body>
</html>
