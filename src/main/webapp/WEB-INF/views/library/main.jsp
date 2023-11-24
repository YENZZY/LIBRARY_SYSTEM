<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <%@ include file="/WEB-INF/views/library/common/header.jsp" %>
    <title>도서 관리 시스템</title>
</head>
<body>
<div id="pageBody">
        <%@ include file="/WEB-INF/views/library/book/bookSearch.jsp" %>
        <%@ include file="/WEB-INF/views/library/book/bookList.jsp" %>
</div>
<%@ include file="/WEB-INF/views/library/common/footer.jsp" %>
</body>
</html>