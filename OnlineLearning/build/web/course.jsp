<%-- 
    Document   : course
    Created on : Sep 15, 2023, 9:10:13 PM
    Author     : asus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Courses</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">
        <link rel="web icon" type="png" href="img/mu.png"/>

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!--         Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/homeStyle.css" rel="stylesheet">
    </head>
    <body>
        <!-- Navbar Start -->
        <jsp:include page="header.jsp"></jsp:include>
            <!-- Navbar End -->

            <!-- Header Start -->
            <div class="container-fluid bg-primary py-5 mb-5 page-header">
                <div class="container py-5">
                    <div class="row justify-content-center">
                        <div class="col-lg-10 text-center">
                            <h1 class="display-3 text-white animated slideInDown">Các khoá học</h1>
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb justify-content-center">
                                    <li class="breadcrumb-item"><a class="text-white" href="home.jsp">Trang chủ</a></li>
                                    <li class="breadcrumb-item text-white active" aria-current="page">Khoá học</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Header End -->

            <!--Search-->
        <li id="search" class="search">
            <form action="search">
                <input  class="search-input" placeholder="Search courses..." type="text" value="" name="search">
            </form>
        <c:set value="${requestScope.search_raw}" var="k" />
    </li>
    <!--Search-->


    <!--Show Course-->
    <div class="listcourse">

        <div class="container-xxl py-5">

            <div class="container"><br>      

                <div class="row g-4">   
                    <c:forEach items="${listAll}" var="o">
                        <div class="col-lg-3 col-sm-6 wow fadeInUp">                
                            <div class="service-item text-center pt-3">
                                <a href="detail?cId=${o.cId}">
                                    <div class="p-4" style="cursor: pointer">
                                        <i class="text-primary mb-4"><img src="${o.img}"/></i>
                                        <h5 class="mb-3">${o.cName}</h5>
                                        <p>${o.description}</p>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                </div>

            </div>

        </div>

    </div>

    <!--Show Course-->


    <!-- Footer Start -->
    <jsp:include page="footer.jsp"></jsp:include>
    <!-- Footer End -->


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

