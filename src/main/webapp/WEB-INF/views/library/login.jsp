<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <link rel="stylesheet" type="text/css" href="/css/user.css">
    <%@ include file="/WEB-INF/views/library/common/header.jsp" %>
    <title>도서 관리 시스템</title>
</head>
<body>
<div id="pageBody">
    <form method="post" action="/library/loginOk">
        <div class="loginBox">
            <div class="loginBox2">
                로그인 배포중
            </div>
            <div class="loginForm">
                <li>아이디
                    <input type="text" id="userId" name="userId" placeholder="아이디를 입력해주세요."/>
                </li>
                <li>비밀번호
                    <input type="password" id="password" name="password" placeholder="비밀번호를 입력해주세요."/>
                </li>
            </div>
        </div>
        <div class="btnstyle">
            <button type="button" onclick="window.location.href='/library/signUp'" style="background-color: #FFF">회원가입
            </button>
            <button type="submit" onclick="loginSubmit()" style="background-color: #EFE7DD">로그인</button>
        </div>
        <c:if test="${not empty error}">
            <p>${error}</p>
        </c:if>
    </form>
</div>

<script>
    // 로그인 팝업
    function loginSubmit() {
        var userId = document.forms[0]["userId"].value;
        var password = document.forms[0]["password"].value;

        if (userId === "" || password === "") {
            alert("아이디와 비밀번호를 입력해주세요.");
            return false;
        }
    }

    // URL에서 error 파라미터가 있는지 확인하고, 있으면 팝업창을 띄움
    window.onload = function () {
        const urlParams = new URLSearchParams(window.location.search);
        const error = urlParams.get('error');
        if (error) {
            alert("로그인에 실패하였습니다. 다시 시도해주세요.");
        }
    }
</script>
<%@ include file="/WEB-INF/views/library/common/footer.jsp" %>
</body>
</html>
