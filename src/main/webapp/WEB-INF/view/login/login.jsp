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
		 <!-- Custom Theme files -->
		<link href="${ctx}/css/style.css" rel='stylesheet' type='text/css' />
        <link href="${ctx}/css/css.css" rel='stylesheet' type='text/css' />
   		 <!-- Custom Theme files -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!----webfonts--->
		<!---//webfonts--->
		
	</head>
	<body>
		<!----- start-header---->
        <div class="login-top">
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
								<li><a href="${ctx}/help" class="scroll">帮助支持</a></li>
							</ul>
							<a href="#" id="pull"><img src="${ctx}/images/nav-icon.png" title="menu" /></a>
						</nav>
					<div class="clearfix"> </div>
            </div>
        </div>
		<!----- //End-header---->
        
            <div class="login-content">
            	<div class="container">
                    <div class="left"><img src="${ctx}/images/box-2.png"></div>
                    <div class="right">
                    	<div>
                        	<form>
                            	<div>
                                	<input type="text" name="name" value="" class="login-input input-user" placeholder="用户名">
                                </div>
                                <div>
                                	<input type="text" name="name" value="" class="login-input input-key" placeholder="密码">
                                </div>
                                <div><a class="login-button" href="#">登陆</a></div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="login-bottom">© 2014-2015 eshopyun.com 版权所有 ICP证：苏B2-8888888</div>
			
</body>
</html>