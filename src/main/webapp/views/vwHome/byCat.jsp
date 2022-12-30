<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="articlesByCat" scope="request" type="java.util.List<com.example.googlenewsclone.beans.Article>"/>

<t:main>
    <jsp:body>
        <c:forEach items="${articlesByCat}" var="byCat">
            <h1>${byCat.title}</h1>
        </c:forEach>
    </jsp:body>
</t:main>