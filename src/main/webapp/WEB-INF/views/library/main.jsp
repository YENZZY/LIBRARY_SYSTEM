<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <%@ include file="/WEB-INF/views/library/common/header.jsp" %>
</head>
<body>
<div id="mainBody">
    <%@ include file="/WEB-INF/views/library/book/bookSearch.jsp" %>
    <%@ include file="/WEB-INF/views/library/book/bookList.jsp" %>
</div>
<h2>hello world</h2>
<%@ include file="/WEB-INF/views/library/common/footer.jsp" %>
</body>
</html>
