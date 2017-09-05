<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%//引入jsphead。jsp文件，该文件定义了样式与脚本文件 %>
<%@include file="/../../../jspHead.jsp" %>
</head>
<body>
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