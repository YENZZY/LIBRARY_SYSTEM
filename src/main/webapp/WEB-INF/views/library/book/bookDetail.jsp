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
    <div class="pageTitle">도서 상세 정보</div>
    <div class="detailBox">
        <div class="detailBox2"></div>
        <div class="DetailForm">
            <span>도서번호</span>
            <div class="detailFormBox">
                <span>${bookDetail.bookNum}</span>
            </div>
        </div>
        <div class="DetailForm">
            <span>도서명</span>
            <div class="detailFormBox">
                <span>${bookDetail.bookTitle}</span>
            </div>
        </div>
        <div class="DetailForm">
            <span>저자</span>
            <div class="detailFormBox">
                <span>${bookDetail.author}</span>
            </div>
        </div>
        <div class="DetailForm">
            <span>장르</span>
            <div class="detailFormBox">
                <span>${bookDetail.genre}</span>
            </div>
        </div>
        <div class="DetailForm">
            <span>출판사</span>
            <div class="detailFormBox">
                <span>${bookDetail.publisher}</span>
            </div>
        </div>
        <div class="DetailForm">
            <span>출판연도</span>
            <div class="detailFormBox">
                <span>${bookDetail.publishedYear}</span>
            </div>
        </div>
        <div class="DetailForm">
            <span>도서상태</span>
            <div class="detailFormBox">
                <span class="${bookDetail.status == '대출 가능' ? 'bookOk' : 'bookNo'}">${bookDetail.status}</span>
            </div>
        </div>
        <div class="DetailForm">
            <span>대출일</span>
            <div class="detailFormBox">
                <span>${bookDetail.borrowDate}</span>
            </div>
        </div>
        <div class="DetailForm">
            <span>반납일</span>
            <div class="detailFormBox">
                <span>${bookDetail.returnDate}</span>
            </div>
        </div>
    </div>
    <div class="btnBox">
        <button class="detailBtn" onclick="main()">목록</button>
        <div class="btnBox2">
        <button class="detailBtn" onclick="toBookEdit(${bookDetail.bookNum})">수정</button>
        <form onsubmit="borrowSubmit()">
            <button class="detailBtn">대출하기</button>
        </form>
        </div>
    </div>
</div>
<script>
    function toBookEdit() {
        window.location.href="/library/book/bookEdit";
    }

    function borrowSubmit() {
        var isConfirmed = confirm("도서 대출을 하시겠습니까?");

        if (isConfirmed) {
            alert("도서 대출이 완료되었습니다.");
            return true;
        } else {
            //취소
            alert("도서 대출이 취소되었습니다.");
            return false;
        }
    }
    //반납하기
    function returnSubmit() {
        var isConfirmed = confirm("도서 반납을 하시겠습니까?");

        if (isConfirmed) {
            alert("도서 반납이 완료되었습니다.");
            return true;
        } else {
            //취소
            alert("도서 반납이 취소되었습니다.");
            return false;
        }
    }
</script>
<%@ include file="/WEB-INF/views/library/common/footer.jsp" %>
</body>
</html>