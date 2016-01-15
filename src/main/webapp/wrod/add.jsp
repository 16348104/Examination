<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>wrod add page</title>
    </head>
    <body>
        <h1>Wrod Add Page</h1>
        <form action="${ctx}/wrod/add" method="post">
            ENGLISH: <input name="english"><br>
            CHINESE: <input name="chinese"><br>
            SENTENCE: <input name="sentence"><br>
            <input type="submit" value="ADD">
        </form>
    </body>
</html>