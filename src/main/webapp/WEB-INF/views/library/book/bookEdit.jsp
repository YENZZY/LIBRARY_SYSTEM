<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="/css/book.css">
        <link rel="stylesheet" type="text/css" href="/css/style.css">
        <%@ include file="/WEB-INF/views/library/common/header.jsp" %>
        <title>도서 관리 시스템</title>
    </head>
    <body>
        <script>
            function back() {
                window.history.back();
            }
        </script>
        <div id="pageBody">
            <div class="pageTitle">도서 등록</div>
            <div class="detailBox">
                <div class="detailBox2"></div>
                <div class="DetailForm">
                    <span>도서명</span>
                    <input class="detailFormBox" placeholder="도서명을 입력해주세요."/>
                </div>
                <div class="DetailForm">
                    <span>저자</span>
                    <input class="detailFormBox" placeholder="저자를 입력해주세요."/>
                </div>
                <div class="DetailForm">
                    <span>장르</span>
                    <input class="detailFormBox" placeholder="장르를 입력해주세요."/>
                </div>
                <div class="DetailForm">
                    <span>출판사</span>
                    <input class="detailFormBox" placeholder="출판사를 입력해주세요."/>
                </div>
                <div class="DetailForm">
                    <span>출판연도</span>
                    <input class="detailFormBox" placeholder="출판연도를 입력해주세요."/>
                </div>
            </div>
            <div class="btnBox2">
                <button class="detailBtn2" type="submit">수정</button>
                <button class="detailBtn2" type="button" onclick="back()">취소</button>
            </div>
        </div>
        <%@ include file="/WEB-INF/views/library/common/footer.jsp" %>
    </body>
</html>