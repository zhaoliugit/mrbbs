<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%//引入jsphead。jsp文件，该文件定义了样式与脚本文件 %>
<%@include file="/../../../jspHead.jsp" %>
</head>
<body>
	<!-- 定义一个Bootstrap布局容器，并设置背景主题info -->
	<div class="container bg-info">
		<h1 class="text-center">Hello world!</h1>
		<!-- 定义了一个Bootstrap的row样式，row样式一行最多12个列 -->
		<div class="row">
		<!-- col-xs-6定义一个占6列的单元格 -->
			<div class="col-xs-6">
			<h3 class="text-right">UI(用户界面):</h3>
			</div>
			<!-- 再定义一个占6列的单元格，一行最多12列，那么与上面的6列刚好组成一行 -->
				<div class="col-xs-6">
					<h3><small>Bootstrap 3</small></h3>
				</div>
				
				<div class="col-xs-6">
					<h3 class="text-right">JS Framework(Javascript 框架):</h3>
				</div>
				
				<div class="col-xs-6">
					<h3><small> Jquery </small></h3>
				</div>
				
				<div class="col-xs-6">
					<h3 class="text-right">Server Framework)(服务器框架):</h3>
				</div>
				
				<div class="col-xs-6">
					<h3><small>Spring/MyBatis/Shiro</small></h3>
				</div>
				
				<div class="col-xs-6">
					<h3><small>DataBase(数据库):</small></h3>
				</div>
				
				<div class="col-xs-6">
					<h3><small>MySql 5.x</small></h3>
				</div>
		
		</div>
	
	</div>
</body>
</html>