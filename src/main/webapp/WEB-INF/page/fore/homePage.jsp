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

    <script src="${pageContext.request.contextPath}/res/js/jquery-color-2.1.2.js"></script>
    <script src="${pageContext.request.contextPath}/res/js/fore/fore_home.js"></script>
    <link href="${pageContext.request.contextPath}/res/css/fore/fore_home.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/res/css/fore/fore_header.css" rel="stylesheet"/>
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
                    <a href="" target="_blank" >网站首页</a>
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
<%--  轮播  --%>
<div class="banner1">
    <img src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/banner/lb1.png" style="display: block;"/>
<%--    <c:forEach var="product" items="${requestScope.specialProductList}" varStatus="i">--%>
<%--        <img src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/banner/42.jpg"--%>
<%--             name="${product.product_id}" id="banner${i.count}"--%>
<%--             <c:if test="${i.count == 1}">style="display: block;"</c:if> />--%>
<%--    </c:forEach>--%>
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
                <div class='product--red'>
                    <div class='product_inner'>
                        <img src='http://r76ab0jr2.hb-bkt.clouddn.com/%E4%BA%A7%E5%93%811.png' width='300'>
                        <p>移动式脚手架安全防护装置</p>
<%--                        <p>标签</p>--%>
<%--                        <p>零售</p>--%>
                        <button>产品详细</button>
                    </div>
                    <div class='product_overlay'>
                        <h2>产品详细</h2>
                        <i class='fa fa-check'></i>
                    </div>
                </div>
                <div class='product--orange'>
                    <div class='product_inner'>
                        <img src='http://r76ab0jr2.hb-bkt.clouddn.com/%E4%BA%A7%E5%93%813.png' width='300'>
                        <p>扣件预警装置</p>
<%--                        <p>标签</p>--%>
<%--                        <p>零售</p>--%>
                        <button>产品详细</button>
                    </div>
                    <div class='product_overlay'>
                        <h2>产品详细</h2>
                        <i class='fa fa-check'></i>
                    </div>
                </div>
<%--                <div class='product--blue'>--%>
<%--                    <div class='product_inner'>--%>
<%--                        <img src='http://r76ab0jr2.hb-bkt.clouddn.com/%E4%BA%A7%E5%93%812.png' width='300'>--%>
<%--                        <p>移动安全卡座</p>--%>
<%--                        <p>标签</p>--%>
<%--                        <p>零售</p>--%>
<%--                        <button>产品详细</button>--%>
<%--                    </div>--%>
<%--                    <div class='product_overlay'>--%>
<%--                        <h2>产品详细</h2>--%>
<%--                        <i class='fa fa-check'></i>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class='product--green'>--%>
<%--                    <div class='product_inner'>--%>
<%--                        <img src='http://wellandgood.com/wp-content/uploads/2012/07/Nike-Free-30-Womens-Running-Shoe-511495_600_A.png' width='300'>--%>
<%--                        <p>鞋子</p>--%>
<%--                        <p>标签</p>--%>
<%--                        <p>零售</p>--%>
<%--                        <button>产品详细</button>--%>
<%--                    </div>--%>
<%--                    <div class='product_overlay'>--%>
<%--                        <h2>产品详细</h2>--%>
<%--                        <i class='fa fa-check'></i>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class='product--yellow'>--%>
<%--                    <div class='product_inner'>--%>
<%--                        <img src='http://wellandgood.com/wp-content/uploads/2012/07/Nike-Free-30-Womens-Running-Shoe-511495_600_A.png' width='300'>--%>
<%--                        <p>鞋子</p>--%>
<%--                        <p>标签</p>--%>
<%--                        <p>零售</p>--%>
<%--                        <button>产品详细</button>--%>
<%--                    </div>--%>
<%--                    <div class='product_overlay'>--%>
<%--                        <h2>产品详细</h2>--%>
<%--                        <i class='fa fa-check'></i>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class='product--pink'>--%>
<%--                    <div class='product_inner'>--%>
<%--                        <img src='http://wellandgood.com/wp-content/uploads/2012/07/Nike-Free-30-Womens-Running-Shoe-511495_600_A.png' width='300'>--%>
<%--                        <p>鞋子</p>--%>
<%--                        <p>标签</p>--%>
<%--                        <p>零售</p>--%>
<%--                        <button>产品详细</button>--%>
<%--                    </div>--%>
<%--                    <div class='product_overlay'>--%>
<%--                        <h2>产品详细</h2>--%>
<%--                        <i class='fa fa-check'></i>--%>
<%--                    </div>--%>
<%--                </div>--%>
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
                <h6>产品了解</h6>
                <p>公司产品均可在平台上进行了解，建筑安全脚手架的常规尺寸、高度和占地面积均可在平台产品中进行查看。</p>
            </li>
            <li>
                <div class="tu"><img src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/s2.png" alt=""/></div>
                <h6>适用场景</h6>
                <p>本公司建筑安全产品可用于个人、公司、企业等使用，目前本公司产品可用于个人家庭装修、建筑工地和企业使用。</p>
            </li>
            <li>
                <div class="tu"><img src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/s3.png" alt=""/></div>
                <h6>安装调试</h6>
                <p>凡是购买本公司产品，无论个人、公司还是大型企业，统一具有上门安装服务，工作人员手把手教会为止。</p>
            </li>
            <li>
                <div class="tu"><img src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/s4.png" alt=""/></div>
                <h6>租赁服务</h6>
                <p>本公司产品不仅可供大型企业购买，对于小型公司或短期使用的个人也可提供租赁服务，租赁用户也可享受上门安装服务。</p>
            </li>
            <li>
                <div class="tu"><img src="${pageContext.request.contextPath}/res/images/fore/WebsiteImage/s5.png" alt=""/></div>
                <h6>售后服务</h6>
                <p>凡是购买本公司产品，全天24小时技术客服热线保持畅通，在产品的使用过程中遇到问题随时拨打客服热线，快速解决您的问题。</p>
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
                    <img src="http://r76ab0jr2.hb-bkt.clouddn.com/%E5%AE%9E%E7%94%A8%E6%96%B0%E5%9E%8B%E4%B8%93%E5%88%A9.png" alt=""/>
                    <div class="title">获批脚手架安全防护装置专利</div>
                    <p class="des">2021年12月7日,脚手架安全防护装置专...</p>
                </a>
            </li>
            <li>
                <a href="">
                    <img src="http://r76ab0jr2.hb-bkt.clouddn.com/%E5%9B%BD%E5%AE%B6%E7%9F%A5%E8%AF%86%E4%BA%A7%E6%9D%83.png" alt=""/>
                    <div class="title">智能扣件松动检测装置知识产权</div>
                    <p class="des">2022年1月19日,团队研发的脚手架扣知...</p>
                </a>
            </li>
            <li>
                <a href="">
                    <img src="http://r76ab0jr2.hb-bkt.clouddn.com/%E7%BB%93%E4%B8%9A%E8%AF%81%E4%B9%A6.png" alt=""/>
                    <div class="title">架上添安项目以优异成绩结业</div>
                    <p class="des">2021年12月31日,架上添安项目在《星火...</p>
                </a>
            </li>
            <li>
                <a href="">
                    <img src="http://r76ab0jr2.hb-bkt.clouddn.com/%E5%AE%89%E5%85%A8%E6%89%A3.png" alt=""/>
                    <div class="title">智能安全扣正在研发中</div>
                    <p class="des">经走访多家建筑工地，均发现脚手架不...</p>
                </a>
            </li>
        </ul>
        <div class="more"><a href="">+ 更多新闻</a></div>
    </div>
</div>
<%@ include file="include/footer.jsp" %>
</body>