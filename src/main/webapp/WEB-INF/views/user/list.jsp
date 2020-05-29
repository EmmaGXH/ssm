<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/layui/css/layui.css" media="all">
<script type="text/javascript" src="<%=request.getContextPath()%>/layui/layui.js"></script>
<title>列表页</title>
</head>
<body>
<button type="button" id="add" class="layui-btn layui-btn-sm layui-btn-normal">添加</button>
	<table class="layui-hide" id="userTable" lay-filter="userTB"></table>
	
	<script type="text/html" id="barDemo">
  		<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  		<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	</script>
</body>
<script type="text/javascript">
	layui.use(['table','jquery','layer'],function(){
		var table = layui.table,
		$ = layui.jquery,
		layer = layui.layer;
		
		//点击添加按钮
		$('#add').click(function(){
			var index = layer.open({
				type: 2,//ifream层，嵌套一个页面
				title: '添加用户',
				content: '<%=request.getContextPath()%>/user/toAdd.do',
				area: ['800px', '600px'],
				shadeClose: true
			});
		})
		
		//表格加载
		table.render({
			elem: '#userTable'
			,url: '<%=request.getContextPath()%>/user/list.do' 
			,page: true //开启分页
			,id: 'reloadId'
			,cols: [[ //表头
				{field: 'id', hide: true, title: 'ID', width:80}
				,{field: 'name', title: '姓名', width:80}
				,{field: 'sex', title: '性别', width:80, sort: true}
				,{field: 'phone', title: '手机号码', width:80, sort: true}
				,{field: 'email', title: '邮箱', width:80} 
				,{field: 'addr', title: '地址', width:80} 
				,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:180, } 
			]]
		});
	  
		//监听工具条
		  table.on('tool(userTB)', function(obj){
		    var data = obj.data;
		    if(obj.event === 'del'){
		      layer.confirm('真的删除行么', function(index){
		        $.ajax({
		        	type:"post",
		        	url:"<%=request.getContextPath()%>/user/delete.do",
		        	data:{"id":data.id},
		        	dataType:"json",
		        	success:function(data){
		        		if(data.code==0){
		        			layer.close(index);
		        			table.reload('reloadId',{page:{curr:1}});
		        		}
		        	}
		        })
		      });
		    } else if(obj.event === 'edit'){//修改
		    	var index = layer.open({
					type: 2,//ifream层，嵌套一个页面
					title: '修改用户',
					content: "<%=request.getContextPath()%>/update.jsp?id="+data.id,
					area: ['800px', '600px'],
					shadeClose: true
				});

		    }
		  });
		
	})
</script>
</html>