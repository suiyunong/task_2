<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/25
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>修改用户信息</h1>
    <form  name="userForm">
        <input type="hidden" name="_method" value="PUT">
        <input value="${user.id}" name="id" type="hidden"/>
        姓名: <input type="text" name="name" value="${user.name}"><br>
        QQ:<input type="text" name="qq" value="${user.qq}"><br>
        修真类型：<input type="text" name="type" value="${user.type}"><br>
        入学时间：<input type="text" name="entro_time" value="${user.entro_time}"><br>
        毕业院校：<input type="text" name="school" value="${user.school}"><br>
        线上学号：<input type="text" name="number" value="${user.number}"><br>
        日报链接：<input type="text" name="diary_link" value="${user.diary_link}"><br>
        口号：<input type="text" name="slogan" value="${user.slogan}"><br>
        师兄：<input type="text" name="brother" value="${user.brother}"><br>
        <input type="submit" value="确认修改" onclick="updateUser()"> </input>
    </form>
</body>
</html>
<script>
    <%--alert(${user.id});--%>
    function updateUser(){
        var form = document.forms[0];
        form.action = "<%=basePath%>user/updateUser";
        form.method = "post";
        form.submit();
    }
</script>
