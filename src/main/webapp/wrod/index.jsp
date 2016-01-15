<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>wrod index page</title>
    </head>
    <body>
    <c:if test="${sessionScope.user eq null}">
        <c:redirect url="/" ></c:redirect>
    </c:if>
        <h1>Wrod Index Page</h1>
    welcome:${sessionScope.user.username}<br>
    <a href="/user/logout">LOG OUT</a>
        <p><a href="${ctx}/wrod/add.jsp">ADD</a></p>
        <p><a href="${ctx}/wrod/list">LIST</a></p>
    </body>
</html>