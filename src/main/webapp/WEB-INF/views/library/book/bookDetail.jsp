<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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
                <span class="${bookDetail.status == '대출 가능' ? 'bookOk' : 'bookNo'}">${bookDetail.status} (아이디 : ${bookDetail.userId})</span>
            </div>
        </div>
        <div class="DetailForm">
            <span>대출일</span>
            <div class="detailFormBox">
                 <span>
        <fmt:formatDate value="${bookDetail.borrowDate}" pattern="yyyy-MM-dd"/>
    </span>
            </div>
        </div>
        <div class="DetailForm">
            <span>반납일</span>
            <div class="detailFormBox">
               <span>
        <fmt:formatDate value="${bookDetail.returnDate}" pattern="yyyy-MM-dd"/>
    </span>
            </div>
        </div>
    </div>
    <div class="btnBox">
        <button class="detailBtn" onclick="main()">목록</button>
        <div class="btnBox2">
            <button class="detailBtn" onclick="toBookEdit(${bookDetail.bookNum})">수정</button>
            <c:choose>
                        <c:when test="${bookDetail.status eq '대출 가능'}">
                            <button class="detailBtn" onclick="borrowSubmit(${bookDetail.bookNum})">대출하기</button>
                        </c:when>
                        <c:when test="${bookDetail.status eq '대출중'}">
                            <button class="detailBtn" onclick="returnSubmit(${bookDetail.bookNum})">반납하기</button>
                        </c:when>
            </c:choose>
        </div>
    </div>
</div>
<script>
    function toBookEdit(bookNum) {
        window.location.href = '/library/book/bookEdit/' + bookNum;
    }

    function borrowSubmit(bookNum) {
        var userId = prompt("아이디를 입력해주세요 :", "");

        if (userId) {
            $.ajax({
                type: "POST",
                contentType: "application/json",
                url: "/library/borrow/borrowBook/" + bookNum,
                data: JSON.stringify({bookNum: bookNum, userId: userId}),
                success: function (response) {
                    if (response) {
                        alert(response);
                        location.reload();
                    } else {
                        alert("대출에 실패하였습니다.");
                    }
                },
                error: function (xhr, status, error) {
                    alert("대출 실패 : 없는 아이디 입니다.");
                }
            });
        } else {
            alert("도서 대출이 취소되었습니다.");
        }
    }


    function returnSubmit(bookNum) {
        var isConfirmed = confirm("도서 반납을 하시겠습니까?");

        if (isConfirmed) {
            $.ajax({
                type: "POST",
                url: "/library/borrow/returnBook/" + bookNum,
                success: function (response) {
                    if (response) {
                        alert("도서 반납이 완료되었습니다.");
                        location.reload();
                    } else {
                        alert("반납에 실패하였습니다.");
                    }
                },
                error: function (xhr, status, error) {
                    alert("반납 중 오류 발생");
                }
            });
        } else {
            alert("도서 반납이 취소되었습니다.");
        }
    }


    function main() {
        window.location.href = '/library/main';
    }
</script>
<%@ include file="/WEB-INF/views/library/common/footer.jsp" %>
</body>
</html>
