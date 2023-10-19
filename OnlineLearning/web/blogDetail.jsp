<%-- 
    Document   : blogDetail
    Created on : Oct 2, 2023, 4:27:41 AM
    Author     : may tinh cua hieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/headerStyle.css"/>
        <link rel="stylesheet" type="text/css" href="css/footer.css"/>
        <link rel="stylesheet" type="text/css" href="blogs/blog.css"/>
        
    </head>
    <body>
        <c:set var="blog" ></c:set>
        <%@include file="header.jsp" %>
        <jsp:include page="blogs/${sessionScope.pageBlog.content}"></jsp:include>
        <%@include file="footer.jsp" %>
    </body>
</html>
