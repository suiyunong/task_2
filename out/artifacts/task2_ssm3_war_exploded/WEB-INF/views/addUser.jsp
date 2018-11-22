<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/22
  Time: 9:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.bootcss.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
    <style>
        .container{
            width: 400px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row" >
        <div class="col-md-12">
            <form class="form-horizontal">
                <%--<div class="form-group">--%>
                    <%--<label for="inputId" class="col-sm-2 control-label">ID</label>--%>
                    <%--<div class="col-sm-10">--%>
                        <%--<input type="text" name="id" class="form-control" id="inputId" placeholder="id">--%>
                    <%--</div>--%>
                <%--</div>--%>
                <div class="form-group">
                    <label for="inputName" class="col-sm-2 control-label">name</label>
                    <div class="col-sm-10">
                        <input type="text"  name="name" class="form-control" id="inputName" placeholder="name">
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputQq" class="col-sm-2 control-label">qq</label>
                    <div class="col-sm-10">
                        <input type="text"  name="qq" class="form-control" id="inputQq" placeholder="qq">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputType" class="col-sm-2 control-label">type</label>
                    <div class="col-sm-10">
                        <input type="text"  name="type" class="form-control" id="inputType" placeholder="type">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEntro_time" class="col-sm-2 control-label">entro_time</label>
                    <div class="col-sm-10">
                        <input type="text"  name="entro_time" class="form-control" id="inputEntro_time" placeholder="entro_time">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputSchool" class="col-sm-2 control-label">school</label>
                    <div class="col-sm-10">
                        <input type="text"  name="school" class="form-control" id="inputSchool" placeholder="school">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputNumber" class="col-sm-2 control-label">number</label>
                    <div class="col-sm-10">
                        <input type="text"  name="number" class="form-control" id="inputNumber" placeholder="number">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputDiary_link" class="col-sm-2 control-label">diary_link</label>
                    <div class="col-sm-10">
                        <input type="text"  name="diary_link" class="form-control" id="inputDiary_link" placeholder="diary_link">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputSlogan" class="col-sm-2 control-label">slogan</label>
                    <div class="col-sm-10">
                        <input type="text"  name="slogan" class="form-control" id="inputSlogan" placeholder="slogan">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputBrother" class="col-sm-2 control-label">brother</label>
                    <div class="col-sm-10">
                        <input type="text"  name="brother" class="form-control" id="inputBrother" placeholder="brother">
                    </div>
                </div>
                    <input type="hidden" name="_method" value="POST">
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button onclick="addUser()" type="submit" class="btn btn-success">添加</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
<script>
    function addUser(){
        var form = document.forms[0];
        form.action = "<%=basePath%>user/addUser";
        form.method = "post";
        form.submit();
    }
</script>