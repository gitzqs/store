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
   		 <!-- Custom Theme files -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> 
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0); 
				}, false); 
			function hideURLbar(){
				window.scrollTo(0,1); 
				} 
		</script>
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
								<li class="team-active"><a href="${ctx}/index" class="scroll">网站首页</a></li>
								<li><a href="${ctx}/product" class="scroll">产品中心</a></li>
								<li><a href="${ctx}/case" class="scroll">公司案例</a></li>
								<li><a href="${ctx}/service" class="scroll">公司服务</a></li>
								<li><a href="${ctx}/help" class="scroll">帮助支持</a></li>
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
			<!---- top-grids ---->
			<div id="about" class="top-grids text-center">
				<section id="one" class="main style1">
				<div class="container">
					<div class="row 150%">
						<div class="6u 12u$(medium)">
							<header class="major">
								<h2>便捷<br />
								Convenient</h2>
							</header>
							<p>无论是电脑PC端、微信商城、APP、手机商城，一键发布，全都展示。无论是电脑PC端、微信商城、APP、手机商城，一键发布，全都展示。无论是电脑PC端、微信商城、APP、手机商城，一键发布，全都展示。无论是电脑PC端、微信商城、APP、手机商城，一键发布，全都展示。无论是电脑PC端、微信商城、APP、手机商城，一键发布，全都展示。</p>
						</div>
                        <div class="button-1"></div>                       
						<div class="6u$ 12u$(medium) important(medium)">
							<span class="image fit"><img src="${ctx}/images/pic01.png" alt="" /></span>
						</div>
					</div>
				</div>
			</section>
			</div>
			<!---- top-grids ---->
			<!---- works ---->
			<div id="portfolio" class="works text-center">
				<div id="about" class="top-grids text-center">
				<div class="container">
					<div class="col-md-4">
						<div class="top-grid">
							<span><label class="icon1"> </label></span>
							<h3><a href="#">技术服务</a></h3>
							<p>此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字</p>
						</div>
					</div>
                    <div class="col-md-4">
						<div class="top-grid">
							<span><label class="icon2"> </label></span>
							<h3><a href="#">技术服务</a></h3>
							<p>此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字</p>
						</div>
					</div>
                    <div class="col-md-4">
						<div class="top-grid">
							<span><label class="icon3"> </label></span>
							<h3><a href="#">技术服务</a></h3>
							<p>此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字</p>
						</div>
					</div>					
					
					<div class="clearfix"> </div>
				</div>
			</div>				
			</div>
			<!---- works ---->
            <div class="index">
            	<div class="index-1 container top-grid "><a href="#"><img src="${ctx}/images/index_02.jpg"></a></div>
            </div>
			<!---- skills --->
			<div id="skills" class="skills">
				<div class="container">
				<div id="about" class="top-grids text-center">
				<section id="one" class="main style1">
				<div class="container">
					<div class="row 150%">
						<div class="6u 12u$(medium)">
							<header class="major">
								<h2>优势<br />
								Advantage</h2>
							</header>
							<p>支持支付宝 微信支付  模板定制  支持支付宝 微信支付  模板定制  支持支付宝 微信支付  模板定制  支持支付宝 微信支付  模板定制  支持支付宝 微信支付  模板定制  支持支付宝 微信支付  模板定制  支持支付宝 微信支付  模板定制  支持支付宝 微信支付  模板定制  支持支付宝 微信支付  模板定制  </p>
                            
						</div>                        
						<div class="6u$ 12u$(medium) important(medium)">
							<span class="image fit"><img src="${ctx}/images/box-2.png" alt="" /></span>
						</div>
					</div>
				</div>
			</section>
			</div>				
			</div>
			<!---- skills --->
			<!---- team ---->
			<div id="team" class="team">
				<div class="container">
					<div class="head-section text-center">
						<h2><a href="#">成功案例</a></h2>	
                        <p>Successful case</p>					
					</div>
					<!---- team-grids ---->
					<div class="team-grids text-center">
						<div class="col-md-4">
							<div class="team-grid">
								<img class="img-responsive t-pic" src="${ctx}/images/t1.jpg" title="name" />
								<h3><a href="#">爱婴之家</a></h3>
								<span>PC商城案例</span>
								<p>此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字</p>								
							</div>
						</div>
                        <div class="col-md-4">
							<div class="team-grid">
								<img class="img-responsive t-pic" src="${ctx}/images/t1.jpg" title="name" />
								<h3><a href="#">爱婴之家</a></h3>
								<span>PC商城案例</span>
								<p>此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字</p>								
							</div>
						</div>
                        <div class="col-md-4">
							<div class="team-grid">
								<img class="img-responsive t-pic" src="${ctx}/images/t1.jpg" title="name" />
								<h3><a href="#">爱婴之家</a></h3>
								<span>PC商城案例</span>
								<p>此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字此处是文字</p>								
							</div>
						</div>					
						<div class="clearfix"> </div>
					</div>
					<!---- team-grids ---->
				</div>
			</div>
			<div class="clearfix"> </div>
			<!---- team ---->
			<!---- contact ---->
			
			</div>
			<!---- contact ---->
			<div class="clearfix"> </div>
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
											<li><a href="products.html"><span> </span>产品中心</a></li>
											<li><a href="case.html"><span> </span>公司案例</a></li>
											<li><a href="service.html"><span> </span>公司服务</a></li>
											<li><a href="help.html"><span> </span>帮助支持</a></li>
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

