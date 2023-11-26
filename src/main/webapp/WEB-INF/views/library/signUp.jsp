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
    <div class="signUpBox">
        <div class="signUpBox2">
            회원가입
        </div>
        <ul class="signUpForm">
            <li>아이디
                <input class="inputBox" type="text" placeholder="아이디를 입력해주세요.">
            </li>
            <li>비밀번호
                <input class="inputBox" type="text" placeholder="비밀번호를 입력해주세요.">
            </li>
            <li>비밀번호 재입력
                <input class="inputBox" type="text" placeholder="비밀번호를 재입력해주세요.">
            </li>
            <li>이메일
                <input class="inputBox" type="text" placeholder="이메일 입력해주세요.">
            </li>
                <label>
                    <span style="margin: 0 100px 0 20px">관리자 여부</span>
                    <span>회원</span>
                    <input type="radio" name="role" value="회원" checked/>&nbsp;
                    <span>관리자</span>
                    <input class="radioBox" type="radio" name="role" value="관리자"/>
                </label>

        </ul>

    </div>
    <div class="btnstyle">
        <button type="submit" style="background-color: #FFFBF5">완료</button>
        <button type="button" onclick="window.location.href='/login'" style="background-color: #EFE7DD">취소</button>
    </div>
</div>
<%@ include file="/WEB-INF/views/library/common/footer.jsp" %>
</body>
</html>
