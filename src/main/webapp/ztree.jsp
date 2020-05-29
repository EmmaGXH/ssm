<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ztree练习</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/zTree_v3/css/zTreeStyle/zTreeStyle.css" type="text/css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/zTree_v3/js/jquery.ztree.all.js"></script>
</head>
<body>
	<ul id="tree" class="ztree" style="width:230px; overflow:auto;"></ul>
	
	<button type="button" id="btn">点我</button>
</body>
<script type="text/javascript">
var zTreeObj,//定义ztreeObj变量

setting = {	
		check: {
			enable: true
		},
		data: {
			key: {
				name: "menuName"
			},
			simpleData: {
				enable: true,
				idKey: "id",
				pIdKey: "pid",
				rootPId: 0
			}
		},
		callback: {
			onClick: zTreeOnClick
		}	
}

function zTreeOnClick(event, treeId, treeNode) {
    alert(treeNode.tId + ", " + treeNode.menuName+","+treeNode.id);
};


 $("#btn").click(function(){  //获取被选中的节点的数据  且[setting.check.enable = true 时有效]
	 var treeObj = $.fn.zTree.getZTreeObj("tree");
	 var nodes = treeObj.getCheckedNodes(true);
	 console.log(nodes);  //f12查看控制台输出
 })

$(document).ready(function(){
	$.ajax({
		type:"post",
		url:"<%=request.getContextPath()%>/menu/list.do",
		dataType:"json",
		success:function(data){
			zTreeObj = $.fn.zTree.init($("#tree"), setting, data.data);
		}
	})

});

</script>
</html>