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
	<title>首页--layui后台管理模板 2.0</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="../layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="../css/public.css" media="all" />
</head>
<body class="childrenBody">
	<blockquote class="layui-elem-quote layui-bg-green">
		<div id="nowTime"></div>
	</blockquote>
	<div class="layui-row layui-col-space10 panel_box">
		<div class="panel layui-col-xs12 layui-col-sm6 layui-col-md4 layui-col-lg2">
			<a href="javascript:;" data-url="http://fly.layui.com/case/u/3198216" target="_blank">
				<div class="panel_icon layui-bg-green">
					<i class="layui-anim seraph icon-good"></i>
				</div>
				<div class="panel_word">
					<span>为我点赞</span>
					<cite>点赞地址链接</cite>
				</div>
			</a>
		</div>
		<div class="panel layui-col-xs12 layui-col-sm6 layui-col-md4 layui-col-lg2">
			<a href="javascript:;" data-url="https://github.com/BrotherMa/layuicms2.0" target="_blank">
				<div class="panel_icon layui-bg-black">
					<i class="layui-anim seraph icon-github"></i>
				</div>
				<div class="panel_word">
					<span>Github</span>
					<cite>模版下载链接</cite>
				</div>
			</a>
		</div>
		<div class="panel layui-col-xs12 layui-col-sm6 layui-col-md4 layui-col-lg2">
			<a href="javascript:;" data-url="https://gitee.com/layuicms/layuicms2.0" target="_blank">
				<div class="panel_icon layui-bg-red">
					<i class="layui-anim seraph icon-oschina"></i>
				</div>
				<div class="panel_word">
					<span>码云</span>
					<cite>模版下载链接</cite>
				</div>
			</a>
		</div>
		<div class="panel layui-col-xs12 layui-col-sm6 layui-col-md4 layui-col-lg2">
			<a href="javascript:;" data-url="page/user/userList.html">
				<div class="panel_icon layui-bg-orange">
					<i class="layui-anim seraph icon-icon10" data-icon="icon-icon10"></i>
				</div>
				<div class="panel_word userAll">
					<span></span>
					<em>用户总数</em>
					<cite class="layui-hide">用户中心</cite>
				</div>
			</a>
		</div>
		<div class="panel layui-col-xs12 layui-col-sm6 layui-col-md4 layui-col-lg2">
			<a href="javascript:;" data-url="page/systemSetting/icons.html">
				<div class="panel_icon layui-bg-cyan">
					<i class="layui-anim layui-icon" data-icon="&#xe857;">&#xe857;</i>
				</div>
				<div class="panel_word outIcons">
					<span></span>
					<em>外部图标</em>
					<cite class="layui-hide">图标管理</cite>
				</div>
			</a>
		</div>
		<div class="panel layui-col-xs12 layui-col-sm6 layui-col-md4 layui-col-lg2">
			<a href="javascript:;">
				<div class="panel_icon layui-bg-blue">
					<i class="layui-anim seraph icon-clock"></i>
				</div>
				<div class="panel_word">
					<span class="loginTime"></span>
					<cite>上次登录时间</cite>
				</div>
			</a>
		</div>
	</div>
	<blockquote class="layui-elem-quote main_btn">
		<p>本模板基于Layui2.*实现，支持除LayIM外所有的Layui组件。<a href="http://layim.layui.com/#getAuth" target="_blank" class="layui-btn layui-btn-xs">获取LayIM授权</a>　layui开发文档地址：<a class="layui-btn layui-btn-xs layui-btn-danger" target="_blank" href="http://www.layui.com/doc">layui文档</a>　千人技术交流QQ群：<a target="_blank" href="//shang.qq.com/wpa/qunwpa?idkey=8b7dd3ea73528c1e46c5d4e522426d60deed355caefdf481c1eacdd1b7b73bfd"><img border="0" src="//pub.idqqimg.com/wpa/images/group.png" alt="layui后台管理模版" title="layui后台管理模版"></a>（添加时请注明来源，如：“码云”、“github”等）</p>
		<p class="layui-red">郑重提示：本模版作为学习交流免费使用【强烈要求付费或者捐赠的我也就默默的接受了😄】，如需用作商业用途，请联系作者购买【本模版已进行作品版权证明，不管以何种形式获取的源码，请勿进行出售或者上传到任何素材网站，否则将追究相应的责任】</p>
		<p>注：本模版未引入任何第三方组件，单纯的layui+js实现的各种功能。网站所有数据均为静态数据，无数据库，除打开的窗口和部分小改动外所有操作刷新后无效，关闭窗口或清除缓存后，所有操作无效，请知悉。</p>
		<p class="layui-blue">PS：这只是模版而不是定制开发，不能覆盖升级很正常，请不要因为不能覆盖升级来喷我，我表示很无辜，谢谢大家</p>
	</blockquote>
	<div class="layui-row layui-col-space10">
		<div class="layui-col-lg6 layui-col-md12">
			<blockquote class="layui-elem-quote title">系统基本参数</blockquote>
			<table class="layui-table magt0">
				<colgroup>
					<col width="150">
					<col>
				</colgroup>
				<tbody>
				<tr>
					<td>当前版本</td>
					<td class="version"></td>
				</tr>
				<tr>
					<td>开发作者</td>
					<td class="author"></td>
				</tr>
				<tr>
					<td>网站首页</td>
					<td class="homePage"></td>
				</tr>
				<tr>
					<td>服务器环境</td>
					<td class="server"></td>
				</tr>
				<tr>
					<td>数据库版本</td>
					<td class="dataBase"></td>
				</tr>
				<tr>
					<td>最大上传限制</td>
					<td class="maxUpload"></td>
				</tr>
				<tr>
					<td>当前用户权限</td>
					<td class="userRights"></td>
				</tr>
				</tbody>
			</table>
			<blockquote class="layui-elem-quote title">最新文章 <i class="layui-icon layui-red">&#xe756;</i></blockquote>
			<table class="layui-table mag0" lay-skin="line">
				<colgroup>
					<col>
					<col width="110">
				</colgroup>
				<tbody class="hot_news"></tbody>
			</table>
		</div>
		<div class="layui-col-lg6 layui-col-md12">
			<blockquote class="layui-elem-quote title">发展历程&更新日志</blockquote>
			<div class="layui-elem-quote layui-quote-nm history_box magb0">
				<ul class="layui-timeline">
					<li class="layui-timeline-item">
						<i class="layui-icon layui-timeline-axis">&#xe756;</i>
						<div class="layui-timeline-content layui-text">
							<div class="layui-timeline-title">
								<h3 class="layui-inline">layuiCMS 里程碑版本<span class="layui-red">layuiCMS2.0基础版</span>发布　</h3>
								<span class="layui-badge-rim">2018-01-31</span>
							</div>
							<ul>
								<li>
									<blockquote class="layui-elem-quote title">将顶部高度修改为50px，如果有朋友感觉还是原来的高度更好，请将index.css文件中最底部的4行样式去掉即可，有注释</blockquote>
								</li>
								<li class="layui-red layedit-tool-help">郑重提示：由于后期会对此框架进行多次开发，基本上修改的是大框架，所以强烈不建议对index.js/bodyTab.js进行修改，以便后期的更新能够直接覆盖升级。【以后主要侧重组件开发和功能优化，由于能力有限，请大家多多担待】</li>
								<li>框架采用最新的layui2.x进行对1.0版本的重写，完全不同于1.0版本的模版，不能覆盖升级</li>
								<li class="layui-blue">由于本人对设计和色差之类的不太感冒，所以一些布局和颜色搭配不是太完美，在此跟大家说声抱歉，大家可以根据自己的喜好进行一些调整。</li>
                                <li>新增“系统日志”、“会员等级”、“图标管理”、“使用文档”等页面，新增“功能设置”、“清除缓存”、“编辑文章”等功能。</li>
								<li>由于后期将会整合layIM，所以将原有的“消息”页面删除了，虽然会整合layIM，但是不会提供layIM的下载，如果有需求的朋友可以去进行layIM的授权 <a href="http://layim.layui.com/#getAuth" target="_blank" class="layui-btn layui-btn-xs layui-btn-normal">获取LayIM授权</a></li>
								<li>删除天气组件【感觉没什么作用，如果需要的可以自行去“心知天气”或另外的第三方组件中设置添加】</li>
								<li>由于项目是响应式，但是table不支持响应式，所以拖动浏览器改变分辨率的情况table可能展示不太友好，之前用window.resize()方法实现了托动改变大小，但是发现每拖动1px就会请求一次接口，所以舍弃了这个方法</li>
								<li>对搜索模块的位置进行了调整【后面小版本中会提供搜索跳转/打开新窗口功能】</li>
								<li class="layui-red">由于数据表格的分页、搜索、添加、删除等一系列数据操作需要接口的配合，同时大家都了解这是一套纯前端模版，没有后台，所以这些操作都没有了。有人提议用js动态截取json去实现动态效果，这样当然可以，但是身为一个有严重洁癖的码农，如何能忍受这样的情况？所以这些就需要大家在实际使用中根据接口传参实现了。</li>
								<li>重构页面图标【由于layui2.0新增了许多图标，所以对原有的图标进行了重构，避免图标冗余。实际使用中建议自己去阿里图标库挑选符合网站风格的进行替换】</li>
								<li>优化刷新当前页面，关闭其他，关闭全部等按钮造成的bug</li>
								<li>增加顶部一级菜单用以实现三级菜单，并实现响应式。可以通过更改浏览器的分辨率并且点击顶部菜单来查看效果，这个功能做了一天多啊【后面的小版本会对此功能进行优化，即增加反向定位功能】</li>
								<li>对90%以上的页面进行了样式优化和微调，使其更加完美【对于有强迫症的我来说，有一点瑕疵都是不能容忍的】</li>
								<li>由于模版中的动态操作基本都是通过缓存完成的，所以为了避免缓存过多造成卡顿现象，增加“清除缓存”按钮</li>
								<li class="layui-red">添加自定义是否开启Tab缓存【即刷新页面后是否重新打开刷新前的窗口】、是否切换窗口刷新页面、单一登录等功能。【在功能设定弹窗中设置，在移动端已隐藏此功能】<span class="layui-blue">功能其实早就有朋友提出来过，一直没有想到好的方式添加，直到larry的模版出来，感觉方式不错，借鉴了一下他的这种模式，在此对larry表示感谢</span></li>
								<li>优化更换皮肤在升级为2.x版本后无效的问题【后期会针对此功能进行深入优化，在移动端已隐藏此功能】</li>
								<li>优化“点赞、码云、github”链接。【之前虽然也有模版下载链接按钮，不知道是不明显还是什么，总有人私聊我要源码，这次我把按钮改大点，如果你们再看不到，那就不是不明显了。。。】</li>
								<li>优化“个人资料”页面，修改布局和响应式展示样式，重写地区三级联动效果【已封装成模块】，代码更简洁。<span class="layui-blue">【由于静态数据不能通过post方式提交，否则会报405、500错误，所以为了演示，将请求方式修改成了get，在实际使用中请将userInfo.js中的第13行删除，有注释】</span></li>
								<li class="layui-red">重做404页面、登录页面，增加动画效果。闪瞎你的钛合金眼。</li>
								<li>新增“图标管理”页面，用于展示引入的第三方图标文件。可点击复制class到想要的地方</li>
								<li class="layui-red">新增“使用文档”页面，详细描述了模版中封装模块的各个功能，让使用者更加了解封装的模块的功能。</li>
								<li>通过减少列来使table在移动端保持正常显示。需要列足够少，控制在2-3列最好。只需要给在移动端不显示的td添加pc属性即可，如<em class="layui-word-aux">&lt;td pc&gt;此单元格在移动端不显示&lt;/td&gt;</em>。如果还是理解不了请查看<span class="layui-red">“系统基本参数”</span>页面或者<span class="layui-red">“使用文档”</span>页面</li>
								<li class="layui-red">全面优化缓存机制，例如只要在“个人资料”页面修改过头像，那其他有头像的地方都会展示修改后的头像；修改“系统基本参数”后刷新页面底部版权修改等【当然这个功能在实际开发中就是个鸡肋，没有什么实际用处，在此处我只是想做个功能展示，毕竟这套模版是不包含后台的】</li>
								<li>“文章列表”页面新增文章编辑功能和预览，另外优化了搜索功能【编辑和优化功能都需要接口配合，预览功能需要前后台配合】</li>
								<li>重做“添加文章”页面，使其更加适合实际开发中使用【当然这是我以为的，在实际使用中肯定还差很多功能，后面会慢慢完善】<span class="layui-blue">编辑器由于本身的问题，点击列表中的编辑按钮有时会赋不上值，请暂时无视，等到layedit重写后重做</span></li>
								<li>“图片管理”页面新增“上传新图片”和“图片展示【即layer.photo】”功能。【由于弹层的展示获取的是接口中的数据，所以弹层不会展示新上传的图片，当然实际开发中不会有这个问题】</li>
							</ul>
						</div>
					</li>
					<li class="layui-timeline-item">
						<i class="layui-icon layui-timeline-axis">&#xe63f;</i>
						<div class="layui-timeline-content layui-text">
							<div class="layui-timeline-title">
								<h3 class="layui-inline">结合大家需求并修改部分bug后形成的layuiCMS V1.0.1发布　</h3>
								<span class="layui-badge-rim">2017-07-05</span>
							</div>
							<ul>
								<li># v1.0.1（优化） - 2017-06-25</li>
								<li>修改刚进入页面无任何操作时按回车键提示“请输入解锁密码！”</li>
								<li>优化关闭弹窗按钮的提示信息位置问题【可能是因为加载速度的原因，造成这个问题，所以将提示信息做了一个延时】</li>
								<li>“个人资料”提供修改功能</li>
								<li>顶部天气信息自动判断位置【忘记之前是怎么想的做成北京的了，可能是我在大首都吧，哈哈。。。】</li>
								<li>优化“用户列表”无法查询到新添加的用户【竟然是因为我把key值写错了，该死。。。】</li>
								<li>将左侧菜单做成json方式调用，而不是js调用，方便开发使用。同时添加了参数配置和非窗口模式打开的判断，【如登录页面】</li>
								<li>优化部分页面样式问题</li>
								<li>优化添加窗时如果导航不存在图标无法添加成功</li>
								<br>
								<li># v1.0.1（新增） - 2017-07-05</li>
								<li>增加“用户列表”批量删除功能【可能当时忘记添加了吧。。。】</li>
								<li>顶部窗口导航添加“关闭其他”、“关闭全部”功能，同时修改菜单窗口过多的展示效果【在此感谢larryCMS给予的启发】</li>
								<li>添加可隐藏左侧菜单功能【之前考虑没必要添加，但是很多朋友要求加上，那就加上吧，嘿嘿。。。】</li>
								<li>增加换肤功能【之前就想添加的，但是一直没有找到好的方式（好吧，其实是我忘记了），此方法相对简单，不是普遍适用，只简单的做个功能，如果实际用到建议单独写一套样式，将边框颜色、按钮颜色等统一调整，此处为保证代码的简洁性，只做简单的功能，不做赘述，另外“自定义”颜色中未做校验，所以要写入正确的色值。如“#f00”】</>
								<li>增加登录页面【背景视频仅作样式参考，实际使用中请自行更换为其他视频或图片，否则造成的任何问题使用者本人承担。】</li>
								<li>新增打开窗口的动画效果</li>
							</ul>
						</div>
					</li>
					<li class="layui-timeline-item">
						<i class="layui-icon layui-timeline-axis">&#xe63f;</i>
						<div class="layui-timeline-content layui-text">
							<div class="layui-timeline-title">
								<h3 class="layui-inline">layuiCMS V1.0正式与大家见面，提供了一些简单功能　</h3>
								<span class="layui-badge-rim">2017-06-21</span>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="../layui/layui.js"></script>
	<script type="text/javascript" src="../js/main.js"></script>
</body>
</html>