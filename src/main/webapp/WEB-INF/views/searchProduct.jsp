<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>搜索列表页(有品牌)</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
    <script type="text/javascript">
        $(function () {
            //添加购物车
            $("[name='addCartItem']").click(function () {
                var count=$(this).parent().prev().find("[name='count']").text()
                var pid=$(this).attr("id")
                console.log(count)
                console.log(pid)
                $.ajax({
                    url:"${pageContext.request.contextPath}/cart/addCartItem.do",
                    data:{
                        count:count,
                        pid:pid
                    },
                success: function (data) {
                    if(data=="success"){
                        alert("添加成功")
                    }else {
                        alert("添加失败")
                    }
                }
                })
            })
        })

    </script>

    <%@ include file="head.jsp"%>
</head>
<script type="text/javascript">
$(function () {
        //页码输入框事件
        $("#pageNowText").change(function () {
        //当前最大页码数可以获取到

        var reg=/^\d+$/
         if (reg.test($(this).val())) {
             if ($(this).val()<1){
                 alert("输入负数")
                    $(this).val(1)
             }else if ($(this).val()>${productBean.pageCount}) {
                alert("输入过大")
                $(this).val(${productBean.pageCount})
             }else{
                alert("输入正确")
             }
             }else{
             alert("输入非数字")
             $(this).val(1)
         }


        })
})
</script>
<body>
    
    <!--内容开始-->
    	<!--筛选结果-->
    <div class="screening-results w1200">
    	<p class="tiao">找到共${productBean.rowCount}条</p>
    	<div class="results">
        	<p class="re-p1 f-l">
                <c:forEach items="${allCategory}" var="categoryExt">
                    <c:if test="${categoryExt.cid==productBean.cid}">
                        <c:set var="cname" value="${categoryExt.cname}"></c:set>
                    </c:if>
                    <c:forEach items="${categoryExt.categorySeconds}" var="categorySecond">
                        <c:if test="${categorySecond.csid==productBean.csid}">
                            <c:set var="cname" value="${categoryExt.cname}"></c:set>
                            <c:set var="csname" value="${categorySecond.csname}"></c:set>
                        </c:if>
                    </c:forEach>
                </c:forEach>
            	全部结果：${cname}> ${csname}
            </p>
            <div style="clear:both;"></div>
        </div>
    </div>
    
    <!--内容↓↑-->
    <div class="shop-page-con w1200">
    	<div class="shop-pg-left f-l" style="width:215px">
            <div class="shop-left-buttom" style="margin-top:0;">
            	<div class="sp-tit1">
                    <h3>商品推荐</h3>
                </div>
                <ul class="shop-left-ul">
                    <c:forEach items="${productisHot}" var="product">
                	<li>
                        <div class="li-top">
                            <a href="#" class="li-top-tu"><img style="width: 95px;height: 110px" src="${pageContext.request.contextPath}/${product.image}" /></a>
                            <p class="jiage"><span class="sp1">￥${product.shopprice}</span><span class="sp2">￥${product.marketprice}</span></p>
                        </div>
                        <p class="miaoshu">${product.pname}</p>
                        <div class="li-md">
                            <div class="md-l f-l">
                                <p class="md-l-l f-l" ap="" name="count">1</p>
                                <div class="md-l-r f-l">
                                    <a href="JavaScript:;" class="md-xs" at="">∧</a>
                                    <a href="JavaScript:;" class="md-xx" ab="">∨</a>
                                </div>
                                <div style="clear:both;"></div>
                            </div>
                            <div class="md-r f-l">
                                <button class="md-l-btn1">立即购买</button>
                                <button name="addCartItem" class="md-l-btn2" id="${product.pid}">加入购物车</button>
                            </div>
                            <div style="clear:both;"></div>
                        </div>
                        <p class="pingjia">88888评价</p>
                        <p class="weike">爱尚微购自营</p>
                    </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    	<div class="shop-pg-right f-r">
        	<div class="shop-right-cmp" style="margin-top:0;">
            	<ul class="shop-cmp-l f-l">
                	<li class="current"><a href="#">综合 ↓</a></li>
                	<li><a href="#">销量 ↓</a></li>
                	<li><a href="#">新品 ↓</a></li>
                	<li><a href="#">评价 ↓</a></li>
                    <div style="clear:both;"></div>
                </ul>
                <div class="shop-cmp-m f-l">
                	<span>价格</span><input type="text" /><span>-</span><input type="text" />
                </div>
                <div class="shop-cmp-r f-l">
                	<ul class="f-l">
                    	<li>
                        	<input type="checkbox" name="hobby" value=""></input>
                            <span>包邮</span>
                        </li>
                        <li>
                        	<input type="checkbox" name="hobby" value=""></input>
                            <span>进口</span>
                        </li>
                        <li>
                        	<input type="checkbox" name="hobby" value=""></input>
                            <span>仅显示有货</span>
                        </li>
                        <li>
                        	<input type="checkbox" name="hobby" value=""></input>
                            <span>满赠</span>
                        </li>
                        <li>
                        	<input type="checkbox" name="hobby" value=""></input>
                            <span>满减</span>
                        </li>
                        <div style="clear:both;"></div>
                    </ul>
                    <button>确定</button>
                </div>
                <div style="clear:both;"></div>
            </div>
            <div class="shop-right-con">
            	<ul class="shop-ul-tu shop-ul-tu1">
                    <c:forEach items="${productBean.list}" var="product" varStatus="vs">
                        <li style="${vs.count%4==0?'margin-right:0':''}">
                            <div class="li-top">
                                <a href="#" class="li-top-tu"><img style="width: 95px;height: 110px" src="${pageContext.request.contextPath}/${product.image}" /></a>
                                <p class="jiage"><span class="sp1">￥${product.shopprice}</span><span class="sp2">￥${product.marketprice}</span></p>
                            </div>
                            <p class="miaoshu">${product.pname}</p>
                            <div class="li-md">
                                <div class="md-l f-l">
                                    <p class="md-l-l f-l" ap="" name="count">1</p>
                                    <div class="md-l-r f-l">
                                        <a href="JavaScript:;" class="md-xs" at="">∧</a>
                                        <a href="JavaScript:;" class="md-xx" ab="">∨</a>
                                    </div>
                                    <div style="clear:both;"></div>
                                </div>
                                <div class="md-r f-l">
                                    <button class="md-l-btn1">立即购买</button>
                                    <button id="${product.pid}" name="addCartItem" class="md-l-btn2">加入购物车</button>
                                </div>
                                <div style="clear:both;"></div>
                            </div>
                            <p class="pingjia">88888评价</p>
                            <p class="weike">爱尚微购自营</p>
                        </li>
                    </c:forEach>
                    <div style="clear:both;"></div>
                </ul>
                
                <!--分页-->
                <div class="paging">
                            <div class="pag-left f-l">
                            <c:if test="${productBean.pageNow>1}">
                                <a href="${pageContext.request.contextPath}/product/toSearchProduct.do?cid=${productBean.cid}&csid=${productBean.csid}&pageNow=${productBean.pageNow-1}" class="about left-r f-l"><</a>
                            </c:if>
                            <ul class="left-m f-l">
                            <c:if test="${productBean.pageCount>8}">

                                <c:if test="${productBean.pageNow<7}">
                                    <c:forEach begin="0" end="5" varStatus="vs">
                                        <li class="${vs.count==productBean.pageNow?'current':''}"><a href="${pageContext.request.contextPath}/product/toSearchProduct.do?cid=${productBean.cid}&csid=${productBean.csid}&pageNow=${vs.count}">${vs.count}</a></li>
                                    </c:forEach>
                                    <li ><a href="#">...</a></li>
                                    <li class="${vs.count==productBean.pageNow?'current':''}"><a href="${pageContext.request.contextPath}/product/toSearchProduct.do?cid=${productBean.cid}&csid=${productBean.csid}&pageNow=${productBean.pageCount}">${productBean.pageCount}</a></li>
                                </c:if>


                                <c:if test="${productBean.pageNow>productBean.pageCount-6}">
                                    <li class="${vs.count==productBean.pageNow?'current':''}"><a href="${pageContext.request.contextPath}/product/toSearchProduct.do?cid=${productBean.cid}&csid=${productBean.csid}&pageNow=1">1</a></li>
                                    <li ><a href="#">...</a></li>
                                    <c:forEach begin="${productBean.pageCount-5}" end="${productBean.pageCount}" varStatus="vs">
                                        <li class="${productBean.pageCount-6+vs.count==productBean.pageNow?'current':''}"><a href="${pageContext.request.contextPath}/product/toSearchProduct.do?cid=${productBean.cid}&csid=${productBean.csid}&pageNow=${productBean.pageCount-6+vs.count}">${productBean.pageCount-6+vs.count}</a></li>
                                    </c:forEach>
                                </c:if>

                            <c:if test="${productBean.pageNow>=7&&productBean.pageNow<=productBean.pageCount-6}">
                                <li class="${vs.count==productBean.pageNow?'current':''}"><a href="${pageContext.request.contextPath}/product/toSearchProduct.do?cid=${productBean.cid}&csid=${productBean.csid}&pageNow=1">1</a></li>
                                <li ><a href="#">...</a></li>
                                <c:forEach begin="${productBean.pageNow-1}" end="${productBean.pageNow+2}" varStatus="vs">
                                    <li class="${productBean.pageNow-2+vs.count==productBean.pageNow?'current':''}"><a href="${pageContext.request.contextPath}/product/toSearchProduct.do?cid=${productBean.cid}&csid=${productBean.csid}&pageNow=${productBean.pageNow-2+vs.count}">${productBean.pageNow-2+vs.count}</a></li>
                                </c:forEach>
                                <li ><a href="#">...</a></li>
                                <li class="${vs.count==productBean.pageNow?'current':''}"><a href="${pageContext.request.contextPath}/product/toSearchProduct.do?cid=${productBean.cid}&csid=${productBean.csid}&pageNow=${productBean.pageCount}">${productBean.pageCount}</a></li>
                            </c:if>
                        </c:if>
                        <c:if test="${productBean.pageCount<=8}">
                            <c:forEach begin="0" end="${productBean.pageCount}" varStatus="vs">
                                <li class="${vs.count==productBean.pageNow?'current':''}"><a href="${pageContext.request.contextPath}/product/toSearchProduct.do?cid=${productBean.cid}&csid=${productBean.csid}&pageNow=${vs.count}">${vs.count}</a></li>
                            </c:forEach>
                        </c:if>
                        <div style="clear:both;"></div>
                    </ul>
                    <c:if test="${productBean.pageNow<productBean.pageCount}">
                        <a href="${pageContext.request.contextPath}/product/toSearchProduct.do?cid=${productBean.cid}&csid=${productBean.csid}&pageNow=${productBean.pageNow+1}" class="about left-r f-l">></a>
                    </c:if>

                    <div style="clear:both;"></div>
                </div>
                    <form action="${pageContext.request.contextPath}/product/toSearchProduct.do?cid=${productBean.cid}&csid=${productBean.csid}" method="post">
                        <div class="pag-right f-l">
                            <div class="jump-page f-l">
                                到第<input type="text" id="pageNowText" name="pageNow" />页
                            </div>
                            <button class="f-l">确定</button>
                            <div style="clear:both;"></div>
                        </div>
                    </form>

                <div style="clear:both;"></div>
            </div>
            </div>
        </div>
        <div style="clear:both;"></div>
    </div>
    

</body>
<%@include file="foot.jsp"%>
</html>
