<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/reset.css">
<link rel="stylesheet" href="assets/css/supersized.css">
<link rel="stylesheet" href="assets/css/style.css">
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<script src="assets/js/jquery-1.8.2.min.js" ></script>
<script src="assets/js/supersized.3.2.7.min.js" ></script>
<script src="assets/js/supersized-init.js" ></script>
<script src="assets/js/scripts.js" ></script>

</head>
<body>
<h1 align="center">用户登录</h1>
<div class="page-container">
<form id="form2" name="form2" method="post" action="login">
                <input type="text" name="username" class="username" placeholder="请输入您的用户名！">
                <input type="password" name="password" class="password" placeholder="请输入您的用户密码！">
                <input type="submit" value="登录"  /></td>
                <a href="./register.jsp"><input type="button" value="注册"  /></a></td>
                <div class="error"><span>+</span></div>
                <div class="connect">
                <p>
                    <a class="facebook" href=""></a>
                    <a class="twitter" href=""></a>
                </p>
                </div>

<%
if(request.getAttribute("error") != null){
	out.println(request.getAttribute("error"));
}
%>
</form>
</div>
</body>
</html>