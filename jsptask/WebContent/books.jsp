<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   <link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css">
   <script src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
   <script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
   <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
   <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%@ page import="mydb.MyJdbc"%>
<%@ page import="java.util.*" %>
<%@ page import="mybean.Usercard" %>
<%
ArrayList <Usercard> list;
String username = (String)(session.getAttribute("username"));
MyJdbc jdbc = new MyJdbc();
list=jdbc.selectUsercard(username);
Usercard usercard= new Usercard();
 %>
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
			</ul>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>
							编号
						</th>
						<th>
							余额
						</th>
						<th>
							时间
						</th>
						<th>
							操作
						</th>
					</tr>
				</thead>
				<tbody>
				<%
				for(int i=0;i<list.size();i++){%>
					<tr>
						<td>
							<%=list.get(i).getTamp()%>
						</td>
						<td>
							<%=list.get(i).getBalance()%>
						</td>
						<td>
							<%=list.get(i).getTime()%>
						</td>
						<td>
							<%=list.get(i).getOperate()%>
						</td>
					</tr>
					<%}%> 
				</tbody>
			</table> 
			<form id="form3" name="form3" method="post" action="Mycardservlet?username=<%=username%>">
			<table>
			<tr>
			<td><input type="text" name="rechange" value="0"/></td>
			<td><input type="submit" value="充值"  /></td>
			<td></td>
			</tr>
			<tr>
			<td><input type="text" name="pay" value="0"/></td>
		    <td><input type="submit" value="支付"  /></td>
			</tr>
			</table>
			</form>
		</div>
	</div>
</div>
</body>
</html>