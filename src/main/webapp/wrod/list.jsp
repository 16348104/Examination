<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>wrod list page</title>
        <script>
            function del() { return confirm('REMOVE?'); }
        </script>
    </head>
    <body>
        <h1>Wrod List Page</h1>
        <hr/>
        <c:import url="add.jsp"/>
        <hr/>
        <table border="1">
            <tr>
                <th>INDEX</th>
                <th>ID</th>
                <th>ENGLISH</th>
                <th>CHINESE</th>
                <th>SENTENCE</th>
                <th colspan="2">OPERATION</th>
            </tr>
            <c:forEach var="wrod" items="${sessionScope.list}" varStatus="vs">
            <tr>
                <td>${vs.count}</td>
                <td>${wrod.id}</td>
                <td>${wrod.english}</td>
                <td>${wrod.chinese}</td>
                <td>${wrod.sentence}</td>
                <td><a href="${ctx}/wrod/search/${wrod.id}">EDIT</a></td>
                <td><a class="delete" href="${ctx }/wrod/remove/${wrod.id}" onclick="return del()">REMOVE</a></td>
            </tr>
            </c:forEach>
        </table>
    </body>
</html>