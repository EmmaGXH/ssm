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
	<title>bodyTab使用文档--layui后台管理模板 2.0</title>
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
		bodyTab模块是layuiCMS 2.0的核心，通过简单的配置就能实现左侧导航的输出、点击菜单添加新窗口的功能。同时优化了窗口过多的展示效果和相关操作。<span class="layui-red">打开的窗口超出可视区域的时候不再以下拉的形式展示，而是通过左右拖动来查看被隐藏的窗口。</span>打开的窗口未超出可视区域的情况下则正常显示，没有拖动效果。添加了“刷新当前”，“关闭其他”，“关闭全部”操作，但需要给相应的元素添加"refresh"、"closePageOther"、"closePageAll"类【如class="closePageAll"】。
	</blockquote>
	<blockquote class="layui-elem-quote">
		模块加载名称：<em class="layui-word-aux">bodyTab</em>
	</blockquote>
	<fieldset class="layui-elem-field layui-field-title magt30">
		<legend>核心方法</legend>
	</fieldset>
	<p>语法：<span class="layui-blue">layui.bodyTab(options)</span></p>
	<pre class="layui-code" lay-title="JavaScript">
		layui.use('bodyTab', function(){
		  layui.bodyTab(options);
		});
	</pre>
	<p>options是一个对象参数，为了操作简单，所以只设置了一些常用的功能。可支持的key如下表</p>
	<table class="layui-table">
		<colgroup>
			<col width="100">
			<col width="100" pc>
			<col width="100" pc>
			<col width="100" pc>
			<col>
		</colgroup>
		<thead>
			<tr>
				<th>参数</th>
				<th pc>状态</th>
				<th pc>类型</th>
				<th pc>默认值</th>
				<th>作用</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>openTabNum</td>
				<td pc>非必填</td>
				<td pc>string</td>
				<td pc>undefined</td>
				<td>设置可打开窗口的最大数量，默认可以无限打开。如果想设置最多可以打开10个窗口则：openTabNum:"10"</td>
			</tr>
			<tr>
				<td>tabFilter</td>
				<td pc>非必填</td>
				<td pc>string</td>
				<td pc>bodyTab</td>
				<td>添加窗口的filter。<span class="layui-red">这里的“非必填”指的是没有更改index.html中源码的情况下，如果修改过，则为必填项</span>。具体用法为：在<em class="layui-word-aux">&lt;ul class="tab"&gt;&lt;/ul&gt;</em>中添加新窗口，应该设置为<em class="layui-word-aux">&lt;ul class="tab" lay-filter="bodyTab"&gt;&lt;/ul&gt;</em>，此处填写的为lay-filter的值。</td>
			</tr>
			<tr>
				<td>url</td>
				<td pc>必填</td>
				<td pc>object</td>
				<td pc>undefined</td>
				<td>获取菜单的接口路径。请严格按照需要的Json格式返回菜单信息。Json详细格式见下表</td>
			</tr>
		</tbody>
	</table>
	<fieldset class="layui-elem-field layui-field-title magt30" id="navJson">
		<legend>菜单数据格式</legend>
	</fieldset>
	<table class="layui-table">
		<colgroup>
			<col width="100">
			<col width="100" pc>
			<col>
		</colgroup>
		<thead>
			<tr>
				<th>参数</th>
				<th pc>类型</th>
				<th>作用</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>title</td>
				<td pc>string</td>
				<td>菜单名称</td>
			</tr>
			<tr>
				<td>menu1</td>
				<td pc>string</td>
				<td>与顶部菜单的data-menu属性值相同，具体请参考：<a href="javascript:;" data-url="page/doc/navDoc.html" class="layui-btn layui-btn-xs goDataMenu"><i class="seraph" data-icon="icon-mokuai"></i><cite class="layui-hide">三级菜单</cite>menu字段与顶部菜单data-menu属性的关系</a></td>
			</tr>
			<tr>
				<td>icon</td>
				<td pc>string</td>
				<td>菜单前面的图标（可不填）。如果调用的图标是框架中的，填写的内容为<em class="layui-word-aux">Unicode（如 &amp;#xe603;）</em>。如果调用的图标为外部引入的，填写的内容为<em class="layui-word-aux">Font CLass（如 icon-chakan）</em>【如果是“图标管理”中的图标可以直接使用，如果是自己通过阿里图标库选择的，有两种方法：1、请将“Font Family”修改为“seraph”，<span class="layui-red">如何修改</span>：“iconfont.cn”-“图标管理”-“我的项目”-“更多操作”-“编辑项目”-“Font Family”的值修改为“seraph”；2、将bodyTab.js文件中第30-80行中的seraph修改为你自己设置的class名称，阿里默认为“iconfont”。不会第一种方式的可直接使用第二种方法】</td>
			</tr>
			<tr>
				<td>href</td>
				<td pc>string</td>
				<td>对应的页面链接。（有子菜单的情况下建议不填）</td>
			</tr>
			<tr>
				<td>spread</td>
				<td pc>boolean</td>
				<td>子菜单是否展开。（默认不展开）</td>
			</tr>
			<tr>
				<td>children</td>
				<td pc>object</td>
				<td>子菜单数据。（格式同上）</td>
			</tr>
			<tr>
				<td>target</td>
				<td pc>string</td>
				<td>控制对应页面链接的打开方式。不设置的情况下以窗口形式打开，设置后页面整体跳转，如“登录页面”。可选参数：_blank。</td>
			</tr>
		</tbody>
	</table>
	<p>这是一个菜单JSON较为完整的例子</p>
	<pre class="layui-code" lay-title="菜单JSON">
	{
	  "menu1": [{
	      "title": "菜单格式",
	      "icon": "&#xe630;",
	      "href": "topPage.html",
	      "spread": false,
	      "children": [{
	          "title": "二级菜单",
	          "icon": "&#xe61c;",
	          "href": "page.html",
	          "spread": false,
	          "target": "_blank"
	       }]
	   }]
	}
	</pre>
	<fieldset class="layui-elem-field layui-field-title magt30">
		<legend>内置方法</legend>
	</fieldset>
	<p>bodyTab模块是这套模版的核心。主要作用是点击菜单生成窗口及一些对窗口进行的操作。下面我将对这些方法做一些简单的介绍。<em class="layui-blue">使用方法：layui.bodyTab.method(option)</em>，其中method为方法名，option为参数，如 layui.bodyTab.navBar(dataStr)。其中“无需主动执行”的方法简单了解一下就好，“需主动执行”的方法可以仔细的研究一下用法。</p>
	<h2 class="method"><i class="layui-icon">&#xe658;</i><i class="layui-icon">&#xe658;</i><i class="layui-icon">&#xe658;</i><i class="layui-icon">&#xe658;</i><i class="layui-icon">&#xe658;</i> tabAdd() 方法</h2>
	<p>此方法<span class="layui-red">需主动执行</span>，这是bodyTab模块中的核心，此方法只有一个参数，即被点击的元素。此元素需要包含下面的属性和标签：</p>
	<table class="layui-table">
		<colgroup>
			<col width="100">
			<col width="100" pc>
			<col>
		</colgroup>
		<thead>
		<tr>
			<th>参数</th>
			<th pc>类型</th>
			<th>作用</th>
		</tr>
		</thead>
		<tbody>
		<tr>
			<td>data-url</td>
			<td pc>属性</td>
			<td>链接的窗口路径，类似 a 标签的 href 属性。如：<em class="layui-word-aux">&lt;a data-url="index.html"&gt;&lt;/a&gt;</em></td>
		</tr>
		<tr>
			<td>i</td>
			<td pc>标签</td>
			<td>添加窗口时标题前面的图标。如：<em class="layui-word-aux">&lt;i class="seraph icon-icon10" data-icon="icon-icon10"&gt;&lt;/i&gt;</em>或者<em class="layui-word-aux">&lt;i class="layui-icon" data-icon="&amp;#xe68e;"&gt;&lt;/i&gt;</em></td>
		</tr>
		<tr>
			<td>cite</td>
			<td pc>标签</td>
			<td>所添加窗口的标题。如：<em class="layui-word-aux">&lt;cite&gt;后台首页&lt;/cite&gt;</em></td>
		</tr>
		</tbody>
	</table>
	<p>下面是一个完整的被点击元素：</p>
	<pre class="layui-code" lay-title="Html">
		&lt;a href="javascript:;" data-url="index.html"&gt;
		  &lt;i class="seraph icon-icon10" data-icon="icon-icon10">&lt;/i&gt;  //这是外部引入的图标
		  &lt;i class="layui-icon" data-icon="&amp;#xe68e;">&lt;/i&gt;  //这是框架中的图标【与外部引入的图标进行二选一】
		  &lt;cite&gt;后台首页&lt;/cite&gt;
		&lt;/a&gt;
	</pre>
	<p>它的主要作用是添加窗口。点击菜单时如果窗口已经打开，则进行窗口的切换，否则添加窗口。执行方法为：</p>
	<pre class="layui-code" lay-title="JavaScript">
		layui.bodyTab.tabAdd(_this);      //主窗口（如index.html）中
		top.layui.bodyTab.tabAdd(_this);  //iframe（如main.html）中
	</pre>
	<h2 class="method"><i class="layui-icon">&#xe658;</i><i class="layui-icon">&#xe658;</i><i class="layui-icon">&#xe658;</i><i class="layui-icon">&#xe658;</i> tabMove() 方法</h2>
	<p>此方法为仅次于tabAdd()的一个方法。其主要作用是通过判断已打开的窗口宽度是否小于可视宽度（包括改变浏览器的大小）。如果已打开的窗口宽度是否小于可视宽度，则不做任何操作；否则为窗口盒子（此处为 #top_tabs_box）添加鼠标滑动事件，用以通过鼠标滑动去选择其他的窗口。模版中对一些会操作窗口盒子的位置都执行了此方法。如果想要在其他的地方执行：</p>
	<pre class="layui-code" lay-title="JavaScript">
		layui.bodyTab.tabMove();
	</pre>
	<h2 class="method"><i class="layui-icon">&#xe658;</i> navBar() 方法</h2>
	<p>此方法<span class="layui-red">无需主动执行</span>，它的主要作用是将后台返回的菜单json文件生成菜单然后通过render方法渲染到页面上，一般情况下外部不会调用。只有一个参数，这个参数是一个符合菜单格式的json文件。</p>
	<h2 class="method"><i class="layui-icon">&#xe658;</i> render() 方法</h2>
	<p>此方法<span class="layui-red">需主动执行</span>，它与navBar配合使用，用于将navBar方法生成的字符串渲染到页面上。在需要渲染菜单的页面都需要主动执行此方法，否则将不显示菜单。</p>
	<h2 class="method"><i class="layui-icon">&#xe658;</i> changeRegresh() 方法</h2>
	<p>此方法<span class="layui-red">无需主动执行</span>，它的主要作用是通过判断“是否设置过切换窗口刷新页面”去进行页面的刷新。如果在“功能设置”中开启此功能，则切换窗口的时候会进行页面的刷新，否则将不会刷新页面。</p>
	<h2 class="method"><i class="layui-icon">&#xe658;</i> set() 方法</h2>
	<p>此方法<span class="layui-red">无需主动执行</span>，它的主要作用是设置bodyTab的参数。可以在引入模块的时候直接配置。无需直接执行此方法进行配置。方法如下：</p>
	<pre class="layui-code" lay-title="JavaScript">
		layui.use('bodyTab', function(){
		  layui.bodyTab({
		    openTabNum : "50",  //最大可打开窗口数量
		    url : "json/navs.json" //获取菜单json地址
		  });
		});
	</pre>
	<h2 class="method"><i class="layui-icon">&#xe658;</i> getLayId() 方法</h2>
	<p>此方法<span class="layui-red">无需主动执行</span>，它的主要作用是通过title获取lay-id，主要用在窗口切换和删除时的定位到所操作的窗口。返回值为当前元素的 <em class="layui-blue">lay-id</em></p>
	<h2 class="method"><i class="layui-icon">&#xe658;</i> hasTab() 方法</h2>
	<p>此方法<span class="layui-red">无需主动执行</span>，它的主要作用是通过title判断点击的菜单时候打开过，如果打开过则切换到对应的窗口，否则添加一个新的窗口。返回值为 <em class="layui-blue">1或者-1</em>，如果点击的菜单存在相应的窗口则返回1，否则返回-1</p>
	<h2 class="method"><i class="layui-icon">&#xe658;</i> jq方法</h2>
	<p>通过on()方法写的一些简单的切换窗口、删除窗口、刷新当前页面、关闭其他页面、关闭前部页面等方法，在此不做赘述，有兴趣的可以查看一下源码。</p>
	<blockquote class="layui-elem-quote magt30">
		也许通过上面的描述，你已经大致了解如何使用 bodyTab 了，但愿TA能成为你永久的开发伙伴，转化为你屏幕上的万千字节！
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

            $(".goDataMenu").click(function(){
                parent.tab.tabAdd($(this));
            })
        })
	</script>
</body>
</html>