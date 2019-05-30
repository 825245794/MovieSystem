<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>License ServerLicense Server
  <head>
    <base href="<%=basePath%>">
    
    <title>关于我们</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
				<div class="main-grids about-main-grids">
					<div class="recommended-info">
						<h3>关于我们</h3>
						<p class="history-text">电影股份有限公司成立于2005年，隶属于集团。截至2015年底，公司拥有已开业影城292家，银幕总数2557块。2015年公司观影人次1.51亿人次，票房总收入63亿元，约占全国14%的票房份额，连续七年票房收入、市场份额、观影人次稳居全国第一。

　　<span>2015年1月22日，电影正式登陆A股市场，在深圳证券交易所中小企业板块上市，成为首家登陆A股的院线公司。2016年1月1日起，电影正式成为深证成份指数、中小板指数、深证100指数三大样本股指数。
　电影立足于“一切以观众的观影价值和观影体验为核心“的经营理念，多年来坚持高标准的设计建造理念、高配置的电影放映技术、高品质的标准化服务，为超过5000万的“万影迷”打造理想的观影场景。2015年，电影正式发布”会员+“战略，打造全球领先的电影生活生态圈，标志着电影全面启动由一个连锁电影放映终端向科技型、平台型、生态型公司的跨越转型。
							
							</span>
						</p>
						<div class="about-grids">
							<div class="about-bottom-grids">
								<div class="col-sm-6 about-left">
									<div class="about-left-grids">
										<div class="col-md-2 about-left-img">
											<span class="glyphicon glyphicon-user glyphicon-facetime-video" aria-hidden="true"></span>
										</div>
										<div class="col-md-10 about-left-info">
											<a href="#">如何网上购票了</a>
											<p>注册成功后即可购票。</p>
											<p>只要您想购买影票的影片未开场，您都可以在网上购买该影片的影票。</p>
											<p>电影网系统与影院售票系统直接相连，您在网上看到的座位图就是我们影城的实际座位图，请您放心选择自己喜欢的座位。</p>
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
								<div class="col-sm-6 about-right">
									<div class="about-left-grids">
										<div class="col-md-2 about-left-img">
											<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
										</div>
										<div class="col-md-10 about-left-info">
											<a href="#">优惠信息</a>
											<p>周二全天半价;周三会员生日免费观影;周四女士半价;儿童优惠：1.3米以下儿童可免费无座观看2D、3D影片；IMAX影片需购票，可享受七折优惠（VIP厅除外），一名成人限携带一名儿童（仅限1.3米以下，观看均有3D眼镜）</p>
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="about-bottom-grids">
								<div class="col-sm-6 about-left">
									<div class="about-left-grids">
										<div class="col-md-2 about-left-img">
											<span class="glyphicon glyphicon-user glyphicon-book" aria-hidden="true"></span>
										</div>
										<div class="col-md-10 about-left-info">
											<a href="#">退票规则</a>
											<p>1、	不晚于影片开场前3小时而且未取票，可通过电影网办理退票。</p>
<p>2、	使用积分、兑换码所兑换影票不支持退票。</p>
<p>3、	参与活动购买特价票不支持退票。</p>
<p>4、	使用话费支付购票不支持退票。</p>
<p>5、	所购卖品不可单独退换，需执行影票退票政策。</p>
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
								<div class="col-sm-6 about-right">
									<div class="about-left-grids">
										<div class="col-md-2 about-left-img">
											<span class="glyphicon glyphicon-user glyphicon-headphones" aria-hidden="true"></span>
										</div>
										<div class="col-md-10 about-left-info">
											<a href="#">成为会员</a>
											<p>加入会员后，只要在电影网消费即可获得积分，每消费一元积一分。影票、 卖品均可积分。活动赠送的积分可兑换礼品，但不作为升级判定积分。</p>
											<p>为影迷们精心打造的时尚、尊享、超值体验的电影俱乐部，成为俱乐部会员，您将享受万人迷俱乐部提供的会员专属礼遇！</p>
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="about-bottom-grids">
								<div class="col-sm-6 about-left">
									<div class="about-left-grids">
										<div class="col-md-2 about-left-img">
											<span class="glyphicon glyphicon-user glyphicon-folder-open" aria-hidden="true"></span>
										</div>
										<div class="col-md-10 about-left-info">
											<a href="#">免责声明</a>
											<p>本网站所载内容仅作为参考信息，不是本公司或关联公司作出的任何承诺或发出的要约。任何单位或个人因本网站或依赖本网站所载内容进行交易或投资等任何行为所导致的任何损失，均应自行承担，与本公司或关联公司及本网站无关。</p>
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
								<div class="col-sm-6 about-right">
									<div class="about-left-grids">
										<div class="col-md-2 about-left-img">
											<span class="glyphicon glyphicon-user glyphicon-phone" aria-hidden="true"></span>
										</div>
										<div class="col-md-10 about-left-info">
											<a href="#">联系我们</a>
<p>团体票/大客户：010-85587491</p>
<p>全国媒体宣传/大型市场合作：010-85587519</p>
<p>全国影院项目咨询与合作：010-85587622</p>
<p> 全国增值/联盟业务电话：010-85587501</p>
										</div>
										<div class="clearfix"> </div>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
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
  </body>
</html>
  </body>
</html>
