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
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/fore/fore_proDtlPage.js"></script>
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
					<a href="${pageContext.request.contextPath}/proAll" target="_blank">产品展示</a>
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
<div class="proDtl">
	<div class="r_title">
		${requestScope.searchValue}商品标题<span>/<em>Company profile</em></span>
	</div>
	<div class="scd_m">
		<div class="about clearfix">
			<img src="Assets/upload/pic9.jpg" alt="" style="float:left; margin-right:20px;" width="370" height="230"/>
			这里是商品介绍 
			<p>这里是商品介绍</p>
		</div>
	</div>
</div>
<%@ include file="include/footer.jsp" %>
</body>

