<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>中林首页</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/zhonglingxm2.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
</head>

<body id="top">

	<!--header-->
    <div class="zl-header">
    	<div class="zl-hd w1200">
        	<p class="hd-p1 f-l">
            	Hi!您好，欢迎来到宅客微购，请登录  <a href="注册.html">【免费注册】</a>
            </p>
        	<p class="hd-p2 f-r">
            	<a href="index.html">返回首页 (个人中心)</a><span>|</span>
                <a href="购物车.html">我的购物车</a><span>|</span>
                <a href="我的订单.html">我的订单</a>
            </p>
            <div style="clear:both;"></div>
        </div>
    </div>
	
    <!--logo search weweima-->
    <div class="logo-search w1200">
    	<div class="logo-box f-l">
        	<div class="logo f-l">
            	<a href="index.html" title="中林logo"><img src="${pageContext.request.contextPath}/images/zl2-01.gif" /></a>
            </div>
        	<div class="shangjia f-l">
            	<a href="JavaScript:;" class="shangjia-a1">[ 切换城市 ]</a>
            	<a href="JavaScript:;" class="shangjia-a2">商家入口</a>
                <div class="select-city">
        	<div class="sl-city-top">
            	<p class="f-l">切换城市</p>
                <a class="close-select-city f-r" href="JavaScript:;">
                	<img src="${pageContext.request.contextPath}/images/close-select-city.gif" />
                </a>
            </div>
            <div class="sl-city-con">
            	<p>西北</p>
                <dl>
                	<dt>重庆市</dt>
                    <dd>
                    	<a href="JavaScript:;">长寿区</a>
                        <a href="JavaScript:;">巴南区</a>
                        <a href="JavaScript:;">南岸区</a>
                        <a href="JavaScript:;">九龙坡区</a>
                        <a href="JavaScript:;">沙坪坝区</a>
                        <a href="JavaScript:;">北碚</a>
                        <a href="JavaScript:;">江北区</a>
                        <a href="JavaScript:;">渝北区</a>
                        <a href="JavaScript:;">大渡口区</a>
                        <a href="JavaScript:;">渝中区</a>
                        <a href="JavaScript:;">万州</a>
                        <a href="JavaScript:;">武隆</a>
                        <a href="JavaScript:;">晏家</a>
                        <a href="JavaScript:;">长寿湖</a>
                        <a href="JavaScript:;">云集</a>
                        <a href="JavaScript:;">华中</a>
                        <a href="JavaScript:;">林封</a>
                        <a href="JavaScript:;">双龙</a>
                        <a href="JavaScript:;">石回</a>
                        <a href="JavaScript:;">龙凤呈祥</a>
                        <a href="JavaScript:;">朝天门</a>
                        <a href="JavaScript:;">中华</a>
                        <a href="JavaScript:;">玉溪</a>
                        <a href="JavaScript:;">云烟</a>
                        <a href="JavaScript:;">红塔山</a>
                        <a href="JavaScript:;">真龙</a>
                        <a href="JavaScript:;">天子</a>
                        <a href="JavaScript:;">娇子</a>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                <dl>
                	<dt>新疆</dt>
                    <dd>
                    	<a href="JavaScript:;">齐乌鲁木</a>
                        <a href="JavaScript:;">昌吉</a>
                        <a href="JavaScript:;">巴音</a>
                        <a href="JavaScript:;">郭楞</a>
                        <a href="JavaScript:;">伊犁</a>
                        <a href="JavaScript:;">阿克苏</a>
                        <a href="JavaScript:;">喀什</a>
                        <a href="JavaScript:;">哈密</a>
                        <a href="JavaScript:;">克拉玛依</a>
                        <a href="JavaScript:;">博尔塔拉</a>
                        <a href="JavaScript:;">吐鲁番</a>
                        <a href="JavaScript:;">和田</a>
                        <a href="JavaScript:;">石河子</a>
                        <a href="JavaScript:;">克孜勒苏</a>
                        <a href="JavaScript:;">阿拉尔</a>
                        <a href="JavaScript:;">五家渠</a>
                        <a href="JavaScript:;">图木舒克</a>
                        <a href="JavaScript:;">库尔勒</a>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                <dl>
                	<dt>甘肃</dt>
                    <dd>
                    	<a href="JavaScript:;">兰州</a>
                        <a href="JavaScript:;">天水</a>
                        <a href="JavaScript:;">巴音</a>
                        <a href="JavaScript:;">白银</a>
                        <a href="JavaScript:;">庆阳</a>
                        <a href="JavaScript:;">平凉</a>
                        <a href="JavaScript:;">酒泉</a>
                        <a href="JavaScript:;">张掖</a>
                        <a href="JavaScript:;">武威</a>
                        <a href="JavaScript:;">定西</a>
                        <a href="JavaScript:;">金昌</a>
                        <a href="JavaScript:;">陇南</a>
                        <a href="JavaScript:;">临夏</a>
                        <a href="JavaScript:;">嘉峪关</a>
                        <a href="JavaScript:;">甘南</a>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                <dl>
                	<dt>宁夏</dt>
                    <dd>
                    	<a href="JavaScript:;">银川</a>
                        <a href="JavaScript:;">吴忠</a>
                        <a href="JavaScript:;">石嘴山</a>
                        <a href="JavaScript:;">中卫</a>
                        <a href="JavaScript:;">固原</a>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                <dl>
                	<dt>青海</dt>
                    <dd>
                    	<a href="JavaScript:;">西宁</a>
                        <a href="JavaScript:;">海西</a>
                        <a href="JavaScript:;">海北</a>
                        <a href="JavaScript:;">果洛</a>
                        <a href="JavaScript:;">海东</a>
                        <a href="JavaScript:;">黄南</a>
                        <a href="JavaScript:;">玉树</a>
                        <a href="JavaScript:;">海南</a>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
            </div>
        </div>
            </div>
            <div style="clear:both;"></div>
        </div>
        <div class="erweima f-r">
        	<a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-04.gif" /></a>
        </div>
        <div class="search f-r">
        	<div class="search-info">
            	<input type="text" placeholder="请输入商品名称" />
                <button>搜索</button>
                <div style="clear:both;"></div>
            </div>
            <ul class="search-ul">
            	<li><a href="JavaScript:;">绿豆</a></li>
            	<li><a href="JavaScript:;">大米</a></li>
            	<li><a href="JavaScript:;">驱蚊</a></li>
            	<li><a href="JavaScript:;">洗面奶</a></li>
            	<li><a href="JavaScript:;">格力空调</a></li>
            	<li><a href="JavaScript:;">洗发</a></li>
            	<li><a href="JavaScript:;">护发</a></li>
            	<li><a href="JavaScript:;">葡萄</a></li>
            	<li><a href="JavaScript:;">脉动</a></li>
            	<li><a href="JavaScript:;">海鲜</a></li>
            	<li><a href="JavaScript:;">水产</a></li>
                <div style="clear:both;"></div>
            </ul>
        </div>
        <div style="clear:both;"></div>
    </div>

	<!--nav-->
    <div class="nav-box">
    	<div class="nav-kuai w1200">
        	<div class="nav-kuaijie f-l">
            	<a href="JavaScript:;" class="kj-tit1">商品分类快捷</a>
                <div class="kuaijie-box">
                    <c:forEach items="${allCategory}" begin="0" end="5" var="categoryExt">
                        <div class="kuaijie-info">
                            <dl class="kj-dl1">
                                <dt><img src="${pageContext.request.contextPath}/images/zl2-07.gif" /><a href="${pageContext.request.contextPath}/product/toSearchProduct.do?cid=${categoryExt.cid}">${categoryExt.cname}</a></dt>
                                <dd>
                                    <c:forEach items="${categoryExt.categorySeconds}" begin="0" end="2" var="categorySecond" varStatus="vs">
                                    <a href="${pageContext.request.contextPath}/product/toSearchProduct.do?csid=${categorySecond.csid}">${categorySecond.csname}</a>
                                        <c:if test="${!vs.last}"><span>|</span></c:if>
                                    </c:forEach>
                                </dd>
                            </dl>
                            <div class="kuaijie-con">
                                    <dl class="kj-dl2" style="display:inline-block">
                                        <dt><a href="${pageContext.request.contextPath}/product/toSearchProduct.do?cid=${categoryExt.cid}">${categoryExt.cname}</a></dt>
                                        <dd>
                                            <c:forEach items="${categoryExt.categorySeconds}" var="categorySecond" varStatus="vs">
                                            <a href="${pageContext.request.contextPath}/product/toSearchProduct.do?csid=${categorySecond.csid}">${categorySecond.csname}</a>
                                                <c:if test="${!vs.last}"><span>|</span></c:if>
                                            </c:forEach>
                                        </dd>
                                    </dl>
                                <div style="clear:both;"></div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <ul class="nav-font f-l">
                <c:forEach items="${allCategory}" var="categoryExt">
            	<li><a href="${pageContext.request.contextPath}/product/toSearchProduct.do?cid=${categoryExt.cid}">${categoryExt.cname}</a></li>
                </c:forEach>
            	<span><img src="${pageContext.request.contextPath}/images/zl2-05.gif" /></span>
                <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
        </div>
    </div>
	
    <!--banner-->
    <div class="banner">
    	<ul class="ban-ul1">
        	<li><a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/banner.png" /></a></li>
        	<li><a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/banner.png" /></a></li>
        	<li><a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/banner.png" /></a></li>
        	<li><a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/banner.png" /></a></li>
        </ul>
        <div class="ban-box w1200">
        	<ol class="ban-ol1">
            	<li class="current"></li>
            	<li></li>
            	<li></li>
            	<li></li>
               	<div style="clear:both;"></div>
            </ol>
        </div>
    </div>
    
    <!--热门推荐-->
    <div class="zl-tuijian w1200">
    	<div class="tuijian-left f-l">
        	<img src="${pageContext.request.contextPath}/images/zl2-14.png" />
        </div>
    	<ul class="tuijian-right f-l">
        	<li>
            	<div class="li-box li-box1">
                	<a href="JavaScript:;" class="li-a1">锦尚世家</a>
                	<a href="JavaScript:;" class="li-a2">锦绣花苑　传承世家</a>
                    <a href="JavaScript:;" class="li-a3">more</a>
                </div>
            </li>
        	<li>
            	<div class="li-box li-box2">
                	<a href="JavaScript:;" class="li-a1">速8快捷酒店</a>
                	<a href="JavaScript:;" class="li-a2">最大的经济型酒店</a>
                    <a href="JavaScript:;" class="li-a3">more</a>
                </div>
            </li>
        	<li>
            	<div class="li-box li-box3">
                	<a href="JavaScript:;" class="li-a1">老诚一锅羊蝎子火锅</a>
                	<a href="JavaScript:;" class="li-a2">最养生的火锅</a>
                    <a href="JavaScript:;" class="li-a3">more</a>
                </div>
            </li>
        	<li>
            	<div class="li-box li-box4">
                	<a href="JavaScript:;" class="li-a1">鹏程之家汽车店</a>
                	<a href="JavaScript:;" class="li-a2">最便宜的汽车4S店</a>
                    <a href="JavaScript:;" class="li-a3">more</a>
                </div>
            </li>
        	<li>
            	<div class="li-box li-box5">
                	<a href="JavaScript:;" class="li-a1">速8快捷酒店</a>
                	<a href="JavaScript:;" class="li-a2">最大的经济型酒店</a>
                    <a href="JavaScript:;" class="li-a3">more</a>
                </div>
            </li>
        	<li>
            	<div class="li-box li-box6">
                	<a href="JavaScript:;" class="li-a1">老诚一锅羊蝎子火锅</a>
                	<a href="JavaScript:;" class="li-a2">最养生的火锅</a>
                    <a href="JavaScript:;" class="li-a3">more</a>
                </div>
            </li>
        	<li>
            	<div class="li-box li-box7">
                	<a href="JavaScript:;" class="li-a1">鹏程之家汽车店</a>
                	<a href="JavaScript:;" class="li-a2">最便宜的汽车4S店</a>
                    <a href="JavaScript:;" class="li-a3">more</a>
                </div>
            </li>
        	<li>
            	<div class="li-box li-box8">
                	<a href="JavaScript:;" class="li-a1">鹏程之家汽车店</a>
                	<a href="JavaScript:;" class="li-a2">最便宜的汽车4S店</a>
                    <a href="JavaScript:;" class="li-a3">more</a>
                </div>
            </li>
            <div style="clear:both;"></div>
        </ul>
        <div style="clear:both;"></div>
    </div>
    
    <!--2F  餐饮娱乐-->
    <c:forEach items="${allCategory}" var="categoryExt" varStatus="vs">
    <div class="zl-info w1200">
    	<div class="zl-title1" style="border-color:#FF9A02;">
        	<h3 class="title1-h3 f-l">${vs.count}F ${categoryExt.cname}</h3>
            <ul class="title1-ul1 title1-ul2 f-r">
                <c:forEach items="${categoryExt.categorySeconds}" var="categorySecond" varStatus="vs">
                    <li class="${vs.first?'current':''}"><a href="${pageContext.request.contextPath}/product/toSearchProduct.do?csid=${categorySecond.csid}">${categorySecond.csname}</a></li>
                </c:forEach>
                <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
        </div>
        <div class="zl-con">
        	<div class="zl-con-left f-l" style="background:#FBEAD0;">
            	<div class="zl-tu">
                	<img src="${pageContext.request.contextPath}/images/zl2-34.gif" class="zl-img" />
                </div>
                <p class="zl-lp" style="color:#FF9901;">
                    周末，嗨起来</br>
                    兄弟，躁起来
                </p>
                <ul class="zl-lhover" style=" background:#FF9A02;">
                    <c:forEach items="${categoryExt.categorySeconds}" var="categorySecond">
                	    <li><a href="${pageContext.request.contextPath}/product/toSearchProduct.do?csid=${categorySecond.csid}">${categorySecond.csname}</a></li>
                    </c:forEach>
                    <div style="clear:both;"></div>
                </ul>
            </div>
        	<div class="zl-con-right f-l">
                <c:forEach items="${categoryExt.categorySeconds}" var="categorySecond">
            	    <ul class="zl-rul1 lihover">
                        <c:forEach items="${floorMap[categorySecond.csid]}" var="product">
                	        <li>
                                <div class="sy-tu1">
                                    <a href="商品详情（餐饮）.html"><img src="${pageContext.request.contextPath}/${product.image}" /></a>
                                </div>
                                <div class="sy-tit1">
                                    <a href="商品详情（餐饮）.html">${product.pname}</a>
                                </div>
                                <div class="sy-tit2">
                                    <p><a href="商品详情（餐饮）.html">${product.pdesc}</a></p>
                                    <p>市场价：￥${product.marketprice}</p>
                                    <p>促销价：￥${product.shopprice}</p>
                                </div>
                            </li>
                        </c:forEach>
                    <div style="clear:both;"></div>
                </ul>
                </c:forEach>
            </div>
            <div style="clear:both;"></div>
        </div>
    </div>
    </c:forEach>

    <!--固定右侧-->
    <ul class="youce">
    	<li class="li1">
        	<a href="index.html" class="li1-tu1"><img src="${pageContext.request.contextPath}/images/zl2-94.png" /></a>
            <a href="index.html" class="li1-zi1">返回首页</a>
        </li>
        <li class="li2">
        	<a href="购物车.html"><img src="${pageContext.request.contextPath}/images/zl2-95.png" />购</br>物</br>车</a>
        </li>
        <li class="li3">
        	<a href="#" class="li1-tu2"><img src="${pageContext.request.contextPath}/images/zl2-96.png" /></a>
            <a href="#" class="li1-zi2">我关注的品牌</a>
        </li>
        <li class="li3">
        	<a href="浏览记录.html" class="li1-tu2"><img src="${pageContext.request.contextPath}/images/zl2-97.png" /></a>
            <a href="浏览记录.html" class="li1-zi2">我看过的</a>
        </li>
        <li class="li4">
        	<a href="JavaScript:;" class="li1-tu2"><img src="${pageContext.request.contextPath}/images/zl2-98.gif" /></a>
            <div class="li4-ewm">
            	<a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-101.gif" /></a>
                <p>扫一扫</p>
            </div>
        </li>
        <li class="li3 li5">
        	<a href="#top" class="li1-tu2"><img src="${pageContext.request.contextPath}/images/zl2-99.gif" /></a>
            <a href="#top" class="li1-zi2">返回顶部</a>
        </li>
    </ul>
    

</body>
<%@include file="foot.jsp"%>
</html>
