<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人资料</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
</head>
    <script type="text/javascript">
        $(function () {
            $("#passWord").change(function () {
                console.log("aaaaa")
                var pattern=/^(?=.*[\d])(?=.*[a-zA-Z])(?=.*[\W])[\da-zA-Z\W]{6,16}$/
                if($(this).val().trim()!=""){
                    if(pattern.test($(this).val())){
                        $("#passWordMsg").attr("class","dui")
                        $("#passWordMsg").text("密码可用")
                    }else if($(passWord).val()=="${sessionScope.get("userpwd")}"){
                        $("#passWordMsg").attr("class","cuo")
                        $("#passWordMsg").text("与原密码相同")
                    }
                    else {
                        $("#passWordMsg").attr("class","cuo")
                        $("#passWordMsg").text("密码由6-16的字母、数字、符号组成")
                    }
                }else{
                    $("#passWordMsg").attr("class","cuo")
                    $("#passWordMsg").text("密码不能为空")
                }
            })
        })

        function sub() {
            var flag=true
            console.log("flag")
            $("[name='msg']").each(function () {
                if($(this).attr("class")=="cuo"){
                    console.log($(this).attr("class"))
                    flag=false
                }
            })
            return flag
        }
    </script>

<body style="position:relative;">

	<!--header-->
    <div class="zl-header">
    	<div class="zl-hd w1200">
        	<p class="hd-p1 f-l">
            	Hi!您好，欢迎来到宅客微购，请登录  <a href="注册.html">【免费注册】</a>
            </p>
        	<p class="hd-p2 f-r">
            	<a href="index.html">返回首页 (个人中心)</a><span>|</span>
                <a href="${pageContext.request.contextPath}/cart/toCart.do">我的购物车</a><span>|</span>
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
        	<div class="nav-kuaijie yjp-hover1 f-l">
            	<a href="JavaScript:;" class="kj-tit1">商品分类快捷</a>
                <div class="kuaijie-box yjp-show1" style="display:none;">
                	<div class="kuaijie-info">
                    	<dl class="kj-dl1">
                        	<dt><img src="${pageContext.request.contextPath}/images/zl2-07.gif" /><a href="搜索列表(有品牌).html">食品/饮料/酒水</a></dt>
                            <dd>
                            	<a href="搜索列表(有品牌).html">饼干糕点</a><span>|</span>
                            	<a href="搜索列表(有品牌).html">冲调保健</a><span>|</span>
                            	<a href="搜索列表(有品牌).html">酒水</a>
                            </dd>
                        </dl>
                        <div class="kuaijie-con">
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <div style="clear:both;"></div>
                        </div>
                    </div>
                	<div class="kuaijie-info">
                    	<dl class="kj-dl1">
                        	<dt><img src="${pageContext.request.contextPath}/images/zl2-08.gif" /><a href="搜索列表(有品牌).html">粮油副食</a></dt>
                            <dd>
                            	<a href="搜索列表(有品牌).html">厨房调味</a><span>|</span>
                            	<a href="搜索列表(有品牌).html">大米/面粉</a><span>|</span>
                            	<a href="搜索列表(有品牌).html">方便速食</a>
                            </dd>
                        </dl>
                        <div class="kuaijie-con">
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <div style="clear:both;"></div>
                        </div>
                    </div>
                	<div class="kuaijie-info">
                    	<dl class="kj-dl1">
                        	<dt><img src="${pageContext.request.contextPath}/images/zl2-09.gif" /><a href="搜索列表(有品牌).html">家庭清洁</a></dt>
                            <dd>
                            	<a href="搜索列表(有品牌).html">厨房清洁</a><span>|</span>
                            	<a href="搜索列表(有品牌).html">纸品湿巾</a><span>|</span>
                            	<a href="搜索列表(有品牌).html">家私</a>
                            </dd>
                        </dl>
                        <div class="kuaijie-con">
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <div style="clear:both;"></div>
                        </div>
                    </div>
                	<div class="kuaijie-info">
                    	<dl class="kj-dl1">
                        	<dt><img src="${pageContext.request.contextPath}/images/zl2-10.gif" /><a href="搜索列表(有品牌).html">美妆洗护/个人护理</a></dt>
                            <dd>
                            	<a href="搜索列表(有品牌).html">洗浴用品/身体护理</a><span>|</span>
                            	<a href="搜索列表(有品牌).html">洗发护发</a>
                            </dd>
                        </dl>
                        <div class="kuaijie-con">
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <div style="clear:both;"></div>
                        </div>
                    </div>
                	<div class="kuaijie-info">
                    	<dl class="kj-dl1">
                        	<dt><img src="${pageContext.request.contextPath}/images/zl2-11.gif" /><a href="搜索列表(有品牌).html">母婴用品/玩具</a></dt>
                            <dd>
                            	<a href="搜索列表(有品牌).html">宝宝喂养/洗护清洁</a><span>|</span>
                            	<a href="搜索列表(有品牌).html">玩具</a><span>|</span>
                            	<a href="搜索列表(有品牌).html">奶粉/辅食</a>
                            </dd>
                        </dl>
                        <div class="kuaijie-con">
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <div style="clear:both;"></div>
                        </div>
                    </div>
                	<div class="kuaijie-info">
                    	<dl class="kj-dl1">
                        	<dt><img src="${pageContext.request.contextPath}/images/zl2-12.gif" /><a href="搜索列表(有品牌).html">家居/家电</a></dt>
                        </dl>
                        <div class="kuaijie-con">
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                        	<dl class="kj-dl2">
                            	<dt><a href="搜索列表(有品牌).html">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="搜索列表(有品牌).html">护手霜</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">香皂</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">沐浴露</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">花露水</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">泡浴/盐浴</a><span>|</span>
                                    <a href="搜索列表(有品牌).html">洗手液</a>
                                </dd>
                            </dl>
                            <div style="clear:both;"></div>
                        </div>
                    </div>
                </div>
            </div>
            <ul class="nav-font f-l">
            	<li><a href="在线商城首页.html">在线商城</a></li>
            	<li><a href="餐饮娱乐首页.html">餐饮娱乐</a></li>
            	<li><a href="家政服务首页.html">家政服务</a></li>
            	<li><a href="美容美发首页.html">美容美发</a></li>
            	<li><a href="教育培训首页.html">教育培训</a></li>
            	<li><a href="汽车房产首页.html">汽车房产</a></li>
            	<li><a href="家居建材首页.html">家居建材</a></li>
            	<li><a href="二手市场首页.html">二手市场</a><span><img src="${pageContext.request.contextPath}/images/zl2-05.gif" /></span></li>
                <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
        </div>
    </div>
    
    <!--内容开始-->
    <form action="${pageContext.request.contextPath}/user/baocun.do" method="post" onsubmit="return sub()">
    <div class="personal w1200">
    	<div class="personal-left f-l">
        	<div class="personal-l-tit">
            	<h3>个人中心</h3>
            </div>
            <ul>
            	<li class="current-li per-li1"><a href="#">消息中心<span>></span></a></li>
            	<li class="per-li2"><a href="#">个人资料<span>></span></a></li>
            	<li class="per-li3"><a href="${pageContext.request.contextPath}/order/toMyOrders.do">我的订单<span>></span></a></li>
            	<li class="per-li4"><a href="#">我的预约<span>></span></a></li>
            	<li class="per-li5"><a href="${pageContext.request.contextPath}/cart/toCart.do">购物车<span>></span></a></li>
            	<li class="per-li6"><a href="#">管理收货地址<span>></span></a></li>
            	<li class="per-li7"><a href="#">店铺收藏<span>></span></a></li>
            	<li class="per-li8"><a href="#">购买记录<span>></span></a></li>
            	<li class="per-li9"><a href="#">浏览记录<span>></span></a></li>
            	<li class="per-li10"><a href="#">会员积分<span>></span></a></li>
            </ul>
        </div>
    	<div class="personal-r f-r">
        	<div class="personal-right">
                <div class="personal-r-tit">
                    <h3>个人资料</h3>
                </div>
                <div class="data-con">
                	<div class="dt1">
                    	<p class="f-l">当前头像：</p>
                        <div class="touxiang f-l">
                        	<div class="tu f-l">
                            	<a href="#">
                                	<img src="${pageContext.request.contextPath}/images/data-tu.gif" />
                                    <input type="file" name="" id="" class="img1" />
                                </a>
                            </div>
                            <a href="JavaScript:;" class="sc f-l" shangchuang="">上传头像</a>
                            <div style="clear:both;"></div>
                        </div>
                        <div style="clear:both;"></div>
                    </div>
                    <div class="dt1">
                    	<p class="dt-p f-l">昵称：</p>
                        <input type="text" id="name" name="name" value="${requestScope.user.name}" />
                        <div style="clear:both;"></div>
                    </div>
                    <div class="dt1">
                    	<p class="dt-p f-l">用户名：</p>
                        <input type="text"  id="userName" name="userName" value="${requestScope.user.userName}" />
                        <div style="clear:both;"></div>
                    </div>
                    <div class="dt1">
                    	<p class="dt-p f-l">手机号：</p>
                        <input type="text" id="phone" name="phone" value="${requestScope.user.phone}" />
                        <div style="clear:both;"></div>
                    </div>
                    <div class="dt1">
                    	<p class="dt-p f-l">邮箱：</p>
                        <input type="text" id="email" name="email" value="${requestScope.user.email}" />
                        <div style="clear:both;"></div>
                    </div>
                    <div class="dt1 dt4">
                    	<p class="dt-p f-l">密码：</p>
                        <input type="text" id="passWord" name="passWord" value="${requestScope.user.passWord}" />
                        <span id="passWordMsg"></span>
                        <div style="clear:both;"></div>
                    </div>
                    <button class="btn-pst">保存</button>
                </div>
            </div>
        </div>
        <div style="clear:both;"></div>
    </div>
    </form>

    
    <!--上传头像弹窗
    <div class="tanchuang">
    	<div class="t-c-bg"></div>
    	<div class="t-c-con">
        	<div class="tc-tit">
            	<h3>上传头像</h3>
                <a href="JavaScript:;" delete=""><img src="${pageContext.request.contextPath}/images/t-c-del.gif" /></a>
                <div style="clear:both;"></div>
            </div>
            <div class="tc-con">
            	<a href="#"><img src="${pageContext.request.contextPath}/images/tc-tu.gif" /></a>
                <button>保存头像</button>
            </div>
        </div>
    </div>-->
    
    <!--底部一块-->
    <div class="footer-box">
    	<ul class="footer-info1 w1200">
        	<li>
            	<div class="ft-tu1">
                	<a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-86.gif" /></a>
                </div>
                <h3><a href="JavaScript:;">号码保障</a></h3>
                <P>所有会员，手机短信验证</P>
            </li>
        	<li>
            	<div class="ft-tu1">
                	<a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-87.gif" /></a>
                </div>
                <h3><a href="JavaScript:;">6*12小时客服</a></h3>
                <P>有任何问题随时免费资讯</P>
            </li>
        	<li>
            	<div class="ft-tu1">
                	<a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-88.gif" /></a>
                </div>
                <h3><a href="JavaScript:;">专业专攻</a></h3>
                <P>我们只专注于建筑行业的信息服务</P>
            </li>
        	<li>
            	<div class="ft-tu1">
                	<a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-89.gif" /></a>
                </div>
                <h3><a href="JavaScript:;">注册有礼</a></h3>
                <P>随时随地注册有大礼包</P>
            </li>
        	<li>
            	<div class="ft-tu1">
                	<a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-90.gif" /></a>
                </div>
                <h3><a href="JavaScript:;">值得信赖</a></h3>
                <P>专业的产品，专业的团队</P>
            </li>
            <div style="clear:both;"></div>
        </ul>
    	<div class="footer-info2 w1200">
        	<div class="ft-if2-left f-l">
            	<dl>
                	<dt><a href="6-1服务协议.html">新手上路</a></dt>
                    <dd>
                    	<a href="6-1服务协议.html">购物流程</a>
                    	<a href="6-1服务协议.html">在线支付</a>
                    	<a href="6-1服务协议.html">投诉与建议</a>
                    </dd>
                </dl>
            	<dl>
                	<dt><a href="6-1服务协议.html">配送方式</a></dt>
                    <dd>
                    	<a href="6-1服务协议.html">货到付款区域</a>
                    	<a href="6-1服务协议.html">配送费标准</a>
                    </dd>
                </dl>
            	<dl>
                	<dt><a href="6-1服务协议.html">购物指南</a></dt>
                    <dd>
                    	<a href="6-1服务协议.html">订购流程</a>
                    	<a href="6-1服务协议.html">购物常见问题</a>
                    </dd>
                </dl>
            	<dl>
                	<dt><a href="6-1服务协议.html">售后服务</a></dt>
                    <dd>
                    	<a href="6-1服务协议.html">售后服务保障</a>
                    	<a href="6-1服务协议.html">退换货政策总则</a>
                    	<a href="6-1服务协议.html">自营商品退换细则</a>
                    </dd>
                </dl>
                <div style="clear:both;"></div>
            </div>
        	<div class="ft-if2-right f-r">
            	<h3>400-2298-223</h3>
                <p>周一至周日  9:00-24:00</p>
                <p>（仅收市话费）</p>
            </div>
            <div style="clear:both;"></div>
        </div>
        <div class="footer-info3 w1200">
        	<p>
                <a href="#">免责条款</a><span>|</span>
                <a href="#">隐私保护</a><span>|</span>
                <a href="#">咨询热点</a><span>|</span>
                <a href="#">联系我们</a><span>|</span>
                <a href="#">公司简介</a>
            </p>
        	<p>
            	<a href="#">沪ICP备13044278号</a><span>|</span>
                <a href="#">合字B1.B2-20130004</a><span>|</span>
                <a href="#">营业执照</a><span>|</span>
                <a href="#">互联网药品信息服务资格证</a><span>|</span>
                <a href="#">互联网药品交易服务资格证</a>
            </p>
            <div class="ft-if3-tu1">
            	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-91.gif" /></a>
            	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-92.gif" /></a>
            	<a href="#"><img src="${pageContext.request.contextPath}/images/zl2-93.gif" /></a>
            </div>
        </div>
    </div>
</body>
</html>
