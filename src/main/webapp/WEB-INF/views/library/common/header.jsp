<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
<header>
    <span>대출 이력 조회</span>
    <span id="bookRegistLink" onclick="window.location.href='/book/bookRegist'">도서 등록</span>
    <span id="signUpLink" onclick="window.location.href='/signUp'">회원 등록</span>
    <span class="logo" onclick="main()">도서 관리 시스템</span>
    <span class="nickname">관리자</span>
    <button type="submit" value="logout">로그아웃</button>
</header>
<script>
    <%--메인화면 이동--%>

    function main() {
        window.location.href = "/main";
    }

    function checkLoginStatus() {
        // 로그인 전 헤더
        var beforeLogIn = true; // 로그인 되면

        if (beforeLogIn) {
            var adminRole = "관리자";
            adminHeader(adminRole);
        } else {
            // 로그인이 되어 있지 않다면 로고만 보이게 설정
            document.getElementById("logo").style.display = "inline";
        }
    }

    function adminHeader(adminRole) {
        if (adminRole === "관리자") {
            // 관리자 권한 있을때
            document.getElementById("bookRegistLink").style.display = "inline";
            document.getElementById("signUpLink").style.display = "inline";
        } else {
            // 관리자 권한 없을때
            document.getElementById("bookRegistLink").style.display = "none";
            document.getElementById("signUpLink").style.display = "none";
        }
    }
</script>
</body>
</html>
