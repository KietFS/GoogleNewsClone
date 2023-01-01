<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean
        id="articles"
        scope="request"
        type="java.util.List<com.example.googlenewsclone.beans.Article>"
/>

<t:writer>
    <jsp:body>
        <h1>Allo Alo</h1>
    </jsp:body>
</t:writer>