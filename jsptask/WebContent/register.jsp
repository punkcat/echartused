<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</style>
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
<h1 align="center">用户注册</h1>
<div class="page-container">
<form id="form1" name="form1" method="post" action="process" onsubmit="return validate_form(form1)" >
<input type="text" name="username" class="username" placeholder="请输入您的用户名！">
<input type="password" name="password" class="password" placeholder="请输入您的用户密码！">
<input type="password" name="password1" class="password1" placeholder="请重复您的用户密码！">
<input type="submit" value="注册" />
<input type="reset" value="重置"  />
<%
if(request.getAttribute("error") != null){
	out.println(request.getAttribute("error"));
}
%>
</form>
</div>
</body>
</html>