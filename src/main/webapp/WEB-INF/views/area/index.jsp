<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.js"></script>
<title>省市区三级联动</title>
</head>
<body>
	<!-- 省 -->
	<select id="province">
		<option value="">请选择...</option>
		<c:forEach items="${list}" var="province">
			<option value="${province.province_id }">${province.province_name }</option>
		</c:forEach>
	</select>
	<!-- 市 -->
	<select id="city">
		<option value="">请选择...</option>
	</select>
	<!-- 区 -->
	<select id="area">
		<option value="">请选择...</option>
	</select>
</body>
<script type="text/javascript">
	$(function(){
		//通过选择省内容，改变市内容
		$('#province').change(function(){
			$.ajax({
				type:"post",
				url:"<%=request.getContextPath()%>/pca/city.do",
				data:{"province_id":$("#province").val()},
				dataType:"json",
				success:function(data){
					var str = "<option value=''>请选择...</option>";
					for(var i=0;i<data.data.length;i++){
						str += "<option value='"+data.data[i].city_id+"'>"+data.data[i].city_name+"</option>";
					}
					$("#city").html(str);
					$("#area").html("<option value=''>请选择...</option>");
				}
			})
		})
		//通过选择市，改变区和县的内容
		$("#city").change(function(){
			$.ajax({
				type:"post",
				url:"<%=request.getContextPath()%>/pca/area.do",
				data:{"city_id":$("#city").val()},
				dataType:"json",
				success:function(data){
					var str = "<option value=''>请选择...</option>";
					for(var i=0;i<data.data.length;i++){
						str += "<option value='"+data.data[i].area_id+"'>"+data.data[i].area_name+"</option>";
					}
					$("#area").html(str);
				}
			})
		})
	});
</script>
</html>