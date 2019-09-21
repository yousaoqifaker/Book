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
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <link href="${pageContext.request.contextPath}/css/style.css">
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
                <td><a href="${pageContext.request.contextPath}/editBook?id=${s.id}"><span class="glyphicon glyphicon-edit"></span> </a></td>
                <td><a href="${pageContext.request.contextPath}/deleteBook?id=${s.id}"><span class="glyphicon glyphicon-trash"></span> </a></td>
                <!-- Large modal -->
                <td><button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg"><span class="glyphicon glyphicon-plus"></span></button></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<nav class="pageDIV">
    <ul class="pagination">
        <li <c:if test="${!page.hasPreviouse}">class="disabled"</c:if>>
            <a href="?page.start=0">
                <span>«</span>
            </a>
        </li>
        <c:forEach begin="0" end="${page.totalPage-1}" varStatus="status">

            <c:if test="${status.count*page.count-page.start<=30 && status.count*page.count-page.start>=-10}">
                <li <c:if test="${status.index*page.count==page.start}">class="disabled"</c:if>>
                    <a
                            href="?page.start=${status.index*page.count}"
                            <c:if test="${status.index*page.count==page.start}">class="current"</c:if>
                    >${status.count}</a>
                </li>
            </c:if>
        </c:forEach>
        <li <c:if test="${!page.hasPreviouse}">class="disabled"</c:if>>
            <a href="?page.start=${page.start-page.count}">
                <span>‹</span>
            </a>
        </li>
    </ul>
</nav>
<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="addDIV" style="align-content: center">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">增加学生</h3>
                    </div>
                    <div class="panel-body">

                        <form method="post" action="${pageContext.request.contextPath}/addBook" role="form">
                            <table class="addTable">
                                <tr>
                                    <td>编号：</td>
                                    <td><input type="text" name="id" id="id" placeholder="请在这里输入编号"></td>
                                </tr>
                                <tr>
                                    <td>isbn：</td>
                                    <td><input type="text" name="isbn" id="isbn" placeholder="请在这里输入ISBN"></td>
                                </tr><tr>
                                <td>书名：</td>
                                <td><input type="text" name="name" id="name" placeholder="请在这里输入书名"></td>
                            </tr><tr>
                                <td>作者：</td>
                                <td><input type="text" name="zuo" id="zuo" placeholder="请在这里输入作者"></td>
                            </tr><tr>
                                <td>出版社：</td>
                                <td><input type="text" name="chu" id="chu" placeholder="请在这里输入出版社"></td>
                            </tr><tr>
                                <td>价格：</td>
                                <td><input type="text" name="jia" id="jia" placeholder="请在这里输入价格"></td>
                            </tr>
                                <tr>
                                    <td>数量：</td>
                                    <td><input type="text" name="ce" id="ce" placeholder="请在这里输入数量"></td>
                                </tr>
                                <tr class="submitTR">
                                    <td colspan="2" align="center">
                                        <button type="submit" class="btn btn-success">提 交</button>
                                    </td>

                                </tr>

                            </table>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
</body>
</html>
