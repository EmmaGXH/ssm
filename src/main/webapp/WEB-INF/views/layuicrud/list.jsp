<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/layui/css/layui.css" media="all">
<script type="text/javascript" src="<%=request.getContextPath()%>/layui/layui.js"></script>
<title>layui-数据表格</title>
</head>
<body>
	<button type="button" id="add" class="layui-btn layui-btn-sm layui-btn-normal">添加</button>
	<table id="demo" lay-filter="test"></table>
	
	<script type="text/html" id="barDemo">
  		<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  		<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	</script>
</body>
<script type="text/javascript">
layui.use(['table','jquery','layer'], function(){
	var table = layui.table,
	$ = layui.jquery,
	layer = layui.layer;
	
	$('#add').click(function(){
		layer.open({
			type: 2,
			title: '添加菜单',
			content: "<%=request.getContextPath()%>/user/toAdd.do",
			area: ['500px', '300px'],
			shadeClose: true
		})
	})
	
	//第一个实例
	table.render({
		elem: '#demo'
		,height: 312
		,url: '<%=request.getContextPath()%>/menu/list.do' //数据接口
		,page: true //开启分页
		,cols: [[ //表头
			{field: 'id', title: 'ID', width:80, sort: true, fixed: 'left'}
			,{field: 'menuName', title: '菜单名称', width:80}
			,{field: 'url', title: '跳转连接', width:80, sort: true}
			,{field: 'pid', title: '上级id', width:80} 
			,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:180, } 
		]]
	});
  
	//监听工具条
	  table.on('tool(test)', function(obj){
	    var data = obj.data;
	    console.log(data);
	    //如果事件类型是查看详情，进入下面代码
	    if(obj.event === 'del'){//删除
	    	
	      layer.confirm('真的删除行么', function(index){
	        obj.del();//调用后端删除方法
	        layer.close(index);
	        
	      });
	    } else if(obj.event === 'edit'){//修改
	    	
	    	//跳转到修改页面，展示需要修改的数据
	      layer.alert('编辑行：<br>'+ JSON.stringify(data))
	    }
	  });
});
</script>
</html>