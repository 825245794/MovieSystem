<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'history.jsp' starting page</title>
    
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
				<div class="main-grids news-main-grids">
					<div class="recommended-info">
						<h3>History Of My Play</h3>
						<p class="history-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus efficitur, eros 
							sed suscipit porttitor, diam felis tempus odio, eget sollicitudin purus sem sit amet dolor. Integer euismod 
							non mauris commodo rutrum. Nulla risus felis, rhoncus vel est sed, consequat efficitur ante. Phasellus mi 
							sapien, accumsan vitae lobortis vitae, laoreet dapibus metus. Pellentesque id ipsum vel nibh imperdiet 
							imperdiet ac ac mauris. Suspendisse ac leo augue. Nullam venenatis massa ut pulvinar scelerisque. Duis vel 
							vehicula urna. Quisque semper vitae lectus a feugiat. Sed dignissim egestas nunc, nec suscipit mauris 
							interdum lobortis.
							<span>Duis iaculis justo nec tellus bibendum rhoncus. Phasellus quis pretium leo, sed porta ligula. Mauris 
							vitae ornare nisi, et dapibus elit. Vestibulum vel urna malesuada, bibendum orci sed, venenatis nunc. Morbi 
							dignissim est tortor, ac aliquam augue blandit at. Pellentesque pulvinar convallis augue, in sodales risus 
							feugiat et. Ut viverra pellentesque tellus eu consectetur. Maecenas eget massa nulla. Fusce convallis et 
							sapien a hendrerit. Etiam viverra maximus dolor, ac tempor sapien.
							</span>
						</p>
						<div class="history-grids">
							<div class="col-md-1 history-left">
								<p>2001</p>
							</div>
							<div class="col-md-11 history-right">
								<h5>Praesent a dui sit amet turpis tempus gravida eu quis mi</h5>
								<p>Morbi eget malesuada nunc. Nullam ac congue ipsum, non tristique orci. Sed placerat porta justo, at sollicitudin velit. Curabitur sed hendrerit justo, eu vehicula lorem.
								Morbi eget malesuada nunc. Nullam ac congue ipsum, non tristique orci. Sed placerat porta justo, at sollicitudin velit. Curabitur sed hendrerit justo, eu vehicula lorem.</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="history-grids">
							<div class="col-md-1 history-left">
								<p>2003</p>
							</div>
							<div class="col-md-11 history-right">
								<h5>Duis iaculis justo nec tellus bibendum rhoncus pretium leo</h5>
								<p>Morbi eget malesuada nunc. Nullam ac congue ipsum, non tristique orci. Sed placerat porta justo, at sollicitudin velit. Curabitur sed hendrerit justo, eu vehicula lorem.
								Morbi eget malesuada nunc. Nullam ac congue ipsum, non tristique orci. Sed placerat porta justo, at sollicitudin velit. Curabitur sed hendrerit justo, eu vehicula lorem.</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="history-grids">
							<div class="col-md-1 history-left">
								<p>2005</p>
							</div>
							<div class="col-md-11 history-right">
								<h5>Class aptent taciti sociosqu ad litora torquent per conubia</h5>
								<p>Morbi eget malesuada nunc. Nullam ac congue ipsum, non tristique orci. Sed placerat porta justo, at sollicitudin velit. Curabitur sed hendrerit justo, eu vehicula lorem.
								Morbi eget malesuada nunc. Nullam ac congue ipsum, non tristique orci. Sed placerat porta justo, at sollicitudin velit. Curabitur sed hendrerit justo, eu vehicula lorem.</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="history-grids">
							<div class="col-md-1 history-left">
								<p>2007</p>
							</div>
							<div class="col-md-11 history-right">
								<h5>Integer sem sem, ornare id velit a, semper fringilla magna</h5>
								<p>Morbi eget malesuada nunc. Nullam ac congue ipsum, non tristique orci. Sed placerat porta justo, at sollicitudin velit. Curabitur sed hendrerit justo, eu vehicula lorem.
								Morbi eget malesuada nunc. Nullam ac congue ipsum, non tristique orci. Sed placerat porta justo, at sollicitudin velit. Curabitur sed hendrerit justo, eu vehicula lorem.</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="history-grids">
							<div class="col-md-1 history-left">
								<p>2009</p>
							</div>
							<div class="col-md-11 history-right">
								<h5>Praesent a dui sit amet turpis tempus gravida eu quis mi</h5>
								<p>Morbi eget malesuada nunc. Nullam ac congue ipsum, non tristique orci. Sed placerat porta justo, at sollicitudin velit. Curabitur sed hendrerit justo, eu vehicula lorem.
								Morbi eget malesuada nunc. Nullam ac congue ipsum, non tristique orci. Sed placerat porta justo, at sollicitudin velit. Curabitur sed hendrerit justo, eu vehicula lorem.</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="history-grids">
							<div class="col-md-1 history-left">
								<p>2011</p>
							</div>
							<div class="col-md-11 history-right">
								<h5>Integer sem sem, ornare id velit a, semper fringilla magna</h5>
								<p>Morbi eget malesuada nunc. Nullam ac congue ipsum, non tristique orci. Sed placerat porta justo, at sollicitudin velit. Curabitur sed hendrerit justo, eu vehicula lorem.
								Morbi eget malesuada nunc. Nullam ac congue ipsum, non tristique orci. Sed placerat porta justo, at sollicitudin velit. Curabitur sed hendrerit justo, eu vehicula lorem.</p>
							</div>
							<div class="clearfix"> </div>
						</div>
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
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
  </body>
</html>