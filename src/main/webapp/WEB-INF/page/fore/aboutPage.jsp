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
          <a href="${pageContext.request.contextPath}/proAll" target="_blank">产品展示</a>
        </div>
      </li>
      <li>
        <div class="home-nav-menu">
          <a href="" target="_blank">关于我们</a>
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
        <div class="name"><img src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/sn3.png" width="143" height="47" alt=""/></div>
        <ul class="s_nav clearfix">
            <li class="now">
                <a href=""><span>公司简介</span></a>
            </li>
            <li>
                <a href=""><span>行业知识</span></a>
            </li>
<%--            <li>--%>
<%--                <a href=""><span>公司荣誉</span></a>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <a href=""><span>公司文化</span></a>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <a href=""><span>公司历程</span></a>--%>
<%--            </li>--%>
        </ul>
    </div>
    <div class="scd_r">
        <div class="r_title">
          公司简介<span>/<em>Company profile</em></span>
        </div>
        <div class="scd_m">
            <div class="about clearfix">
                <img src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/ourCompany/company1.png" alt="" style="float:left; margin-right:20px;" width="370" height="230"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为了更好地进行研发项目产品，项目组由跨学院、跨专业的成员组成，项目组成员分别从事安全工程专业、车辆工程专业、自动化工程专业、软件工程专业以及地理信息工程工程专业，管理与法学专业。均具备较强的创新创业能力及合作意识，分工明确、优势互补、不断完善项目产品。项目组成员拥有机械加工工厂，所有成员均在机械加工工厂里进行了数月的机械制造实习，具备独立生产产品的能力。截至目前，此项目产品已经参加过校级安全设计大赛、机械制造创新大赛，全国大学生电子商务“创新 创意 创业”挑战赛（三创赛）等多个国家比赛，均取得了优异成绩。
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在项目产品研发前期，团队成员在中国知网、万方数据平台等多个权威网站上，广泛查询了相关建筑工地上脚手架使用情况的信息，并且走访了多家建筑单位，在多家建筑工地施工现场进行深入的考察。并与众多建筑工人，尤其是在脚手架上进行高空作业的施工工人，进行了广泛交谈，收集到了一些关于脚手架安全问题的信息。经过全方位的搜集信息以及深入交流，已经充分了解了目前脚手架存在的安全漏洞。</p>
            </div>
        </div>
    </div>
  </div>
</div>
<%@ include file="include/footer.jsp" %>
</body>
