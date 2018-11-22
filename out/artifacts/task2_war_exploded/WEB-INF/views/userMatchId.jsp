<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/19
  Time: 22:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>查询结果</h2>

<table border="1">
    <tr>
        <th>Id</th>
        <th>姓名</th>
        <th>qq号</th>
        <th>修真类型</th>
        <th>入学时间</th>
        <th>毕业学校</th>
        <th>线上学号</th>
        <th>日报链接</th>
        <th>口号</th>
        <th>辅导师兄</th>
        <th>创建时间</th>
        <th>更新时间</th>
        <th>操作</th>
    </tr>
    <c:forEach var="user" items="${userList}">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.qq}</td>
            <td>${user.type}</td>
            <td>${user.entro_time}</td>
            <td>${user.school}</td>
            <td>${user.number}</td>
            <td>${user.diary_link}</td>
            <td>${user.slogan}</td>
            <td>${user.brother}</td>
            <td>${user.create_at}</td>
            <td>${user.update_at}</td>
            <td>
                <a type="button"  href="${pageContext.request.contextPath}/user/toUpdate?id=${user.id}" class="btn btn-info btn-sm">
                    <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                    编辑</a>
                <form action="${pageContext.request.contextPath}/user/delUser?id=${user.id}" method="post">
                    <input type="hidden" name="_method" value="DELETE">
                    <input type="submit" value="删除">
                </form>

            </td>
        </tr>

    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/user/firstPage">返回用户界面</a>
</body>
</html>
