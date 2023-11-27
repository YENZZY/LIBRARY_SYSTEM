<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <!-- jQuery 추가 -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>
<body>
<header>
    <div style="min-width: 350px; display: flex; justify-content: space-between; float: left;">
        <span id="borrowListLink">대출 이력 조회</span>
        <span id="bookRegistLink" onclick="window.location.href='/library/book/bookRegist'">도서 등록</span>
        <span id="signUpLink" onclick="window.location.href='/library/signUp'">회원 등록</span>
    </div>
    <span class="logo" onclick="main()">도서 관리 시스템</span>
    <span id="nicknameSpan" class="nickname">${userId}</span>
    <button id="logoutButton" type="submit" onclick="logout()">로그아웃</button>
</header>
<script>
    // 헤더 정보 조회
    function checkLoginStatus() {
        // AJAX를 사용하여 서버에서 헤더 정보를 조회
        $.ajax({
            url: "/library/headerInfo",
            type: "GET",
            success: function (user) {
                updateHeader(user);
            },
            error: function () {
                console.error("Failed to fetch header information.");
            }
        });
    }

    // 헤더 정보 업데이트
    function updateHeader(user) {
        var borrowListLink = document.getElementById("borrowListLink");
        var bookRegistLink = document.getElementById("bookRegistLink");
        var signUpLink = document.getElementById("signUpLink");
        var nicknameSpan = document.getElementById("nicknameSpan");
        var logoutButton = document.getElementById("logoutButton");

        if (user != null) {
            nicknameSpan.textContent = "";
            logoutButton.style.display = "none";
            bookRegistLink.style.display = "none";
            signUpLink.style.display = "none";
            borrowListLink.style.display = "none";

            // 관리자 여부에 따라 헤더 업데이트
            if (user.admin === "관리자") {
                nicknameSpan.textContent = user.userId;
                logoutButton.style.display = "inline";
                bookRegistLink.style.display = "inline";
                signUpLink.style.display = "inline";
                borrowListLink.style.display = "inline";
            } else if (user.admin === "회원") {
                nicknameSpan.textContent = user.userId;
                logoutButton.style.display = "inline";
                bookRegistLink.style.display = "none";
                signUpLink.style.display = "none";
                borrowListLink.style.display = "inline";
            }
        }
    }

    // 메인화면 이동
    function main() {
        window.location.href = "/library/main";
    }

    // 로그아웃
    function logout() {
        $.ajax({
            url: "/library/logout",
            type: "POST",
            success: function () {
                window.location.href = "/library/login";
            },
            error:function (){
                console.error("로그아웃을 실패하였습니다.");
            }
        });
    }

    // 페이지 로딩 시 헤더 정보 조회
    checkLoginStatus();
</script>
</body>
</html>
