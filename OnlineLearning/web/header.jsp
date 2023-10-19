
<%-- 
    Document   : header
    Created on : Sep 11, 2023, 4:24:10 PM
    Author     : asus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="css/headerStyle.css">
</head>
<body>
    <header>
        <h2 class="logo"><a href="home">DoCode</a></h2>
        <nav class="navigation">
            <c:if test="${sessionScope.user.role == 2}">
                <a href="#">Quản lí khoá học</a>
            </c:if>
            <c:if test="${sessionScope.user.role == 3}">
                <a href="#">Quản lí blog</a>
            </c:if>
            <c:if test="${sessionScope.user.role == 1}">
                <a href="usermanager">Quản lí nhân sự</a>
            </c:if>
            <a href="listAll">Khoá học</a>
            <a href="#">Luyện Tập</a>
            <a href="about.jsp">Về chúng tôi</a>
            <a href="blogpage">Chia sẻ</a>
            <c:if test="${sessionScope.user.role == null}">
                <a class="button" href="login.jsp">Đăng nhập</a>
            </c:if>

            <c:if test="${sessionScope.user.role != null}">
                <a class="button" href="profile.jsp">Hello ${sessionScope.user.firstName}</a>
                <a class="button" href="logout">Đăng xuất</a>
            </c:if>
        </nav>
    </header>

    <script src="css/script.js"></script>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>

