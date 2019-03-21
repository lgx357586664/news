<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/21 0021
  Time: 下午 4:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>新闻类别修改</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <%@include file="../commons/info.jsp"%>

</head>

<body>
<div class="x-body">
    <form class="layui-form">
        <div class="layui-form-item">
            <label for="typeName" class="layui-form-label">
                <span class="x-red">*</span>新闻类别
            </label>
            <div class="layui-input-inline">
                <input value="${newsType.typeName}" type="text" id="typeName" name="typeName" required="" lay-verify="required"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label  class="layui-form-label">
            </label>
            <button  class="layui-btn" lay-filter="update" lay-submit="">
                修改
            </button>
        </div>
        <input value="${newsType.typeId}" type="hidden" id="typeId" name="typeId" required="" lay-verify="required"
               autocomplete="off" class="layui-input">
    </form>
</div>
<script>
    layui.use(['form','layer'], function(){
        $ = layui.jquery;
        var form = layui.form
            ,layer = layui.layer;
        //监听提交
        form.on('submit(update)', function(data){
            var typeId = data.field.typeId;
            var typeName = data.field.typeName;

            $.ajax({
                type:"post",
                url:"<%=request.getContextPath()%>/NewsTypeServlet",
                data:{
                    "action":"update",
                    "typeId":typeId,
                    "typeName":typeName,
                },
                success:function (msg) {
                    if(msg=="1"){
                        //发异步，把数据提交给java
                        layer.alert("修改成功", {icon: 6},function () {
                            // 获得frame索引
                            var index = parent.layer.getFrameIndex(window.name);
                            //关闭当前frame
                            parent.layer.close(index);
                            window.parent.location.reload();
                        });
                    }else {
                        layer.msg("信息不存在，修改失败")
                    }
                },
                error:function () {
                    layer.msg("修改异常")
                }
            })
            return false;
        });
    });
</script>
</body>
</html>
