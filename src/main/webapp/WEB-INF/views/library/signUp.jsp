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
    <form action="/library/signUpOk" method="post" id="signUpForm">
    <div class="signUpBox">
        <div class="signUpBox2">
            회원가입
        </div>
        <ul class="signUpForm">
            <li>아이디
                <input class="inputBox" type="text" placeholder="5~12자 영문, 숫자입니다." name="userId" id="userId">
            </li>
            <span id="idCheckResult"></span>
            <li>비밀번호
                <input class="inputBox" type="password" placeholder="비밀번호는 8~15자입니다." name="password" id="password">
            </li>
            <li style="height: 85px; line-height: 105px; ">비밀번호 확인
                <input class="inputBox" type="password" placeholder="비밀번호를 재입력해주세요." name="passwordOk" id="passwordOk" style="margin-top: 25px;">
            </li>
            <span id="passwordMsg"></span>
            <li>이메일
                <input class="inputBox" type="email" placeholder="이메일을 입력해주세요." name="email">
            </li>
                <label>
                    <span style="margin: 0 100px 0 20px">관리자 여부</span>
                    <span>회원</span>
                    <input class="radioBox" type="radio" name="admin" value="회원" checked/>&nbsp;
                    <span>관리자</span>
                    <input class="radioBox" type="radio" name="admin" value="관리자"/>
                </label>

        </ul>

    </div>
    <div class="btnstyle">
        <button type="submit" onclick="submitForm()" style="background-color: #FFFBF5">완료</button>
        <button type="button" onclick="window.location.href='/library/login'" style="background-color: #EFE7DD">취소</button>
    </div>
    </form>
</div>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
    <%--전송 버튼--%>
    function submitForm() {
        var isConfirmed = confirm("회원 가입을 하시겠습니까?");
        if (isConfirmed) {
            document.getElementById("signUpForm").submit();
        }
        return false;
    }
    <%--아이디 중복 확인--%>
    function checkUserId() {
        var userId = document.getElementById("userId").value;

        $.ajax({
            url: "/library/checkUserId",
            type: "POST",
            data: { userId: userId },
            success: function (result) {
                // 서버에서 받은 결과에 따라 메시지 표시
                var idCheckResult = document.getElementById("idCheckResult");
                if (result.available) {
                    idCheckResult.textContent = "이미 존재하는 아이디입니다.";
                    idCheckResult.style.color = "#FF6363";
                } else {
                    idCheckResult.textContent = "사용 가능한 아이디입니다.";
                    idCheckResult.style.color = "#439AFF";
                }
            },
            error: function () {
                console.error("아이디 중복 확인 중 오류 발생");
            }
        });
    }

    document.getElementById("userId").addEventListener("input", checkUserId);

//비밀번호 중복 확인
    $('#password, #passwordOk').on('input', function () {
        var password = $('#password').val();
        var passwordOk = $('#passwordOk').val();

        var passwordMsg = $('#passwordMsg');

        if(password==passwordOk){
            passwordMsg.text('비밀번호가 일치합니다.').css('color','#439AFF');
        }else {
            passwordMsg.text('비밀번호가 일치하지 않습니다.').css('color','#FF6363');
        }
    });
</script>
<%@ include file="/WEB-INF/views/library/common/footer.jsp" %>
</body>
</html>
