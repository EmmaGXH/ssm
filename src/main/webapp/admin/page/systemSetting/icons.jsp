<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="<%=basePath%>">
	<meta charset="utf-8">
	<title>图标管理--layui后台管理模板 2.0</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="../../layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="../../css/public.css" media="all" />
</head>
<body class="childrenBody">
	<blockquote class="layui-elem-quote">
		layuiCMS 2.0当前共引入<span class="layui-red iconsLength"></span>个外部图标。<span class="layui-word-aux">【点击可复制】此页面并非后台模版需要的，只是为了让大家了解都引入了哪些外部图标，实际应用中可删除。</span>
	</blockquote>
	<textarea id="copyText"></textarea>
	<ul class="icons layui-row"></ul>

	<script type="text/javascript" src="../../layui/layui.js"></script>
	<script type="text/javascript" src="icons.js"></script>
</body>
</html>