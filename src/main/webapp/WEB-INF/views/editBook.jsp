<%--
  Created by IntelliJ IDEA.
  User: Qin
  Date: 2019/9/21
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%-- 引入JQ和Bootstrap --%>
        <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
        <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
        <link href="${pageContext.request.contextPath}/css/style.css">

    <title>书本管理页面 - 编辑页面</title>
</head>

<body>

<div class="editDIV">

    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">编辑书本</h3>
        </div>
        <div class="panel-body">

            <form method="post" action="/updateBook" role="form">
                <table class="editTable">
                    <tr>
                        <td>编号：</td>
                        <td><input type="text" name="id" id="id" value="${book.id}"
                                   placeholder="请在这里输入编号"></td>
                    </tr>
                    <tr>
                        <td>isbn：</td>
                        <td><input type="text" name="isbn" id="isbn" value="${book.isbn}" placeholder="请在这里输入isbn">
                        </td>
                    </tr>
                    <tr>
                        <td>书名：</td>
                        <td><input type="text" name="name" id="name" value="${book.name}" placeholder="请在这里输入书名"></td>
                    </tr>
                    <tr>
                    <tr>
                        <td>作者：</td>
                        <td><input type="text" name="zuo" id="zuo" value="${book.zuo}" placeholder="请在这里输入作者"></td>
                    </tr>

                    <tr>
                        <td>出版社：</td>
                        <td><input type="text" name="chu" id="chu" value="${book.chu}"
                                   placeholder="请在这里输入出版社"></td>
                    </tr>
                    <tr>
                        <td>价格：</td>
                        <td><input type="text" name="jia" id="jia" value="${book.jia}" placeholder="请在这里输入价格"></td>
                    </tr>
                    <tr>
                        <td>数量：</td>
                        <td><input type="text" name="ce" id="ce" value="${book.ce}" placeholder="请在这里输入数量"></td>
                    </tr>
                    <tr class="submitTR">
                        <td colspan="2" align="center">
                            <input type="hidden" name="id" value="${book.id}">
                            <button type="submit" class="btn btn-success">提 交</button>
                        </td>
                    </tr>

                </table>
            </form>
        </div>
    </div>

</div>

</body>
</html>
