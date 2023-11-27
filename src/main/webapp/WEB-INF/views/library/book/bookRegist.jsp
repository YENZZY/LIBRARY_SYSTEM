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
    <div class="pageTitle">도서 등록</div>
    <form action="/library/book/bookRegistOk" method="post" id="bookRegistForm">
        <div class="detailBox">
            <div class="detailBox2"></div>
            <div class="DetailForm">
                <span>도서명</span>
                <input class="detailFormBox" name="bookTitle" placeholder="도서명을 입력해주세요. (필수)"/>
            </div>
            <div class="DetailForm">
                <span>저자</span>
                <input class="detailFormBox" name="author" placeholder="저자를 입력해주세요."/>
            </div>
            <div class="DetailForm">
                <span>장르</span>
                <input class="detailFormBox" name="genre" placeholder="장르를 입력해주세요."/>
            </div>
            <div class="DetailForm">
                <span>출판사</span>
                <input class="detailFormBox" name="publisher" placeholder="출판사를 입력해주세요."/>
            </div>
            <div class="DetailForm">
                <span>출판연도</span>
                <input class="detailFormBox" name="publishedYear" placeholder="출판연도를 입력해주세요. (ex.1998)"/>
            </div>
        </div>
        <div class="btnBox2">
            <button class="detailBtn2" type="button" onclick="submitForm()">완료</button>
            <button class="detailBtn2" type="button" onclick="main()">취소</button>
        </div>
    </form>
</div>
<script>
    function submitForm() {
        var isConfirmed = confirm("도서 등록을 하시겠습니까?");
        if (isConfirmed) {
            document.getElementById("bookRegistForm").submit();
        }
    }
</script>
<%@ include file="/WEB-INF/views/library/common/footer.jsp" %>
</body>
</html>
