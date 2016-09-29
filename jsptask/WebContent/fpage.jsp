<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   <link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css">
   <script src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
   <script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
   <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
   <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<title>Insert title here</title>
<%
String username = (String)request.getAttribute("username");
session.setAttribute("username",username);
%>
<style>
#leftq{
width:33%;
float:left;
}
#midq{
width:33%;
float:left;
}
#rightq{
width:33%;
float:right;
}
</style>
</head>
<body>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<div class="page-header">
				<h1>
					校园一卡通个人账本
				</h1>
			</div>
			<ul class="nav nav-pills">
				<li class="active">
					<a href="./fpage.jsp">首页</a>
				</li>
				<li>
					<a href="./userinfo.jsp">个人基础信息</a>
				</li>
				<li>
					<a href="./books.jsp">个人账目管理</a>
				</li>
				<li>
					<a href="./table.jsp">统计报表</a>
				</li>
				<li>
					<a href="./cardinfo.jsp">一卡通资讯</a>
				</li>
				<li>
					<a href="jwc.hznu.edu.cn">校园资讯</a>
				</li>
				<li class="dropdown pull-right">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">更多</a>
					<ul class="dropdown-menu">
						<li>
							<a href="./login.jsp">退出登录</a>
						</li>
					</ul>
				</li>
			</ul>
			<div class="carousel slide" id="carousel-305406">
				<ol class="carousel-indicators">
					<li data-slide-to="0" data-target="#carousel-305406">
					</li>
					<li data-slide-to="1" data-target="#carousel-305406" class="active">
					</li>
					<li data-slide-to="2" data-target="#carousel-305406">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item">
						<img alt="" src="img/1.jpg" />
					</div>
					<div class="item active">
						<img alt="" src="img/2.jpg" />
					</div>
					<div class="item">
						<img alt="" src="img/3.jpg" />
					</div>
				</div> <a data-slide="prev" href="#carousel-305406" class="left carousel-control">‹</a> <a data-slide="next" href="#carousel-305406" class="right carousel-control">›</a>
			</div>
			<div class="row-fluid">
				<div class="span4" id="leftq">
					<h3>
						应用领域
					</h3>
					<ul class="nav nav-pills">
						<li>
							<a href="#">食堂</a>
						</li>
						<li>
							<a href="#">超市</a>
						</li>
						<li>
							<a href="#">图书馆</a>
						</li>
						<li>
							<a href="#">打卡</a>
						</li>
						<li>
							<a href="#">热水</a>
						</li>
						<li>
							<a href="#">门禁</a>
						</li>
					</ul>
				</div>
				<div class="span4" id="midq">
					<h3>33
						学校动态
					</h3>
					<ul class="unstyled">
						<li>
							新闻资讯
						</li>
						<li>
							校园八卦
						</li>
						<li>
							学院通知
						</li>
						<li>
							教师专区
						</li>
						<li>
							学生专区
						</li>
					</ul>
				</div>
				<div class="span4" id="rightq">
					<h3>
						常见问题
					</h3>
					<p>
						校园一卡通办理
					</p>
					<p>
						校园一卡通丢失补办
					</p>
					<p>
						在哪里可以购买特种卡
					</p>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>