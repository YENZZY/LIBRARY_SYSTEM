<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/css/main.css">
    <title>도서 관리 시스템</title>
</head>
<body>
<div class="pageTitle">도서 검색</div>
<div class="searchBox">
    <div class="searchBox2">
        <form action="/library/book/search" method="GET">
            <input type="text" name="keyword" placeholder="도서명을 입력해주세요.">
            <input id="searchBtn" type="submit" value="검색"/>
        </form>
    </div>
</div>
</body>
</html>
