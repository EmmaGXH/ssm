<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/layui/css/layui.css" media="all">
<script type="text/javascript" src="<%=request.getContextPath()%>/layui/layui.js"></script>
<title>菜单添加</title>
</head>
<body>
<form class="layui-form" id="userForm">
  <div class="layui-form-item">
    <label class="layui-form-label">菜单名称</label>
    <div class="layui-input-block">
      <input type="text" name="menuName" required  lay-verify="required" placeholder="请输入菜单名称" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">跳转连接</label>
    <div class="layui-input-block">
      <input type="text" name="url" required  lay-verify="required" placeholder="请输入跳转连接" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">上级菜单</label>
    <div class="layui-input-block">
      <input type="text" name="pid" required  lay-verify="required" placeholder="请输入跳转连接" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
</form>
</body>
<script type="text/javascript">
layui.use('form', function(){
	  var form = layui.form,
	  $ = layui.jquery;
	  
	  //监听提交
	  form.on('submit(formDemo)', function(data){
	    layer.msg(JSON.stringify(data.field));
	    $.ajax({
	    	type:"post",
	    	url:"<%=request.getContextPath()%>/user/insert.do",
	    	data:$('#userForm').serialize(),
	    	dataType:"json",
	    	success:function(data){
	    		console.log(data);
	    	}
	    })
	    return false;
	  });
	});
</script>
</html>