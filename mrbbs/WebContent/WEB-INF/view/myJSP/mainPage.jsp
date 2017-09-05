<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%//引入jsphead。jsp文件，该文件定义了样式与脚本文件 %>
<%@include file="/../../../jspHead.jsp" %>
<!-- 分页样式 -->
<style type="text/css">
	.page{
			display:inline-block;
			border:1px solid;
			font-size:20px;
			width:30px;
			height:30px;
			background-color:#1faeff;
			text-align:center;
	}
	a,a:hover{text-decoration:none;color:#333}
</style>
</head>
<body>
	<!-- 使用BootStrap table样式 -->
	<table class="table table-striped">
		<!-- tr创建一行 -->
		<tr>
			<!-- th创建表头 -->
			<th width="70%"><strong>标题:</strong></th>
			<th width="10%"><strong>作者:</strong></th>
			<th width="10%"><strong>回复/查看:</strong></th>
			<th width="10%"><strong>最后发表:</strong></th>
		</tr>
		<tr>
			<!-- td创建单元格 -->
			<td>
				<!-- a标签指向一个URL地址 -->
				<a href="#">
				<!-- img标签指向一个图片的URL地址 -->
				<img src="image/folder_new.gif"/>
				[最新帖子]&nbsp;&nbsp;欢迎光临Java EE板块专区
				</a>
			</td>
			<td>admin1</td>
			<td>0/0</td>
			<td>于国良是谁</td>
		</tr>
	</table>
	
	<!-- 使用Bootstrap栅格系统 -->
	<div class="row">
		<!-- 定义单元格，占用7列，该单元格用于占位使用 -->
		<div class="col-xs-7">
		</div>
		<!-- 定义单元格，占用5列，分页样式在该单元格书写 -->
			<div class="col-xs-5 text-nowrap">
				<!-- 定义span标签，用于放置前一页连接 -->
				<span class="page">
				<!-- 定义a标签，点击显示前一页数据 -->
				<a href="?page=1&mainType=javaee"> << </a>
				</span>
				
				<!-- 定义span标签，用于放置跳转第一页连接 -->
				<span class="page" style="width:50px !important;">
				<!-- 定义a标签按钮，该标签始终指向第一页 -->
				<a href="?page=18mainType=javaee">start</a>
				</span>
				<!-- 定义span标签，用于放置页码号连接，如果有多页数据会显示临近项，至多5页 -->
				<span class="page">
				<!-- 定义a标签，指向指定页面 -->
				<a href="?page=1&mainType=javaee"> 1</a>
				</span>
				<span  class="page" style="width:40px !important;">
				<a href="?page=1&mainType=javaee">end</a>
				</span>
				<!-- 定义span标签，用于放置下一页连接 -->
				<span class="page">
				<!-- 定义a标签，该标签始终指向下一页 -->
				<a href="?page=1&mainType=javaee"> >> </a>
				</span>
			</div>
	</div>
	<!-- form表单，action属性指向提交路径，method属性设置请求方法 -->
	<form action="<%=basePath%>saveUEditorContent" method="post">
	<!-- label标签为input表定义标注 -->
	<label for="biaoti">帖子标题</label>
	<!-- input标签用于搜集用户信息 -->
	<intpu type="text" name="mainTitle" placeholder="最大长度80个汉字" style="width:360px;">
	<!-- button标签放置一个按钮，type属性设置为submit用于提交表单 -->
		<button type="submit" class="btn btn-primaty btn-xs text-right">发表帖子</button>
	</form>

	<form action="<%=basePath%>saveUEditorContent" method="post">
<!-- 加载编辑器里的内容 -->
<div style="padding:0px;margin:0px;width:100%height:100%;">
	<script id="container" name="content" type="text/plain">
</script>
</div>
</form>

<!-- UEditor表单提交 -->
	<form action="<%=basePath%>saveUEditorContent" method="post">
	<div style="padding:0px;margin:0px;width:100%;height:100%">
		<script id="container" name = "content" type="text/plain">
		</script>
	</div>
	<button type="submit">保存</button>
</form>

<!-- 配置文件 -->
<script type="text/javascript" src="<%=basePath %>uedit/js/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="<%=basePath %>uedit/js/ueditor.all.js"></script>
<!-- 实例化编辑器 -->
<script type="text/javascript">
	var editor = UE.getEditor('container');
</script>
<!-- end富文本 -->
</body>
</html>