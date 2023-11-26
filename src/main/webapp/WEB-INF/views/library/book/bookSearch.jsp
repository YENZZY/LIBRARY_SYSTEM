<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/css/main.css">
    <title>도서 관리 시스템</title>
</head>
<body>
<div class="pageTitle">도서 검색</div>
<div class="searchBox">
        <form action="/search" method="GET">
            <input type="text" name="keyword" placeholder="도서명을 입력해주세요."/>
            <button id="searchBtn" type="submit">검색</button>
        </form>
</div>
</body>
</html>
