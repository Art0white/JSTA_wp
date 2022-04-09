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
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/slick.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/fore/form_new/slick.css"/>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/fore/form_new/style.css"/>
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

<div class="container">
	<div class="pshowtit">
		扣件预警装置
		<span>整合数字资源,技术驱动营销</span>
	</div>
	<div class="procon">
		<div class="proimg clearfix">
			<div class="big">
				<ul>
					<li><img class="vcenter" src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/ourShow/sh2.png" alt="" /></li>
					<%--					<li><img class="vcenter" src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/ourShow/sh2.png" alt="" /></li>--%>
					<%--					<li><img class="vcenter" src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/ourShow/sh2.png" alt="" /></li>--%>
					<%--					<li><img class="vcenter" src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/ourShow/sh2.png" alt="" /></li>--%>
					<%--					<li><img class="vcenter" src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/ourShow/sh2.png" alt="" /></li>--%>
					<%--					<li><img class="vcenter" src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/ourShow/sh2.png" alt="" /></li>--%>
					<%--					<li><img class="vcenter" src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/ourShow/sh2.png" alt="" /></li>--%>
				</ul>
			</div>
			<div class="small">
				<span><img class="vcenter" src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/ourShow/sh2.png" alt="" /></span>
				<span><img class="vcenter" src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/ourShow/sh2.png" alt="" /></span>
				<span><img class="vcenter" src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/ourShow/sh2.png" alt="" /></span>
				<span><img class="vcenter" src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/ourShow/sh2.png" alt="" /></span>
				<span><img class="vcenter" src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/ourShow/sh2.png" alt="" /></span>
				<span><img class="vcenter" src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/ourShow/sh2.png" alt="" /></span>
				<span><img class="vcenter" src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/ourShow/sh2.png" alt="" /></span>
			</div>
		</div>
		<div class="detailed_pro">
			<div class="protit">
				<span>产品详细</span>
			</div>
			<table>
				<tr>
					<td>Measurement feature</td>
					<td>Accurate measurement of small flowrate</td>
				</tr>
				<tr>
					<td>Measurement range</td>
					<td>1:1000</td>
				</tr>
				<tr>
					<td>Measurable water</td>
					<td>City water,plant water,agricultural water*1</td>
				</tr>
				<tr>
					<td>Meter connection method</td>
					<td>Flange(JWWA standard)type</td>
				</tr>
				<tr>
					<td>Body material</td>
					<td>Cast stainless steel</td>
				</tr>
				<tr>
					<td>Flow path</td>
					<td>Cone structure</td>
				</tr>
			</table>
		</div>
		<div class="parameter">
			<div class="protit">
				<span>产品参数</span>
			</div>
			<p>在科技创新领域，架上添安集团分别与复旦大学、上海大学、华师大等知名院校达成战略伙伴关系，分别成立了云计算、大数据、智能营销等不同领域的产学研合作平台。2015年6月，唯星在美国硅谷成立研发中心，开拓海外科研基地；自成立至今唯星集团已取得60个软件著作权及1项发明专利；同时，经过多年在技术创新领域的探索与积累，唯星集团目前已获得虹口区科技小巨人企业、高新技术企业、双软认证企业、院士专家工作站、上海名牌企业等多项荣誉资质称号。</p>
			<p>在科技创新领域，架上添安集团分别与复旦大学、上海大学、华师大等知名院校达成战略伙伴关系，分别成立了云计算、大数据、智能营销等不同领域的产学研合作平台。2015年6月，唯星在美国硅谷成立研发中心，开拓海外科研基地；自成立至今唯星集团已取得60个软件著作权及1项发明专利；同时，经过多年在技术创新领域的探索与积累，唯星集团目前已获得虹口区科技小巨人企业、高新技术企业、双软认证企业、院士专家工作站、上海名牌企业等多项荣誉资质称号。</p>
		</div>
		<div class="inquiry">
			<div class="protit">
				<span>在线报价</span>
			</div>
			<p>为传统企业互联网商业转型各个阶段提供全方位应用支撑</p>
			<div class="inquirycon">
				<label><input type="text" placeholder="产品名称" /><span>*</span></label>
				<label><input type="text" placeholder="手机" /><span>*</span></label>
				<label><input type="text" placeholder="联系人" /><span>*</span></label>
				<label><input type="text" placeholder="邮箱" /><span>*</span></label>
				<label class="content"><textarea placeholder="留言内容"></textarea><span>*</span></label>
				<%--				<label class="code"><input type="text" placeholder="验证码"/><img src="images/code.jpg" alt="" /><a href="#">看不清，换一张</a></label>--%>
				<label class="sub"><input type="submit" value="立即提交"/></label>
			</div>
		</div>
	</div>
</div>

<%--<div class="proDtl">--%>
<%--	<div class="r_title">--%>
<%--		${requestScope.searchValue}商品标题<span>/<em>Company profile</em></span>--%>
<%--	</div>--%>
<%--	<div class="scd_m">--%>
<%--		<div class="about clearfix">--%>
<%--			<img src="Assets/upload/pic9.jpg" alt="" style="float:left; margin-right:20px;" width="370" height="230"/>--%>
<%--			这里是商品介绍 --%>
<%--			<p>这里是商品介绍</p>--%>
<%--		</div>--%>
<%--	</div>--%>
<%--</div>--%>
<%@ include file="include/footer.jsp" %>
</body>

