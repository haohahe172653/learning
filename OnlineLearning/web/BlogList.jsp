<%-- 
    Document   : BlogList
    Created on : Sep 12, 2023, 11:22:39 PM
    Author     : may tinh cua hieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Share</title>
        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">
        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">
        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <!--CSS-->
        <link rel="stylesheet" href="css/blogStyle.css"/>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/homeStyle.css"/>
        <link rel="web icon" type="png" href="img/mu.png"/>
        <jsp:useBean id="a" class="dal.BlogDAO" scope="request"></jsp:useBean>
        </head>
        <body>
        <%@include file="header.jsp" %>
        <div class="content">
            <div class="container"> 
                <div class="search">
                    <form action="searchblog">
                        <input id ="input-text" name="text" type="text" placeholder="Tìm kiếm"/>
                        <input id = "search-button" type="submit" value="Tìm kiếm"/>
                    </form>
                </div>
                <div class="list-item">
                    <c:forEach items="${listP}" var="b">
                        <div class="item">
                            <div class="col-md-4 blog-image">
                                <a href="blogdetail?id=${b.id}" class="img">
                                    <img src="img/${b.img}"/>
                                </a>
                            </div>
                            <div class="col-md-8 blog-detail">
                                <div class="top">
                                    <a href="blogdetail?id=${b.id}"><h3>${b.title}</h3></a>
                                    <p>abcd</p>
                                </div>
                                <div class="bottom">
                                    <p>Tác giả: ${b.author}</p>
                                    <p>${b.createDate}</p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    
                    <nav aria-lable="..." class="page">
                        <ul class="pagination pagination-lg">
                            <c:forEach begin="1" end="${a.numberPage}" var="i">
                                <li class="page-item"><a class="page-link" href="blogpage?index=${i}">${i}</a></li>
                            </c:forEach>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>
        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </body>
</html>
