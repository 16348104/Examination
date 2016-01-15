<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>wrod edit page</title>
    </head>
    <body>
        <h1>Wrod Edit Page</h1>
        <form action="${ctx}/wrod/modify" method="post">
            <input type="hidden" name="id" value="${sessionScope.wrod.id}">
            ENGLISH: <input name="english" value="${sessionScope.wrod.english}"><br>
            CHINESE: <input name="chinese" value="${sessionScope.wrod.chinese}"><br>
            SENTENCE: <input name="sentence" value="${sessionScope.wrod.sentence}"><br>
            <input type="submit" value="UPDATE">
        </form>
    </body>
</html>