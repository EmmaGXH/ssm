<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/user/add.do" method="post">
		姓名：<input type="text" name="name" /><br/>
		性别：<input type="radio" name="sex" value="1"/>男 
		<input type="radio" name="sex" value="0"/>女 <br/>
		年龄：<input type="text" name="age" /><br/>
		<input type="submit" value="提交" />
	</form>
</body>
</html>