<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>购物车</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
    <style>
        input[type=number] {
            -moz-appearance: textfield;
        }
        input[type=number]::-webkit-inner-spin-button,
        input[type=number]::-webkit-outer-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }
    </style>
<script type="text/javascript">
    $(function () {
        //改变数量
        //1.直接修改
        $("[name='count']").change(function () {
            var count=$(this).val()
            var pid=$(this).attr("id")
            if(count>14){
                $(this).val(14)
            }if(count<1){
                $(this).val(1)
            }
            changeCount(count,pid)
            var shopprice =Number($("#shopprice"+pid).text())
            $("#subTotal"+pid).text(shopprice*Number(count))
        })
        //2.+-修改
        $("[name='changeCount']").click(function () {
            var count= $(this).parent().find("[name='count']").val()
            var pid =$(this).parent().find("[name='count']").attr("id")
            if(count>14){
                $(this).parent().find("[name='count']").val(14)
            }if(count<1){
                $(this).parent().find("[name='count']").val(1)
            }
            changeCount(count,pid)
            var shopprice =Number($("#shopprice"+pid).text())
            $("#subTotal"+pid).text(shopprice*Number(count))
        })
        //删除
        $("[name='del']").click(function () {
            if(confirm("删除吗？")){
                var pid=$(this).attr("id");
                $.ajax({
                    url:"${pageContext.request.contextPath}/cart/delCartItem.do",
                    data:{
                        pid:pid
                    },
                    success:function (data) {
                        if(data!=""){
                            //更改总价
                            $("#total").text(data)
                            $("#div"+pid).remove()
                        }
                    }
                })
            }
        })
        //清空购物车
        $("[name='delall']").click(function () {
            if(confirm("要清空吗？")){
                $.ajax({
                    url:"${pageContext.request.contextPath}/cart/delAllCartItem.do",
                    data:{
                    },
                    success:function (data) {
                        if(data!=""){
                            //更改总价
                            $("#total").text(data)
                            $("#all").remove()
                        }
                    }
                })
            }
        })
    })
    
    function changeCount(count,pid) {
        if(count>0 && count<15){
            $.ajax({
                url:"${pageContext.request.contextPath}/cart/changeCount.do",
                data:{
                    count:count,
                    pid:pid
                },
                success:function (data) {
                    if(data!=""){
                        //更改总价
                        $("#total").text(data)
                    }
                }
            })
        }else{
            alert("输入数量不符合")
        }

    }
</script>
</head>

<body style="position:relative;">

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

    
    <!--内容开始-->
    <div class="cart-content w1200">
    	<ul class="cart-tit-nav">
        	<li class="current"><a href="#">全部商品 ${fn:length(cart.cartItems)}</a></li>
            <div style="clear:both;"></div>
        </ul>
        <div class="cart-con-tit">
        	<p class="p1">
            	<input type="checkbox" value="" name="hobby"></input>
				<span>全选</span>
            </p>
            <p class="p2">商品信息</p>
            <p class="p4">数量</p>
            <p class="p5">单价（元）</p>
            <p class="p6">金额（元）</p>
            <p class="p7">操作</p>
        </div>
        <div id="all">
            <c:forEach items="${cart.cartItems}" var="cartItem">
                <div class="cart-con-info" id="div${cartItem.product.pid}">
                    <div class="info-top">
                        <input type="checkbox" value="" name="hobby"></input>
                        <span>商家：爱尚微购</span>
                    </div>
                    <div class="info-mid">
                        <input type="checkbox" value="" name="hobby" class="mid-ipt f-l"></input>
                        <div class="mid-tu f-l">
                            <a href="#"><img style="width: 80px;height: 80px" src="${pageContext.request.contextPath}/${cartItem.product.image}" /></a>
                        </div>
                        <div class="mid-font f-l" style="width: 249px;height: 65px">
                            <a href="#">${cartItem.product.pname}<br />${fn:substring(cartItem.product.pdesc,0 ,15 )}...</a>
                            <span>满赠</span>
                        </div>
                        <div class="mid-sl f-l">
                            <a href="JavaScript:;" name="changeCount" class="sl-left">-</a>
                            <input type="number" name="count" id="${cartItem.product.pid}" value="${cartItem.count}" />
                            <a href="JavaScript:;" name="changeCount" class="sl-right">+</a>
                        </div>
                        <p class="mid-dj f-l">¥ <span id="shopprice${cartItem.product.pid}">${cartItem.product.shopprice}</span></p>
                        <p class="mid-je f-l">¥ <span id="subTotal${cartItem.product.pid}">${cartItem.subTotal}</span></p>
                        <div class="mid-chaozuo f-l">
                            <a href="#">移入收藏夹</a>
                            <a href="JavaScript:;" name="del" id="${cartItem.product.pid}">删除</a>
                        </div>
                        <div style="clear:both;"></div>
                    </div>
                </div>
            </c:forEach>
        </div>



       	<div class="cart-con-footer">
        	<div class="quanxuan f-l">
            	<input type="checkbox" value="" name="hobby"></input>
                <span>全选</span>
                <a href="JavaScript:;" name="delall" id="${cartItem.product.pid}">清空购物车</a>
                <a href="#">加入收藏夹</a>
                <p>（此处始终在屏幕下方）</p>
            </div>
            <div class="jiesuan f-r">
            	<div class="jshj f-l">
                	<p>合计（不含运费）</p>
                	<p class="jshj-p2">
                        ￥：<span id="total">${cart.total}</span>
                    </p>
                </div>
            	<a href="${pageContext.request.contextPath}/order/toConfirmOrder.do" class="js-a1 f-l">结算</a>
                <div style="clear:both;"></div>
            </div>
            <div style="clear:both;"></div>
        </div>
    </div>
    
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
