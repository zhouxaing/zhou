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
     function mohu() {
		var mohu=$("[name='mohu']").val();
		location.href="<%=path %>/list?mohu="+mohu;
	}
     function update(id) {
		location.href="<%=path %>/toupdate?id="+id;
	}
   </script>
  </head>
  
  <body>
     <table>
       <tr>
          <td colspan="100">
            <input type="text" name="mohu">
            <input type="button" value="搜索" onclick="mohu()">
          </td>
       </tr>
        <tr>
           <td>名字</td>
           <td>性别</td>
           <td>学院</td>
           <td>入学时间</td>
           <td>当前宿舍号</td>
           <td>宿舍人数</td>
           <td>操作</td>
        </tr>
        <c:forEach items="${list}" var="lo">
        <tr>
           <td>${lo.name}</td>
           <td>${lo.sex}</td>
           <td>${lo.xname}</td>
           <td>${lo.date}</td>
           <td>${lo.dname}</td>
           <td>${lo.count}</td>
           <td><input type="button" value="更换宿舍" onclick="update(${lo.id})"></td>
        </tr>
        </c:forEach>
     </table>
  </body>
</html>
