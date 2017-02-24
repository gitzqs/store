<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspf/taglibs.jsp" %>
<!DOCTYPE HTML>
<html>
	<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>网店云</title>
		<link href="${ctx}/css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="${ctx}/js/jquery.min.js"></script>
		 <!---- start-smoth-scrolling---->
		<script type="text/javascript" src="${ctx}/js/move-top.js"></script>
		<script type="text/javascript" src="${ctx}/js/easing.js"></script>
        <script src="${ctx}/js/init.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
		 <!---- start-smoth-scrolling---->
		 <!-- Custom Theme files -->
		<link href="${ctx}/css/style.css" rel='stylesheet' type='text/css' />
        <link href="${ctx}/css/css.css" rel='stylesheet' type='text/css' />
   		 <!-- Custom Theme files -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!----webfonts--->
		<!---//webfonts--->
		<!----start-top-nav-script---->
		<script>
			$(function() {
				var pull 		= $('#pull');
					menu 		= $('nav ul');
					menuHeight	= menu.height();
				$(pull).on('click', function(e) {
					e.preventDefault();
					menu.slideToggle();
				});
				$(window).resize(function(){
	        		var w = $(window).width();
	        		if(w > 320 && menu.is(':hidden')) {
	        			menu.removeAttr('style');
	        		}
	    		});
			});
		</script>
		<!----//End-top-nav-script---->
	</head>
	<body>
		<!----- start-header---->
			<div id="home" class="header">            	
					<div class="top-header bounceInDown" data-wow-delay="0.4s">
                    	<div class="t-bar">
                    <div class="mainwidth container">
                       <div class="tb-right">
                       <div class="try"><a href='#' rel="nofollow">免费试用</a></div>
                       <div class="register-reg"><a href='#' rel="nofollow">注册</a></div>
                       <div class="register-login"><a href='${ctx}/login' rel="nofollow">登录</a></div>                   
                       </div>
                    </div>
              	</div>
						<div class="container">
						<div class="logo">
							<a href="#"></a>
						</div>
						<!----start-top-nav---->
						 <nav class="top-nav">
							<ul class="top-nav">
								<li class="active"><a href="${ctx}/index" class="scroll">网站首页</a></li>
								<li><a href="${ctx}/product" class="scroll">产品中心</a></li>
								<li><a href="${ctx}/case" class="scroll">公司案例</a></li>
								<li><a href="${ctx}/service" class="scroll">公司服务</a></li>
								<li class="team-active"><a href="${ctx}/help" class="scroll">帮助支持</a></li>
							</ul>
							<a href="#" id="pull"><img src="${ctx}/images/nav-icon.png" title="menu" /></a>
						</nav>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
		<!----- //End-header---->
		<!----start-slider-script---->
			<script src="${ctx}/js/responsiveslides.min.js"></script>
			 <script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 4
			      $("#slider4").responsiveSlides({
			        auto: true,
			        pager: true,
			        nav: true,
			        speed: 500,
			        namespace: "callbacks",
			        before: function () {
			          $('.events').append("<li>before event fired.</li>");
			        },
			        after: function () {
			          $('.events').append("<li>after event fired.</li>");
			        }
			      });
			
			    });
			  </script>
			<!----//End-slider-script---->
			<!-- Slideshow 4 -->
			    <div  id="top" class="callbacks_container">
			      <ul class="rslides" id="slider4">
			        <li>
			          <img src="${ctx}/images/slide1.jpg" alt="">
			        </li>
			        <li>
			          <img src="${ctx}/images/slide2.jpg" alt="">
			        </li>
			        <li>
			          <img src="${ctx}/images/slide3.jpg" alt="">
			        </li>
			      </ul>
			    </div>
			    <div class="clearfix"> </div>
			<!----- //End-slider---->         
           
            <div class="content container">
            	<h2>帮助与支持</h2>
                <b>1、网店云的PC建站服务</b><br />
                <b>通过自助系统快速建立PC端B2C网店</b><br />
            	<span>通过自助系统快速建立PC端B2C网络商店：网店云是基于EOP平台运行的网络商店系统，可快速构建B2C网店。除EOP功能模块外，还具备如下功能：1.商品管理：商品、图片、品牌、类型、参数、规格等信息的维护，前台可按分类筛选。2.订单管理：订单、付款、发货等信息及状态维护。3.会员管理：会员信息、等级、积分、订单、财务、评论等信息维护。4.营销推广：满就送、全场折扣、满就减、积分翻倍等规则维护。5.统计报表：时段销售额报表、销售排行、购买数量、商品访问购买率等报表。6.支付接口：支付宝、财务通、货到付款、预存款等。7.团购抢购：指定商品进行团购</span><br /><br /><br />
                <b>2.网店云的移动建站服务</b><br />
                <b>通过自助系统快速建立移动商城</b><br />
                <span>网店云将电商业务延伸至无线移动平台，移动互联、线上线下打通，一键开启移动营销时代。采用全新的html5技术,会带来一个统一的网络，无论是电脑，PAD，还是智能手机都能很方便的浏览基于HTML5的网站，并且通过同一域名网址，PC端和移动端自动判断适配，让商城同时适应PC端和移动端的屏幕以便更好的展示，以移动互联网时代的消费者体验为核心，充分满足企业在线销售及业务成长的中高端电子商务销售平台。</span><br /><br /><br />
                <b>3.网店云的微信商城建站服务</b><br />
                <b>通过自助系统快速建立微信商城</b><br />
            	<span>网店云提供的是底层整套的店铺系统，它和微信并没有直接联系。不过，通过把微信账号绑定到网店云微信店铺上之后，微信则成为您的店铺面向粉丝的重要出口。换句话说，账号绑定后，您就可以把店铺经营到微信上。向您的粉丝推送活动通告、上新通知，和您的粉丝直接的交流和沟通，粉丝可以直接在微信APP内点击进入您的店铺，浏览商品，并完成最终的购买！更重要的是，网店云提供了十分强大的客户管理系统（需要微信认证服务号），您可以对您的每一个粉丝进行分组、打上特定的标签，更加有针对性的进行消息推送。</span><br /><br /><br />
                <b>4什么是移动电商？</b><br />
            	<span>移动电子商务就是利用手机、PDA及掌上电脑等无线终端进行的B2B、B2C或C2C的电子商务。它将因特网、移动通信技术、短距离通信技术及其它信息处理技术完美的结合，使人们可以在任何时间、任何地点进行各种商贸活动，实现随时随地、线上线下的购物与交易、在线电子支付以及各种交易活动、商务活动、金融活动和相关的综合服务活动等。 移动电商是区别于传统电子商务的、崭新的电商模式。它不像传统电商过度依赖于平台（如淘宝/天猫/京东），而是依赖于您的客户、以及您与客户保持联系的渠道。移动电商需要您更重视对客户的管理和长期的培育，也要更重视品牌的建设。微电商在市场运营策略上，不再以平台为中心（通过简单粗暴的流量采购、广告推广来获得销量），而是通过微博、微信这样的沟通渠道，直接联系到您的客户，从而带来销量。此外移动电商还需要商家更加重视买家之间的口碑相传，在买家的社交圈子上（微信朋友圈、微博等），形成广泛的二次传播，吸引更多的客户。脱离大平台，长期的维护您的客户关系，更高的复购率，更高的品牌忠诚度，这就是移动电商。</span><br /><br /><br />
            </div>
            
            <!--- footer ---->
			<div class="footer">
						<div class="container">
							<div class="footer-grids">
								<div class="col-md-3">
									<div class="footer-grid">
										<h5>关于网店云</h5>
										<p>网店云（中国购物搜索控股有限公司）成立于2014年</p>
										<p>是中国领先的移动电商系统及服务提供商，其团队成员专注从事电子商务、移动微商城的开发方向，核心力量是来自国内顶尖IT公司的一批有移动互联网梦想的战友组成，在同行业中算是一支战斗力最强并富有激情的年轻团队，同时也具备最强的团队实力及行业竞争力。</p>
									</div>
								</div>
								<div class="col-md-3">
									<div class="footer-grid f-blog">
										<h5>行业资讯</h5>
										<div class="f-blog-artical">
											<p>此处是文字此处是文字此处是文字此处是</p>
											<span>2015.3.18</span>
										</div>
										<div class="f-blog-artical f-blog-artical1">
											<p>此处是文字此处是文字此处是文字此处是</p>
											<span>2015.3.18</span>
										</div>
									</div>
								</div>
								<div class="col-md-3">
									<div class="footer-grid site-map">
										<h5>网站搜索</h5>
										<ul>
											<li><a href="index.html"><span> </span>网站首页</a></li>
											<li><a href="about.html"><span> </span>产品中心</a></li>
											<li><a href="services.html"><span> </span>公司案例</a></li>
											<li><a href="products.html"><span> </span>公司服务</a></li>
											<li><a href="contact.html"><span> </span>联系我们</a></li>
										</ul>
									</div>
								</div>
								<div class="col-md-3">
									<div class="footer-grid f-gallery">
										<h5>联系我们</h5>
										<div class="f-gallery-grids">
											<div class="f-gallery-grid">
												<ul>
													<li>售前咨询（人工客服9:00-18:00）</li>
                                                    <li>服务热线：400-000-0000</li>													
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
			<!--- footer ---->
			<!---- sub-footer --->
			<div class="footer-bottom">
						<div class="container">
							<div class="footer-bottom-left">
								<p>© 2014-2015 eshopyun.com 版权所有 ICP证：苏B2-8888888</p>
							</div>							
							<div class="clearfix"> </div>
						</div>
					</div>
			<!---- sub-footer --->
</body>
</html>