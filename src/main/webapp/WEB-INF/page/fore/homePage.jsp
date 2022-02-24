<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="include/header.jsp" %>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/fore/form_new/shop.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/fore/form_new/reset.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/js_z.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/plugins/FlexSlider/flexslider.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/res/plugins/FlexSlider/jquery.flexslider.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery.SuperSlide.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/fore/form_new/thems.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/fore/form_new/responsive.css">
    <script language="javascript">
        $(window).load(function() {
            $('.flexslider').flexslider({
                animation: "slide"
            });
        });

        $(function() {

            "use strict"

            var init = "No items yet!";
            var counter = 0;

            // Initial Cart
            $(".counter").html(init);

            // Add Items To Basket
            function addToBasket() {
                counter++;
                $(".counter").html(counter).animate({
                    'opacity' : '0'
                },300, function() {
                    $(".counter").delay(300).animate({
                        'opacity' : '1'
                    })
                })
            }

            // Add To Basket Animation
            $("button").on("click", function() {
                addToBasket(); $(this).parent().parent().find(".product_overlay").css({
                    'transform': ' translateY(0px)',
                    'opacity': '1',
                    'transition': 'all ease-in-out .45s'
                }).delay(1500).queue(function() {
                    $(this).css({
                        'transform': 'translateY(-500px)',
                        'opacity': '0',
                        'transition': 'all ease-in-out .45s'
                    }).dequeue();
                });
            });
        });
    </script>
</head>

    <script src="${pageContext.request.contextPath}/res/js/jquery-color-2.1.2.js"></script>
    <script src="${pageContext.request.contextPath}/res/js/fore/fore_home.js"></script>

    <link href="${pageContext.request.contextPath}/res/css/fore/fore_home.css" rel="stylesheet"/>
    <title>架上添安-安防产品领导者</title>
    <script>
        $(function () {
            $(".nav_li").find("li").hover(
                function () {
                    $(this).find(".nav-menu-quick_DirectPromoDiv").css("display", "block");
                }
                , function () {
                    $(this).find(".nav-menu-quick_DirectPromoDiv").css("display", "none");
                }
            );
        });
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
                    <a href="${pageContext.request.contextPath}/newIdea/ideaCircle" target="_blank" >网站首页</a>
                </div>
            </li>
            <li>
                <div class="home-nav-menu">
                    <a href="${pageContext.request.contextPath}/newIdea/ideaCircle" target="_blank">产品展示</a>
                </div>
            </li>
            <li>
                <div class="home-nav-menu">
                    <a href="${pageContext.request.contextPath}/newIdea/afterSales" target="_blank">关于我们</a>
                </div>
            </li>
            <li>
                <div class="home-nav-menu">
                    <a href="${pageContext.request.contextPath}/newIdea/aboutUs" target="_blank">新闻资讯</a>
                </div>
            </li>
            <li>
                <div class="home-nav-menu">
                    <a href="${pageContext.request.contextPath}/newIdea/aboutUs" target="_blank">服务支持</a>
                </div>
            </li>
            <li>
                <div class="home-nav-menu">
                    <a href="${pageContext.request.contextPath}/newIdea/aboutUs" target="_blank">联系我们</a>
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
<%--  轮播  --%>
<div class="banner">
    <c:forEach var="product" items="${requestScope.specialProductList}" varStatus="i">
        <img src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/banner/${product.product_id}.jpg"
             name="${product.product_id}" id="banner${i.count}"
             <c:if test="${i.count == 1}">style="display: block;"</c:if> />
    </c:forEach>
</div>
<div class="banner_main">
    <ul class="banner_slider">
        <li id="slider_1" style="background: rgba(255,255,255,0.4)"></li>
        <li id="slider_2"></li>
        <li id="slider_3"></li>
        <li id="slider_4"></li>
        <li id="slider_5"></li>
        <li id="slider_6"></li>
    </ul>
    <a href="#"></a>
</div>
<%--  商品展示  --%>
<div class="bg_a">
    <div class="i_mb">
        <div class="i_name"><a href=""><img src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/n1.png" width="122" height="51" alt=""/></a></div>
        <div>
            <div class='row'>
                <div class='product--blue'>
                    <div class='product_inner'>
                        <img src='http://wellandgood.com/wp-content/uploads/2012/07/Nike-Free-30-Womens-Running-Shoe-511495_600_A.png' width='300'>
                        <p>鞋子</p>
                        <p>标签</p>
                        <p>零售</p>
                        <button>产品详细</button>
                    </div>
                    <div class='product_overlay'>
                        <h2>产品详细</h2>
                        <i class='fa fa-check'></i>
                    </div>
                </div>
                <div class='product--orange'>
                    <div class='product_inner'>
                        <img src='http://wellandgood.com/wp-content/uploads/2012/07/Nike-Free-30-Womens-Running-Shoe-511495_600_A.png' width='300'>
                        <p>鞋子</p>
                        <p>标签</p>
                        <p>零售</p>
                        <button>产品详细</button>
                    </div>
                    <div class='product_overlay'>
                        <h2>产品详细</h2>
                        <i class='fa fa-check'></i>
                    </div>
                </div>
                <div class='product--red'>
                    <div class='product_inner'>
                        <img src='http://wellandgood.com/wp-content/uploads/2012/07/Nike-Free-30-Womens-Running-Shoe-511495_600_A.png' width='300'>
                        <p>鞋子</p>
                        <p>标签</p>
                        <p>零售</p>
                        <button>产品详细</button>
                    </div>
                    <div class='product_overlay'>
                        <h2>产品详细</h2>
                        <i class='fa fa-check'></i>
                    </div>
                </div>
                <div class='product--green'>
                    <div class='product_inner'>
                        <img src='http://wellandgood.com/wp-content/uploads/2012/07/Nike-Free-30-Womens-Running-Shoe-511495_600_A.png' width='300'>
                        <p>鞋子</p>
                        <p>标签</p>
                        <p>零售</p>
                        <button>产品详细</button>
                    </div>
                    <div class='product_overlay'>
                        <h2>产品详细</h2>
                        <i class='fa fa-check'></i>
                    </div>
                </div>
                <div class='product--yellow'>
                    <div class='product_inner'>
                        <img src='http://wellandgood.com/wp-content/uploads/2012/07/Nike-Free-30-Womens-Running-Shoe-511495_600_A.png' width='300'>
                        <p>鞋子</p>
                        <p>标签</p>
                        <p>零售</p>
                        <button>产品详细</button>
                    </div>
                    <div class='product_overlay'>
                        <h2>产品详细</h2>
                        <i class='fa fa-check'></i>
                    </div>
                </div>
                <div class='product--pink'>
                    <div class='product_inner'>
                        <img src='http://wellandgood.com/wp-content/uploads/2012/07/Nike-Free-30-Womens-Running-Shoe-511495_600_A.png' width='300'>
                        <p>鞋子</p>
                        <p>标签</p>
                        <p>零售</p>
                        <button>产品详细</button>
                    </div>
                    <div class='product_overlay'>
                        <h2>产品详细</h2>
                        <i class='fa fa-check'></i>
                    </div>
                </div>
            </div>

            <div class="more"><a href="">+ 查看更多</a></div>
        </div>
    </div>
</div>
<%--  服务支持  --%>
<div class="space_hx">&nbsp;</div>
<div class="i_mc">
    <div class="i_name"><a href=""><img src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/n2.png" width="119" height="57" alt=""/></a></div>
    <div class="i_m">
        <ul class="clearfix">
            <li>
                <div class="tu"><img src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/s1.png" alt=""/></div>
                <h6>仿真模拟</h6>
                <p>仿真模拟可以帮助项目节省开发时间与运转资金，仿真对于项目前期方案规划与设计效率的提高是显著的。</p>
            </li>
            <li>
                <div class="tu"><img src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/s2.png" alt=""/></div>
                <h6>系统设计</h6>
                <p>仿真模拟可以帮助项目节省开发时间与运转资金，仿真对于项目前期方案规划与设计效率的提高是显著的。</p>
            </li>
            <li>
                <div class="tu"><img src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/s3.png" alt=""/></div>
                <h6>安装调试</h6>
                <p>仿真模拟可以帮助项目节省开发时间与运转资金，仿真对于项目前期方案规划与设计效率的提高是显著的。</p>
            </li>
            <li>
                <div class="tu"><img src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/s4.png" alt=""/></div>
                <h6>陪训服务</h6>
                <p>仿真模拟可以帮助项目节省开发时间与运转资金，仿真对于项目前期方案规划与设计效率的提高是显著的。</p>
            </li>
            <li>
                <div class="tu"><img src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/s5.png" alt=""/></div>
                <h6>售后服务</h6>
                <p>仿真模拟可以帮助项目节省开发时间与运转资金，仿真对于项目前期方案规划与设计效率的提高是显著的。</p>
            </li>
        </ul>
    </div>
</div>
<div class="space_hx">&nbsp;</div>
<div class="i_md">
    <div class="i_name"><a href=""><img src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/n3.png" width="118" height="58" alt=""/></a></div>
    <div class="i_m">
        <ul class="clearfix">
            <li>
                <a href="">
                    <img src="Assets/upload/pic3.jpg" alt=""/>
                    <div class="title">架上添安责任有限公司成立</div>
                    <p class="des">2022-2-23,架上添安责任有限公司成立......</p>
                </a>
            </li>
            <li>
                <a href="">
                    <img src="Assets/upload/pic3.jpg" alt=""/>
                    <div class="title">架上添安责任有限公司成立</div>
                    <p class="des">2022-2-23,架上添安责任有限公司成立......</p>
                </a>
            </li>
            <li>
                <a href="">
                    <img src="Assets/upload/pic3.jpg" alt=""/>
                    <div class="title">架上添安责任有限公司成立</div>
                    <p class="des">2022-2-23,架上添安责任有限公司成立......</p>
                </a>
            </li>
            <li>
                <a href="">
                    <img src="Assets/upload/pic3.jpg" alt=""/>
                    <div class="title">架上添安责任有限公司成立</div>
                    <p class="des">2022-2-23,架上添安责任有限公司成立......</p>
                </a>
            </li>
        </ul>
        <div class="more"><a href="">+ 更多新闻</a></div>
    </div>
</div>
<%@ include file="include/footer.jsp" %>
</body>