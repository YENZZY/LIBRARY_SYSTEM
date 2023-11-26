<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <link rel="stylesheet" type="text/css" href="/css/main.css">
    <%@ include file="/WEB-INF/views/library/common/header.jsp" %>
    <title>도서 관리 시스템</title>
</head>
<body>
<div id="pageBody">
    <%@ include file="/WEB-INF/views/library/book/bookSearch.jsp" %>
    <div class="pageTitle">도서 목록</div>
    <div class="listBox">
        <div class="listBox2">
            <ul class="listTextBox">
                <li>도서번호</li>
                <li>도서명</li>
                <li>저자</li>
                <li>장르</li>
                <li>출판사</li>
                <li>출판연도</li>
                <li>도서상태</li>
            </ul>
        </div>
        <c:forEach var="book" items="${bookListAll}">
            <ul class="listTextBox">
                <li>${book.bookNum}</li>
                <li>${book.bookTitle}</li>
                <li>${book.author}</li>
                <li>${book.genre}</li>
                <li>${book.publisher}</li>
                <li>${book.publishedYear}</li>
                <li>${book.status}</li>
            </ul>
        </c:forEach>
    </div>
</div>
<%@ include file="/WEB-INF/views/library/common/footer.jsp" %>
</body>
</html>
