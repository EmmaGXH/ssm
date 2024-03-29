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
	<title>三级菜单使用文档--layui后台管理模板 2.0</title>
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
		其实本模版中的三级菜单的展示方式和实际开发中的做法是不一样的，下面将说一下本模版中的做法
	</blockquote>
	<fieldset class="layui-elem-field layui-field-title magt30">
		<legend>实际开发</legend>
	</fieldset>
	<p>在实际的开发中，无论是顶部菜单还是左侧菜单都应该是通过接口获取的。首先获取顶部菜单，然后点击顶级菜单通过传参再次访问接口来获取二级、三级菜单。</p>
	<fieldset class="layui-elem-field layui-field-title magt30">
		<legend>本模版的做法</legend>
	</fieldset>
	<p>由于顶部菜单是大分类，不会有太多，所以在本模版中是直接写死的，代码如下【具体请看index.html第25-36行】：</p>
	<pre class="layui-code" lay-title="HTML">
		&lt;dd data-menu="seraphApi"&gt;&lt;a href="javascript:;"&gt;&lt;i class="layui-icon" data-icon="&amp;#xe705;"&gt;&amp;#xe705;&lt;/i&gt;&lt;cite&gt;使用文档&lt;/cite&gt;&lt;/a&gt;&lt;/dd&gt;
		<i class="layui-red">请注意这里面的“data-menu”属性，此属性值需要和json中的字段名对应以便能够进行通过此属性查找对应的子菜单</i>
	</pre>
	<p>然后通过index.js中的代码进行循环渲染，就成了当前大家看到的这个样子了，js代码如下【具体请看index.js中的第18-38行】：</p>
	<pre class="layui-code" lay-title="JavaScript">
		function getData(json){
		    $.get("接口路径",function(data){
		        if(json == "contentManagement"){   <i class="layui-blue">//此处即实际开发中传递的参数</i>
		            dataStr = data.contentManagement;   <i class="layui-blue">//获取到当前顶级菜单下的子菜单渲染到左侧</i>
		            tab.render();
		        }
		    })
		}
	</pre>
	<blockquote class="layui-elem-quote">
		<p class="layui-red">如果不动大框架的前提下，请严格按照菜单数据格式返回数据，菜单数据格式请参考：<a href="javascript:;" data-url="page/doc/bodyTabDoc.html#navJson" class="layui-btn layui-btn-xs goNavJson"><i class="seraph" data-icon="icon-mokuai"></i><cite class="layui-hide">bodyTab模块</cite>去看看菜单数据格式</a></p>
	</blockquote>

	<script type="text/javascript" src="../../layui/layui.js"></script>
	<script type="text/javascript">
        layui.config({
            base : "../../js/"
        }).extend({
            "bodyTab" : "bodyTab"
        })
        layui.use(['code','jquery','bodyTab'],function(){
            var $ = layui.$,
			tab = layui.bodyTab();
            layui.code({
                about:false
            });

            $(".goNavJson").click(function(){
                parent.tab.tabAdd($(this));
			})
        })
	</script>
</body>
</html>