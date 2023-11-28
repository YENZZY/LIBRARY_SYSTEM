<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/css/book.css">
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <%@ include file="/WEB-INF/views/library/common/header.jsp" %>
    <title>도서 관리 시스템</title>
</head>
<body>
<div id="pageBody">
    <div class="pageTitle">도서 수정</div>
    <div class="detailBox">
        <div class="detailBox2"></div>
<%--        <form id="bookEditForm" action="/library/book/bookEditOk" method="post">--%>
            <div class="DetailForm">
                <span>도서명</span>
                <input class="detailFormBox" placeholder="도서명을 입력해주세요." id="bookTitle" name="bookTitle"
                       value="${bookEdit.bookTitle}"/>
            </div>
            <div class="DetailForm">
                <span>저자</span>
                <input class="detailFormBox" placeholder="저자를 입력해주세요." id="author" name="author"
                       value="${bookEdit.author}"/>
            </div>
            <div class="DetailForm">
                <span>장르</span>
                <input class="detailFormBox" placeholder="장르를 입력해주세요." id="genre" name="genre"
                       value="${bookEdit.genre}"/>
            </div>
            <div class="DetailForm">
                <span>출판사</span>
                <input class="detailFormBox" placeholder="출판사를 입력해주세요." id="publisher" name="publisher"
                       value="${bookEdit.publisher}"/>
            </div>
            <div class="DetailForm">
                <span>출판연도</span>
                <input class="detailFormBox" placeholder="출판연도를 입력해주세요." id="publishedYear" name="publishedYear"
                       value="${bookEdit.publishedYear}"/>
            </div>

    </div>

<%--        </form>--%>
        <div class="btnBox2">
        <button class="detailBtn2" type="button" onclick="editSubmit()">완료</button>
        <button class="detailBtn2" type="button" onclick="toBookDetail(${bookEdit.bookNum})">취소</button>
    </div>

</div>
<script>
    function editSubmit() {
        var isConfirmed = confirm("도서 수정을 하시겠습니까?");
        if (isConfirmed) {
            document.getElementById("bookEditForm").submit();
        }
    }

    function toBookDetail(bookNum) {
        window.location.href = '/library/book/bookDetail/' + bookNum;
    }
</script>

<%@ include file="/WEB-INF/views/library/common/footer.jsp" %>
</body>
</html>
