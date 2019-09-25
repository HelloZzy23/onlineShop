<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%
//    pageContext.setAttribute("path", request.getContextPath());
    String appPath=request.getContextPath();
%>

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/onlineshop?useUnicode=true&characterEncoding=utf-8"
                   user="root"  password="123456"/>

<sql:query dataSource="${snapshot}" var="result">
    SELECT * from commodity;
</sql:query>
<html>


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="js/jquery-3.3.1.min.js"></script>

    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="bootstrap/js/bootstrap.min.js"></script>

    <!--引入自己写的css文件-->

    <link href="mycss/shangping.css" rel="stylesheet">
    <link href="mycss/categoryWithCarousel.css" rel="stylesheet">
    <link href="mycss/commodityDetail.css" rel="stylesheet">


    <!--引入js文件-->
    <script type="text/javascript" src="myjs/commodityClassfication.js"></script>
</head>
<body>
<%--<a href="<%=appPath%>/allMember">查看所有会员</a>--%>
<%--<a href="<%=appPath%>/login">登陆界面</a>--%>
<%--<h4>${message}</h4>--%>
<jsp:include page="navigation.jsp" flush="true" />
<jsp:include page="search.jsp" flush="true"/>


<!--内容文件 商品轮播图实现-->
<div class="row">
    <div class="col">

        <div class="categoryWithCarousel">
            <!--轮播图头部信息-->
            <div class="headbar">
                <div class="head ">
                    <span class="glyphicon glyphicon-th-list" style="margin-left:10px"></span>
                    <span style="margin-left:10px">商品分类</span>
                </div>
                <!--右侧分类信息-->
                <div class="rightMenu">
                    <span><a href="#nowhere"><img src="http://how2j.cn/tmall/img/site/chaoshi.png"></a></span>
                    <span><a href="#nowhere"><img src="http://how2j.cn/tmall/img/site/guoji.png"></a></span>
                    <span>
                <a href="#nowhere">
                    平板电视
                </a></span>
                    <span>

                <a href="#nowhere">
                    电热水器
                </a></span>
                </div>
            </div>
            <!--商品分类-->
            <div style="position: relative">
                <div class="categoryMenu ">
                    <div class="eachCategory" cid="83">
                        <span class="glyphicon glyphicon-link"></span>
                        <a href="#nowhere">
                            平板电视
                        </a>
                    </div>
                    <div class="eachCategory" cid="82">
                        <span class="glyphicon glyphicon-link"></span>
                        <a href="#nowhere">
                            马桶
                        </a>
                    </div>
                    <div class="eachCategory" cid="81">
                        <span class="glyphicon glyphicon-link"></span>
                        <a href="#nowhere">
                            沙发
                        </a>
                    </div>
                    <div class="eachCategory" cid="80">
                        <span class="glyphicon glyphicon-link"></span>
                        <a href="#nowhere">
                            电热水器
                        </a>
                    </div>
                    <div class="eachCategory" cid="79">
                        <span class="glyphicon glyphicon-link"></span>
                        <a href="#nowhere">
                            平衡车
                        </a>
                    </div>
                    <div class="eachCategory" cid="78">
                        <span class="glyphicon glyphicon-link"></span>
                        <a href="#nowhere">
                            扫地机器人
                        </a>
                    </div>
                    <div class="eachCategory" cid="77">
                        <span class="glyphicon glyphicon-link"></span>
                        <a href="#nowhere">
                            原汁机
                        </a>
                    </div>
                    <div class="eachCategory" cid="76">
                        <span class="glyphicon glyphicon-link"></span>
                        <a href="#nowhere">
                            冰箱
                        </a>
                    </div>
                    <div class="eachCategory" cid="75">
                        <span class="glyphicon glyphicon-link"></span>
                        <a href="#nowhere">
                            空调
                        </a>
                    </div>
                    <div class="eachCategory" cid="74">
                        <span class="glyphicon glyphicon-link"></span>
                        <a href="#nowhere">
                            女表
                        </a>
                    </div>
                    <div class="eachCategory" cid="73">
                        <span class="glyphicon glyphicon-link"></span>
                        <a href="#nowhere">
                            男表
                        </a>
                    </div>
                    <div class="eachCategory" cid="72">
                        <span class="glyphicon glyphicon-link"></span>
                        <a href="#nowhere">
                            男士手拿包
                        </a>
                    </div>
                    <div class="eachCategory" cid="71">
                        <span class="glyphicon glyphicon-link"></span>
                        <a href="#nowhere">
                            男士西服
                        </a>
                    </div>
                    <div class="eachCategory" cid="69">
                        <span class="glyphicon glyphicon-link"></span>
                        <a href="#nowhere">
                            时尚男鞋
                        </a>
                    </div>
                    <div class="eachCategory" cid="68">
                        <span class="glyphicon glyphicon-link"></span>
                        <a href="#nowhere">
                            品牌女装
                        </a>
                    </div>
                    <div class="eachCategory" cid="64">
                        <span class="glyphicon glyphicon-link"></span>
                        <a href="#nowhere">
                            太阳镜
                        </a>
                    </div>
                    <div class="eachCategory" cid="60">
                        <span class="glyphicon glyphicon-link"></span>
                        <a href="#nowhere">
                            安全座椅
                        </a>
                    </div>
                </div>
            </div>
            <!--商品分类详情-->
            <div style="position: relative;left: 0;top: 0;">
                <div class="productsAsideCategorys" cid="83">
                    <div class="row ">
                        <a href="#nowhere">
                            屏大影院
                        </a>
                        <a href="#nowhere">
                            周末
                        </a>
                        <a href="#nowhere">
                            新品特惠
                        </a>
                        <a href="#nowhere">
                            32吋电视机
                        </a>
                        <a href="#nowhere">
                            智能网络
                        </a>
                        <div class="seperator"></div>
                    </div>
                    <div class="row ">
                        <a href="#nowhere">
                            USB高清解
                        </a>
                        <a href="#nowhere">
                            芒果TV在线
                        </a>
                        <a href="#nowhere">
                            抢购价
                        </a>
                        <a href="#nowhere">
                            USB解码
                        </a>
                        <a href="#nowhere">
                            32英吋
                        </a>
                        <a href="#nowhere">
                            10核
                        </a>
                        <a href="#nowhere">
                            TCL品牌日
                        </a>
                        <div class="seperator"></div>
                    </div>
                    <div class="row ">
                        <a href="#nowhere">
                            不要赠品
                        </a>
                        <a href="#nowhere">
                            新品上市
                        </a>
                        <a href="#nowhere">
                            4K硬屏
                        </a>
                        <a href="#nowhere">
                            领100元券
                        </a>
                        <a href="#nowhere" style="color: rgb(135, 206, 250);">
                            智能高清
                        </a>
                        <a href="#nowhere">
                            8月，酷暑
                        </a>
                        <a href="#nowhere" style="color: rgb(135, 206, 250);">
                            8月大促
                        </a>
                        <a href="#nowhere">
                            天猫定制
                        </a>
                        <div class="seperator"></div>
                    </div>
                    <div class="row ">
                        <a href="#nowhere">
                            智能操作系统
                        </a>
                        <a href="#nowhere">
                            金色外观
                        </a>
                        <a href="#nowhere">
                            三星屏幕
                        </a>
                        <a href="#nowhere">
                            客厅爆款
                        </a>
                        <a href="#nowhere">
                            八核配置
                        </a>
                        <a href="#nowhere">
                            限时特惠
                        </a>
                        <div class="seperator"></div>
                    </div>
                    <div class="row ">
                        <a href="#nowhere">
                            限时特惠
                        </a>
                        <a href="#nowhere">
                            热销爆款
                        </a>
                        <a href="#nowhere">
                            4K全高清
                        </a>
                        <a href="#nowhere" style="color: rgb(135, 206, 250);">
                            六核智能
                        </a>
                        <a href="#nowhere">
                            14核4K
                        </a>
                        <a href="#nowhere">
                            YUNOS
                        </a>
                        <a href="#nowhere" style="color: rgb(135, 206, 250);">
                            YUNOS
                        </a>
                        <a href="#nowhere">
                            64位处理器
                        </a>
                        <div class="seperator"></div>
                    </div>
                    <div class="row ">
                        <a href="#nowhere">
                            YUNOS
                        </a>
                        <a href="#nowhere">
                            微信电视
                        </a>
                        <a href="#nowhere">
                            4k超清
                        </a>
                        <a href="#nowhere">
                            64位真4K
                        </a>
                        <a href="#nowhere">
                            10核机芯
                        </a>
                        <a href="#nowhere">
                            V字黑釉底座
                        </a>
                        <a href="#nowhere">
                            4K超清
                        </a>
                        <div class="seperator"></div>
                    </div>
                    <div class="row ">
                        <a href="#nowhere">
                            64位14核
                        </a>
                        <a href="#nowhere">
                            海量影视
                        </a>
                        <a href="#nowhere">
                            人气爆款
                        </a>
                        <a href="#nowhere">
                            限时特惠
                        </a>
                        <a href="#nowhere">
                            真4K屏
                        </a>
                        <a href="#nowhere">
                            65吋巨屏
                        </a>
                        <a href="#nowhere" style="color: rgb(135, 206, 250);">
                            4K超清视界
                        </a>
                        <a href="#nowhere">
                            限时特惠
                        </a>
                        <div class="seperator"></div>
                    </div>
                    <div class="row ">
                        <a href="#nowhere">
                            55寸旗舰
                        </a>
                        <a href="#nowhere">
                            4K机皇
                        </a>
                        <a href="#nowhere">
                            曲面机皇
                        </a>
                        <a href="#nowhere" style="color: rgb(135, 206, 250);">
                            轻薄4K
                        </a>
                        <div class="seperator"></div>
                    </div>
                </div>
            </div>
            <!--轮播图-->
            <div data-ride="carousel" class="carousel-of-product carousel slide" id="carousel-of-product">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li class="active" data-slide-to="0" data-target="#carousel-of-product"></li>
                    <li data-slide-to="1" data-target="#carousel-of-product" class=""></li>
                    <li data-slide-to="2" data-target="#carousel-of-product" class=""></li>
                    <li data-slide-to="3" data-target="#carousel-of-product" class=""></li>
                </ol>
                <!-- 轮播图图片 -->
                <div role="listbox" class="carousel-inner">
                    <!--图片 1.jpg设为当前激活状态-->
                    <div class="item active">
                        <img src="https://aecpm.alicdn.com/simba/img/TB1W4nPJFXXXXbSXpXXSutbFXXX.jpg" class="carousel carouselImage">
                    </div>
                    <div class="item">
                        <img src="http://how2j.cn/tmall/img/lunbo/2.jpg" class="carouselImage">
                    </div>
                    <div class="item">
                        <img src="http://how2j.cn/tmall/img/lunbo/3.jpg" class="carouselImage">
                    </div>
                    <div class="item">
                        <img src="http://how2j.cn/tmall/img/lunbo/4.jpg" class="carouselImage">
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>



<!--内容文件 商品详情-->

<div class="row">
    <div class="homepageCategoryProducts">
        <%--鞋子--%>
        <div class="eachHomepageCategoryProducts">
                <div class="left-mark"></div>
                <span class="categoryTitle">商品</span>
                <br>
            <c:forEach var="row" items="${result.rows}">
                <div class="productItem">
                    <a href="<%=appPath%>/addShopCart/${row.comId}"><img width="100px" src="${row.imgUrl}"></a>

                    <a href="WEB-INF/jsp/addShopCart.jsp" class="productItemDescLink">
							<span class="productItemDesc">${row.introduce}</span>
                    </a>
                    <span class="productPrice">${row.currentPrice}</span>
                </div>
            </c:forEach>

                <div style="clear:both"></div>
            </div>

        <%--最后的图片--%>
        <img src="http://how2j.cn/tmall/img/site/end.png" class="endpng" id="endpng">
    </div>
</div>



<jsp:include page="footer.jsp"/>


</body>
</html>
