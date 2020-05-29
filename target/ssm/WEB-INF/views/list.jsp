<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
</head>
<body>
<a href="<%=request.getContextPath()%>/user/toAdd.do">添加</a>
<table>
	<tr>
		<th>id</th>
		<th>name</th>
		<th>age</th>
		<th>sex</th>
		<th>操作</th>
	</tr>
	<c:forEach items="${users}" var="user">
		<tr>
			<th>${user.id}</th>
			<th>${user.name}</th>
			<th>${user.age}</th>
			<th>${user.sex}</th>
			<th>
				<a href="<%=request.getContextPath()%>/user/toUpdate.do?id=${user.id}">修改</a>||
				<a href="<%=request.getContextPath()%>/user/delete.do?id=${user.id}">删除</a>
			</th>
		</tr>
	</c:forEach>
</table>
</body>
</html>