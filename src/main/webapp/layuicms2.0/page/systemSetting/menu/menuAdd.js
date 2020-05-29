layui.use(['form','layer'],function(){
    var form = layui.form
        layer = parent.layer === undefined ? layui.layer : top.layer,
        $ = layui.jquery;

    function zTreeOnClick(event, treeId, treeNode) {
        $('#pid').val(treeNode.id);
        $("#pName").val(treeNode.title);
    };
    
    function zTreeOnDblClick(event, treeId, treeNode) {
    	layui.layer.close(layui.layer.index);
    };
    
    var setting = {
    		callback: {
    			onClick: zTreeOnClick,
    			onDblClick: zTreeOnDblClick
    		},
    		view: {
    			selectedMulti: false
    		},
    		data: {
    			key: {
    				name: "title"
    			},
    			simpleData: {
    				enable: true,
    				idKey: "id",
    				pIdKey: "pid",
    				rootPId: 0
    			}
    		}
    	};
        
        function loadZtree(){
        	$.ajax({
        		type:"post",
        		url:"/ssm/menu/getZtreeList.do",
        		dataType:"json",
        		success:function(data){
        			$.fn.zTree.init($("#tree"), setting, data.data);
        		}
        	})
        }
    
    $("#pName").click(function(){
    	loadZtree();
    	layui.layer.open({
    		 type: 1,
    		 title: "上级菜单",
    		 content: $('#tree'),
    		 shadeClose: true,
    		 area: ['300px', '400px']
    	})
    })
    
    form.on("submit(addObj)",function(data){
        //弹出loading
    	var index = top.layer.msg('数据提交中，请稍候',{icon: 16,time:false,shade:0.8});
    	$.ajax({
    		type:"post",
    		url:"/ssm/menu/add.do",
    		data: $('#formBtn').serialize(),
    		dataType:"json",
    		success:function(data){
    			if(data.code == 0){
    				setTimeout(function(){
        	            top.layer.close(index);
        	            top.layer.msg(data.msg);
        	            layer.closeAll("iframe");
        	            //刷新父页面
        	            parent.location.reload();
        	        },2000);
    			}else{
    				top.layer.msg(data.msg);
    			}
    		}
    	})
        return false;
    })

    //格式化时间
    function filterTime(val){
        if(val < 10){
            return "0" + val;
        }else{
            return val;
        }
    }
    //定时发布
    var time = new Date();
    var submitTime = time.getFullYear()+'-'+filterTime(time.getMonth()+1)+'-'+filterTime(time.getDate())+' '+filterTime(time.getHours())+':'+filterTime(time.getMinutes())+':'+filterTime(time.getSeconds());

})