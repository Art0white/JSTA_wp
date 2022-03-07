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

    <script type="text/javascript" src="https://api.map.baidu.com/api?v=1.0&type=webgl&ak=w708q8eloq4RNP6LGbDeMYmoQGR7O0gQ">
    </script>

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
                            <a href="" target="_blank">联系我们</a>
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
        <div class="name"><img src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/sn4.png" width="142" height="47" alt=""/></div>
        <ul class="s_nav clearfix">
            <li class="now">
                <a href=""><span>联系方式</span></a>
            </li>
        </ul>
    </div>
    <div class="scd_r">
        <div class="r_title">
            联系方式<span>/<em>Contact information</em></span>
        </div>
        <div class="scd_m">
            <div class="contact clearfix">
                <h1>西安市架上添安有限公司</h1>
                <dl class="clearfix">
<%--                    <dt><a href=""><img src="Assets/upload/pic10.jpg" alt=""/></a></dt>--%>
                    <dt></dt>
                    <dd>
                        <p>地址：西安市临潼区西安科技大学</p>
                        <p>TEL：0912-XXXXXXXX</p>
                        <p>FAX：0912-XXXXXXXX</p>
                        <p>E-mail：XXXX@163.com    http：//www.ads.中国</p>
                        <p>全国统一服务热线：400 XXXXXXX</p>
                    </dd>
                </dl>
                <div class="space_hx">&nbsp;</div>

                <div id="container" style="width: 100%; height: 400px"></div>
                <script type="text/javascript">
                    var map = new BMapGL.Map("container");
                    // 创建地图实例
                    var point = new BMapGL.Point(109.19155, 34.36615);
                    // 创建点坐标
                    map.centerAndZoom(point, 15);
                    // 初始化地图，设置中心点坐标和地图级别
                </script>
            </div>
        </div>
    </div>
</div>
<%@ include file="include/footer.jsp" %>
</body>
