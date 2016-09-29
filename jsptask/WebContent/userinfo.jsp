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
<%@ page import="mybean.Userdate" %>
<%
ArrayList <String> list;
String username = (String)(session.getAttribute("username"));
System.out.println(username);
MyJdbc jdbc = new MyJdbc();
list=jdbc.selectUserinfo(username); 
Userdate userdate = new Userdate();
String []t = new String[5];
if(list.size()>0){
	String name = list.get(0);
	String sex = list.get(1);
	String college = list.get(2);
	String prof = list.get(3);
	String enrollyear = list.get(4);
	userdate.setName(name);
	userdate.setSex(sex);
	userdate.setCollege(college);
	userdate.setProf(prof);
	userdate.setEnrollyear(enrollyear);
}
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
			<table class="table">
				<thead>
					<tr>
						<th>
						</th>
						<th>
							属性
						</th>
						<th>
							信息
						</th>
						<th>
							状态
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
						</td>
						<td>
							姓名
						</td>
						<td>
						<%=userdate.getName()%>
						</td>
						<td>
							
						</td>
					</tr>
					<tr class="success">
						<td>
						</td>
						<td>
							性别
						</td>
						<td>
							<%=userdate.getSex()%>
						</td>
						<td>
							
						</td>
					</tr>
					<tr class="error">
						<td>
						</td>
						<td>
							学院
						</td>
						<td>
							<%=userdate.getCollege()%>
						</td>
						<td>
							
						</td>
					</tr>
					<tr class="warning">
						<td>
						</td>
						<td>
							专业
						</td>
						<td>
							<%=userdate.getProf()%>
						</td>
						<td>
							
						</td>
					</tr>
					<tr class="info">
						<td>
						</td>
						<td>
							入学年份
						</td>
						<td>
							<%=userdate.getEnrollyear() %>
						</td>
						<td>
							在读
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
</body>
</html>