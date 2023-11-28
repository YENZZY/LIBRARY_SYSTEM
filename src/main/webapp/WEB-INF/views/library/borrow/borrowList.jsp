<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <link rel="stylesheet" type="text/css" href="/css/main.css">
    <%@ include file="/WEB-INF/views/library/common/header.jsp" %>
    <title>도서 관리 시스템</title>
</head>
<body>
<div id="pageBody">
    <%--    <%@ include file="/WEB-INF/views/library/book/bookSearch.jsp" %>--%>
    <%--    <c:if test="${not empty searchKeyword}">--%>
    <%--        <p class="searchWord"> 검색어 : ${searchKeyword} </p>--%>
    <%--    </c:if>--%>
    <div class="pageTitle" style="cursor:pointer;">도서 대출 조회</div>
    <div class="listBox">
        <div class="listBox2">
            <ul class="listTextBox">
                <li>도서번호</li>
                <li>도서명</li>
                <li>저자</li>
                <li>대출자</li>
                <li>대출일</li>
                <li>반납일</li>
                <li>대출횟수</li>
            </ul>
        </div>
        <c:choose>
            <c:when test="${not empty borrowList}">
                <c:set var="currentPage" value="${not empty param.page ? param.page : 1}"/>
                <c:set var="itemsPerPage" value="10"/>
                <c:forEach var="book" items="${borrowList}" begin="${((currentPage - 1) * itemsPerPage)}"
                           end="${(currentPage * itemsPerPage) - 1}">
                    <ul class="listTextBox" onclick="toBookDetail(${book.bookNum})">
                        <li>${book.bookNum}</li>
                        <li>${book.bookTitle}</li>
                        <li>${book.author}</li>
                        <li id="borrowId">${book.userId}</li>
                        <li id="dateBox"><fmt:formatDate value="${book.borrowDate}" pattern="yyyy-MM-dd"/></li>
                        <li id="dateBox" class="dateBox"><fmt:formatDate value="${book.returnDate}"
                                                                         pattern="yyyy-MM-dd"/></li>
                        <li>${book.borrowCount}</li>
                    </ul>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <p>No results found.</p>
            </c:otherwise>
        </c:choose>
    </div>
    <!-- 페이징 -->
    <div class='pagebox'>
        <c:if test="${not empty borrowList}">
            <button onclick="handleClickPage(${currentPage - 1})" disabled="${currentPage == 1}">
                이전
            </button>

            <c:forEach var="index" begin="1" end="${(borrowList.size() / itemsPerPage) + 1}">
                <button
                        onclick="handleClickPage(${index})"
                        style="color: ${currentPage == index ? '#AB8B61' : '#EEE1D7'}"
                >
                        ${index}
                </button>
            </c:forEach>
            <button onclick="handleClickPage(${currentPage + 1})"
                    disabled="${currentPage == (bookListAll.size() / itemsPerPage)}">
                다음
            </button>

        </c:if>
    </div>
</div>

<script>
    // 상세페이지 이동
    function toBookDetail(bookNum) {
        window.location.href = '/library/book/bookDetail/' + bookNum;
    }

    // 페이지 클릭 처리
    function handleClickPage(page) {
        console.log('handleClickPage called with page:', page);
        if (page > 0 && page <= ${(borrowList.size() / itemsPerPage) + 1}) {
            console.log('Navigating to new page:', page);
            location.href = '/library/borrow/borrowList?page=' + page;
        }
    }
</script>
<%@ include file="/WEB-INF/views/library/common/footer.jsp" %>
</body>
</html>
