<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/user/update.do" method="post">
			<input type="hidden" name="id" value="${user.id }" />
		姓名：<input type="text" name="name" value="${user.name }"/><br/>
		性别：<input type="radio" name="sex" value="1" <c:if test="${user.sex == 1}">checked="checked"</c:if>/>男 
			<input type="radio" name="sex" value="0" <c:if test="${user.sex == 0}">checked="checked"</c:if>/>女 <br/>
		年龄：<input type="text" name="age" value="${user.age }"/><br/>
		<input type="submit" value="提交" />
	</form>
</body>
</html>