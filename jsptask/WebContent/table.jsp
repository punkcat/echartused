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
   <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
   <script src="JS/echarts.min.js"></script>
   <script src="JS/jquery-1.12.3.min.js"></script>
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
int[] tamp = new int[5];
int[] balance = new int[5];
int a = list.size()-5;
for(int i=0,j = a;j<list.size();j++,i++){
	tamp[i]=Integer.parseInt(list.get(j).getTamp());
	balance[i]=Integer.parseInt(list.get(j).getBalance());
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
		</div>
	</div>
</div>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 600px;height:400px;"></div>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 指定图表的配置项和数据
        var t1 = <%=tamp[0]%>;
        var t2 = <%=tamp[1]%>;
        var t3 = <%=tamp[2]%>;
        var t4 = <%=tamp[3]%>;
        var t5 = <%=tamp[4]%>;
        var b1 = <%=balance[0]%>;
        var b2 = <%=balance[1]%>;
        var b3 = <%=balance[2]%>;
        var b4 = <%=balance[3]%>;
        var b5 = <%=balance[4]%>;
option = {
    tooltip : {
        trigger: 'axis',
        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
        }
    },
    legend: {
        data:['金额']
    },
    grid: {
        left: '3%',
        right: '4%',
        bottom: '3%',
        containLabel: true
    },
    xAxis : [
        {
            type : 'category',
            data : [t1,t2,t3,t4,t5]
        }
    ],
    yAxis : [
        {
            type : 'value'
        }
    ],
    series : [
        {
            name:'金额',
            type:'bar',
            data:[b1,b2,b3,b4,b5]
        },
        
    ]
};
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>  
</body>
</html>