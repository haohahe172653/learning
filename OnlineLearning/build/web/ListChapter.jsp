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
        <title>${requestScope.de.cName}</title>
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
        <link rel="web icon" href="img/mu.png"/>
        <style>
            #sidebar-wrapper {
                min-height: 100vh;
                margin-left: -15rem;
                transition: margin .25s ease-out;
            }

            #sidebar-wrapper .sidebar-heading {
                padding: 0.875rem 1.25rem;
                font-size: 1.2rem;
            }

            #sidebar-wrapper .list-group {
                width: 15rem;
            }

            #page-content-wrapper {
                min-width: 100vw;
            }

            #wrapper.toggled #sidebar-wrapper {
                margin-left: 0;
            }

            @media (min-width: 768px) {
                #sidebar-wrapper {
                    margin-left: 0;
                }

                #page-content-wrapper {
                    min-width: 0;
                    width: 100%;
                }

                #wrapper.toggled #sidebar-wrapper {
                    margin-left: -15rem;
                }
            }
        </style>
    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>

            <div class="d-flex" id="wrapper">
                <!-- Sidebar -->
                <div class="bg-light border-right vh-100" id="sidebar-wrapper">
                    <div class="sidebar-heading">${sessionScope.course.cName}</div>
                <div class="list-group list-group-flush overflow-auto h-100">
                    <c:forEach items="${requestScope.list}" var="item">
                        <a href="ListChapter?cid=${item.id}" class="list-group-item list-group-item-action ${item.id == cid ? 'active' : ''}">${item.name}</a> 
                    </c:forEach> 
                        
                </div>
            </div>
            <!-- /#sidebar-wrapper -->
            <!-- Page Content -->
            <div id="page-content-wrapper">
                <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
                    <button class="btn btn-primary" id="menu-toggle">Menu</button>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </nav>
                <div class="container-fluid">
                    <h1 class="mt-4">${requestScope.lesson.getlName()}</h1>
                    <div>
                        ${requestScope.lesson.content}
                    </div>
                </div>
                    <div>
                <c:if test="${requestScope.pagenum > 0}">
                    <a href="ListChapter?pagenum=${requestScope.pagenum - 1}&cid=${requestScope.cid}">Prev</a>
                </c:if>
                <c:if test="${requestScope.pagenum < requestScope.totalPage - 1}">
                    <a href="ListChapter?pagenum=${requestScope.pagenum + 1}&cid=${requestScope.cid}">Next</a>
                </c:if>
                    </div>
            </div>
            <!-- /#page-content-wrapper -->
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
        <script>
            $("#menu-toggle").click(function (e) {
                e.preventDefault();
                $("#wrapper").toggleClass("toggled");
            });
        </script>
    </body>
</html>
