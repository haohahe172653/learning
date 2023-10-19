<%-- 
    Document   : detail
    Created on : Sep 21, 2023, 11:32:33 AM
    Author     : asus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${sessionScope.de.cName}</title>
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
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/homeStyle.css"/>
        <link rel="stylesheet" href="css/detailStyle.css"/>
        <link rel="web icon" type="png" href="img/mu.png"/>
    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>

            <!-- Header Start -->
            <div class="container-fluid bg-primary py-5 mb-5 page-header">
                <div class="container py-5">
                    <div class="row justify-content-center">
                        <div class="col-lg-10 text-center">
                            <h1 class="display-3 text-white animated slideInDown">Thông tin khoá học</h1>
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb justify-content-center">
                                    <li class="breadcrumb-item"><a class="text-white" href="home.jsp">Trang chủ</a></li>
                                    <li class="breadcrumb-item text-white active" aria-current="page">Thông tin khoá học</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Header End -->

            <div class="container">
                <div class="">
                    <div class="container mt-5">
                        <a href="detail?cId=${de.cId}"></a>
                    <div class="row">
                        <div class="col-md-3">

                            <img style="height: 100%; width: 100%" src="${sessionScope.de.img}"/>
                        </div>
                        <div class="col-md-6">
                            <table>
                                <thead>
                                    <tr>
                                        <th>Tên khoá học:</th>
                                        <td>${de.cName}</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>Học viên:</th>
                                        <td>${de.numberStudent}</td>
                                    </tr>
                                    <tr>
                                        <th>Chi tiết: </th>
                                        <td>${de.description}</td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                        <c:if test="${sessionScope.user == null}">
                            <div class="col-md-3 free">
                                <div>Miễn phí</div>
                                <a href="login.jsp">Đăng nhập để tiếp tục</a>
                            </div>
                        </c:if>
                        <c:if test="${sessionScope.user != null}">
                            <div class="col-md-3 free">
                                <div>Miễn phí</div>
                                <a href="${pageContext.request.contextPath}/ListLesson?id=${de.cId}">Học</a>
                            </div>
                        </c:if>
                    </div>

                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>
</html>
