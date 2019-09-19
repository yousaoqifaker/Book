<%--
  Created by IntelliJ IDEA.
  User: Qin
  Date: 2019/9/19
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <script src="${pageContext.request.contextPath}/WEB-INF/js/jquery-3.4.1.min.js"></script>
    <link href="${pageContext.request.contextPath}/WEB-INF/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/WEB-INF/js/jquery-3.4.1.min.js"></script>
    <title>首页</title>
    <script>
        $(function () {
            $("ul.pagination li.disabled a").click(function () {
                return false;
            });
        });
    </script>
</head>
<body>
<div class="listDIV">
    <table class="table table-striped table-bordered table-hover table-condensed">

        <caption>书本列表 - 共${page.total}本</caption>
        <thead>
        <tr class="success">
            <th>id</th>
            <th>isbn</th>
            <th>书名</th>
            <th>作者</th>
            <th>出版社</th>
            <th>价格</th>
            <th>册数</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${book}" var="s" varStatus="status">
            <tr>
                <td>${s.id}</td>
                <td>${s.isbn}</td>
                <td>${s.name}</td>
                <td>${s.zuo}</td>
                <td>${s.chu}</td>
                <td>${s.jia}</td>
                <td>${s.ce}</td>
                <td><a href="/editStudent?id=${s.id}"><span class="glyphicon glyphicon-edit"></span> </a></td>
                <td><a href="/deleteStudent?id=${s.id}"><span class="glyphicon glyphicon-trash"></span> </a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
