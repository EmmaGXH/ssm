<%@page import="org.apache.ibatis.annotations.Update"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/layui/css/layui.css" media="all">
<script type="text/javascript" src="<%=request.getContextPath()%>/layui/layui.js"></script>
<title>修改页面</title>
</head>
<body>
<form class="layui-form" id="userForm" lay-filter="updateForm">
<input type="hidden" name="id" value=""/>
  <div class="layui-form-item">
    <label class="layui-form-label">姓名</label>
    <div class="layui-input-block">
      <input type="text" name="name" required  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">性别</label>
    <div class="layui-input-block">
      <input type="radio" name="sex" value="1" title="男">
      <input type="radio" name="sex" value="0" title="女">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">手机号码</label>
    <div class="layui-input-block">
      <input type="text" name="phone" required  lay-verify="required|phone|number" placeholder="请输入手机号码" autocomplete="off" class="layui-input">
    </div>
  </div>

  <div class="layui-form-item">
    <label class="layui-form-label">联动选择框</label>
    
    <input type="hidden" name="addr" id="addr" />
    
    <div class="layui-input-inline">
      <select id="province" lay-filter="province" required lay-verify="required">
        <option value="">请选择省</option>
      </select>
    </div>
    <div class="layui-input-inline">
      <select id="city" lay-filter="city" required lay-verify="required">
        <option value="">请选择市</option>
      </select>
    </div>
    <div class="layui-input-inline">
      <select id="area" required lay-verify="required">
        <option value="">请选择县/区</option>
      </select>
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="updateSubmit">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
</form>
</body>
<script type="text/javascript">
layui.use(['form','jquery','layer'],function(){
	var form=layui.form,
	$=layui.jquery,
	layer=layui.layer;
	
	initProvince();  //初始化省份
	  
	  function initProvince(){
		  $.ajax({
			  type:"post",//请求格式
			  url:"<%=request.getContextPath()%>/pca/province.do",//请求地址
			  dataType:"json",//返回数据格式
			  success:function(data){//成功请求到后端，后端返回给前端内容data
				  var str = "<option value=''>请选择省</option>";
				  for(var i=0;i<data.data.length;i++){
					  str += "<option value='"+data.data[i].province_id+"'>"+data.data[i].province_name+"</option>";
				  }
				  $('#province').html(str);
				  form.render();
			  }
		  })
	  }
	  
	  //监听省下拉菜单发生的改变并对城市下拉菜单进行赋值
	  form.on('select(province)', function(data){
		  $.ajax({
			  type:"post",//请求格式
			  url:"<%=request.getContextPath()%>/pca/city.do",
			  data:{"province_id":data.value},
			  dataType:"json",//返回数据格式
			  success:function(data){//成功请求到后端，后端返回给前端内容data
				  var str = "<option value=''>请选择城市</option>";
				  for(var i=0;i<data.data.length;i++){
					  str += "<option value='"+data.data[i].city_id+"'>"+data.data[i].city_name+"</option>";
				  }
				  $('#city').html(str);
				  form.render();
			  }
		  })
	  });  
	  
	  //监听城市下拉菜单发生的改变并对区/县下拉菜单进行赋值
	  form.on('select(city)', function(data){
		  $.ajax({
			  type:"post",//请求格式
			  url:"<%=request.getContextPath()%>/pca/area.do",//请求地址
			  data:{"city_id":data.value},
			  dataType:"json",//返回数据格式
			  success:function(data){//成功请求到后端，后端返回给前端内容data
				  var str = "<option value=''>请选择区/县</option>";
				  for(var i=0;i<data.data.length;i++){
					  str += "<option value='"+data.data[i].area_id+"'>"+data.data[i].area_name+"</option>";
				  }
				  $('#area').html(str);
				  form.render();
			  }
		  })
	  });  
	
	intiMsg();
	function intiMsg(){
		var id=location.href.split("=")[1];
		//console.log(id);
		$.ajax({
			type:'post',
			url:'<%=request.getContextPath()%>/user/selectById.do',
			data:{"userId":id},
			dataType:'json',
			success:function(data){
				form.val("updateForm", { //formTest 即 class="layui-form" 所在元素属性 lay-filter="" 对应的值
					"id" : data.data.id
					,"name": data.data.name
					,"sex": data.data.sex
					,"age": data.data.age
					,"phone": data.data.phone
					,"addr": data.data.addr
				});
				 
			}
		});	
	}
	
	//监听提交按钮
	form.on('submit(updateSubmit)', function(data){
		  var addr = $('#province').find("option:selected").text()+
		  $('#city').find("option:selected").text()+
		  $('#area').find("option:selected").text();
		  $('#addr').val(addr);
		 $.ajax({
			 type:'post',
			 url:'<%=request.getContextPath()%>/user/update.do',
			 data:$('#userForm').serialize(),
			 success:function(data){
				 if(data.code==0){
					layer.msg(data.msg);
		    		var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
			    	parent.layer.close(index);
			    	parent.layui.table.reload('reloadId',{page:{curr:1}});
				 }else{
		    		layer.msg(data.msg, {
			    		icon: 5,
			    		time: 1500 //2秒关闭（如果不配置，默认是3秒）
			    	}, function(){
			    			  
			    		});
		    		}
			 }
		 })
		//  return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
	});
		
	
})
</script>

</html>