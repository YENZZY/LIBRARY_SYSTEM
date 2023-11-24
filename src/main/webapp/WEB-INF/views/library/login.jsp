<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <link rel="stylesheet" type="text/css" href="/css/user.css">
    <%@ include file="/WEB-INF/views/library/common/header.jsp" %>
    <title>도서 관리 시스템</title>
</head>
<body>
<div id="pageBody">
    <div class="loginBox">
        <div class="loginBox2">
            로그인
        </div>
        <ul class="loginForm">
            <li>아이디
                <input type="text" placeholder="아이디를 입력해주세요.">
            </li>
            <li>비밀번호
                <input type="text" placeholder="비밀번호를 입력해주세요.">
            </li>
        </ul>

    </div>
    <div class="btnstyle">
        <button type="button" onclick="/signUp" style="background-color: #FFFBF5">회원가입</button>
        <button type="submit" style="background-color: #EFE7DD">로그인</button>
    </div>
</div>
<%@ include file="/WEB-INF/views/library/common/footer.jsp" %>
</body>
</html>
