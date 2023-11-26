<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                <span>1</span>
            </div>
        </div>
        <div class="DetailForm">
            <span>도서명</span>
            <div class="detailFormBox">
                <span>헝거게임</span>
            </div>
        </div>
        <div class="DetailForm">
            <span>저자</span>
            <div class="detailFormBox">
                <span>장꿈이</span>
            </div>
        </div>
        <div class="DetailForm">
            <span>장르</span>
            <div class="detailFormBox">
                <span>판타지</span>
            </div>
        </div>
        <div class="DetailForm">
            <span>출판사</span>
            <div class="detailFormBox">
                <span>게임출판사</span>
            </div>
        </div>
        <div class="DetailForm">
            <span>출판연도</span>
            <div class="detailFormBox">
                <span>2018</span>
            </div>
        </div>
        <div class="DetailForm">
            <span>도서상태</span>
            <div class="detailFormBox">
                <span>대출가능</span>
            </div>
        </div>
        <div class="DetailForm">
            <span>대출일</span>
            <div class="detailFormBox">
                <span>2023-11-11</span>
            </div>
        </div>
        <div class="DetailForm">
            <span>반납일</span>
            <div class="detailFormBox">
                <span>2023-11-18</span>
            </div>
        </div>
    </div>
    <div class="btnBox">
        <button class="detailBtn" onclick="/main">목록</button>
        <div>
            <button class="detailBtn" onclick="window.location.href='/book/bookEdit'">수정</button>
            <button class="detailBtn" onclick="">대출하기</button>
        </div>
    </div>
</div>
<%@ include file="/WEB-INF/views/library/common/footer.jsp" %>
</body>
</html>