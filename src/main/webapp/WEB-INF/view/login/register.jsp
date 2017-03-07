<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspf/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/shopping-mall-index.css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/zhonglin.js"></script>
</head>

<body>

	<!--top 开始-->
	<%@ include file="/WEB-INF/view/com/header.jsp" %>
    
    <!--logo search 开始-->
    <div class="hd-info1 w1200">
    	<div class="logo f-l">
        	<h1><a href="#" title="中林网站"><img src="images/logo.jpg" /></a></h1>
        </div>
       
        <div style="clear:both;"></div>
    </div>
    
    <!--内容开始-->
    <div class="password-con registered">
    	<div class="psw">
        	<p class="psw-p1">用户名</p>
            <input type="text" placeholder="HR了" name="username"/>
            <span class="dui"></span>
        </div>
    	<div class="psw">
        	<p class="psw-p1">输入密码</p>
            <input type="text" placeholder="请输入密码" name="password"/>
            <span class="cuo">密码由6-16的字母、数字、符号组成</span>
        </div>
    	<div class="psw">
        	<p class="psw-p1">确认密码</p>
            <input type="text" placeholder="请再次确认密码" name="passwordAgain"/>
            <span class="cuo">密码不一致，请重新输入</span>
        </div>
    	<div class="psw psw2">
        	<p class="psw-p1">手机号</p>
            <input type="text" placeholder="请输入手机验证码" name="mobile"/>
            <button>获取短信验证码</button>
        </div>
    	<div class="psw psw3">
        	<p class="psw-p1">短信验证码</p>
            <input type="text" placeholder="请输入手机验证码" />
        </div>
    	<div class="psw psw3">
        	<p class="psw-p1">验证码</p>
            <input type="text" placeholder="请输入验证码" />
        </div>
        <div class="yanzhentu">
        	<div class="yz-tu f-l">
            	<img src="images/psw-yanzhengtu.gif" />
            </div>
            <p class="f-l">看不清？<a href="#">换张图</a></p>
            <div style="clear:both;"></div>
        </div>
        <div class="agreement">
        	<input type="checkbox" name="hobby"></input>
            <p>我有阅读并同意<span>《宅客微购网站服务协议》</span></p>
        </div>
        <button class="psw-btn">立即注册</button>
        <p class="sign-in">已有账号？请<a href="#">登录</a></p>
    </div>
    
    <!--底部服务-->
   <%@ include file="/WEB-INF/view/com/footer.jsp" %>
    
</body>
</html>
