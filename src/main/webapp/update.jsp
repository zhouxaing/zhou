<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'list.jsp' starting page</title>
  <link rel="stylesheet" href="<%=path %>/css/index2.css" type="text/css"></link>
  <script type="text/javascript" src="<%=path %>/js/jquery-1.8.2.min.js"></script>
  <script type="text/javascript" src="<%=path %>/js/jquery-form.js"></script>
  <script type="text/javascript" src="<%=path %>/My97DatePicker/WdatePicker.js"></script>
   <script type="text/javascript">
     $(function () {
		var id="${param.id}";
		$.ajax({
			url:"<%=path %>/getupdate",
			data:{"id":id},
			dataType:"json",
			type:"post",
			success: function (obj) {
			$("[name='id']").val(obj[0].id);
			$("[name='name']").val(obj[0].name);
			$(".sex[value="+obj[0].sex+"]").attr("checked",true);
			$("[name='xid']").val(obj[0].xid);
			$("[name='date']").val(obj[0].date);
			$("[name='dname']").val(obj[0].dname);
			$("[name='count']").val(obj[0].count);
			}
		})
	})
	function update() {
		$.ajax({
			url:"<%=path %>/update",
			data:$("form").serialize(),
			dataType:"json",
			type:"post",
			success: function () {
				alert("更换成功");
				location.href="<%=path %>/list";
			}
		})
	}
   </script>
  </head>
  
  <body>
     <form action="">
        <table>
          <tr>
             <td>名字
              <input type="text"  readonly="readonly" name="name">
              <input type="hidden" name="id">
             </td>
          </tr>
           <tr>
             <td>性别
              <input type="radio" readonly="readonly" class="sex" name="sex" value="男">男
              <input type="radio" readonly="readonly" class="sex" name="sex" value="女">女
             </td>
          </tr>
          <tr>
          <td>学院
              <input type="text" readonly="readonly" name="xid">
             </td>
          </tr>
          <tr>
          <td>入学时间
              <input type="text" readonly="readonly" name="date">
             </td>
          </tr>
          <tr>
          <td>当前宿舍号
              <input type="text" name="dname">
              <input type="hidden" name="count">
             </td>
          </tr>
          <tr>
             <td>
              <input type="button" value="提交" onclick="update()">
            </td>
          </tr>
        </table>
     </form>
  </body>
</html>
