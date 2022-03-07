<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="include/header.jsp" %>
<head>
	<meta charset="utf-8">
	<meta name="keywords" content="">
	<meta name="description" content="">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
	<title>架上添安-安防产品领导者</title>
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/js_z.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/fore/form_new/reset.css"/>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/fore/form_new/thems.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/fore/form_new/responsive.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/fore/fore_header.css">

</head>

<body>
<%--  头部  --%>
<div class="header">
	<img src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/logo.png">
	<div class="our-navbar">
		<ul class="nav_li">
			<li>
				<div class="home-nav-menu">
					<a href="${pageContext.request.contextPath}/" target="_blank" >网站首页</a>
				</div>
			</li>
			<li>
				<div class="home-nav-menu">
					<a href="" target="_blank">产品展示</a>
				</div>
			</li>
			<li>
				<div class="home-nav-menu">
					<a href="${pageContext.request.contextPath}/about" target="_blank">关于我们</a>
				</div>
			</li>
			<li>
				<div class="home-nav-menu">
					<a href="${pageContext.request.contextPath}/news" target="_blank">新闻资讯</a>
				</div>
			</li>
			<li>
				<div class="home-nav-menu">
					<a href="${pageContext.request.contextPath}/contact" target="_blank">联系我们</a>
				</div>
			</li>
		</ul>
	</div>

	<div class="mallSearch">
		<form action="${pageContext.request.contextPath}/product" method="get">
			<div class="mallSearch-input">
				<input class="header_search_input" type="text" name="product_name" placeholder="搜索 建筑类别/产品名称"
					   maxlength="50">
				<input class="header_search_button" type="submit" value="搜索">
			</div>
		</form>
	</div>
</div>
<!--幻灯片-->
<div class="banner banner_s"><img src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/banner_a.png" alt=""/></div>
<!--幻灯片-->
<div class="scd clearfix">
	<div class="scd_l">
		<div class="name"><img src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/sn1.png" width="139" height="47" alt=""/></div>
		<ul class="s_nav clearfix" id="catelist">
<%--			<li class="now">--%>
<%--				<a href="" ><span>脚手架系列</span></a>--%>
<%--			</li>--%>
<%--			<li>--%>
<%--				<a href=""><span>扣件系列</span></a>--%>
<%--			</li>--%>
		</ul>
	</div>
	<div class="scd_r">
		<div class="r_title" id="r_title">
<%--			脚手架系列<span>/<em>Scaffolding series</em></span>--%>
		</div>
		<div class="scd_m">
			<ul class="pro clearfix" id="shoplist">
<%--				<li>--%>
<%--					<img src="Assets/upload/pic7.jpg" alt=""/>--%>
<%--					<div class="des">--%>
<%--						<p>IRB 2400 with force control</p>--%>
<%--						<a href="">+ 查看详情</a>--%>
<%--					</div>--%>
<%--				</li>--%>
			</ul>
			<div class="space_hx">&nbsp;</div>
			<div class="pages">
				<a href="" class="bg">上一页</a>
				<a href="" class="now">1</a>
				<a href="">2</a>
				<a href="">3</a>
				<a href="">4</a>
				<a href="">5</a>
				<a href="">……</a>
				<a href="" class="bg">下一页</a>
			</div>
		</div>
	</div>
</div>
<%@ include file="include/footer.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/fore/fore_proPage.js"></script>
</body>

