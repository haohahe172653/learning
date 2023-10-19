<%-- 
    Document   : user
    Created on : Sep 28, 2023, 5:25:48 PM
    Author     : may tinh cua hieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <title>nice try</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700"
              />
        <!-- https://fonts.google.com/specimen/Roboto -->
        <link rel="stylesheet" href="css/fontawesome.min.css" />
        <!-- https://fontawesome.com/ -->
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <!-- https://getbootstrap.com/ -->
        <link rel="stylesheet" href="css/templatemo-style.css">

    </head>

    <body id="reportsPage">
        <nav class="navbar navbar-expand-xl">
            <div class="container h-100">
                <a class="navbar-brand" href="usermanage">
                    <h1 class="tm-site-title mb-0">Product Admin</h1>
                </a>
                <button
                    class="navbar-toggler ml-auto mr-0"
                    type="button"
                    data-toggle="collapse"
                    data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                    >
                    <i class="fas fa-bars tm-nav-icon"></i>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mx-auto h-100">
                        <li class="nav-item">
                            <a class="nav-link" href="dashboard.jsp">
                                <i class="fas fa-tachometer-alt"></i> Dashboard
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item dropdown">
                            <a
                                class="nav-link dropdown-toggle"
                                href="#"
                                id="navbarDropdown"
                                role="button"
                                data-toggle="dropdown"
                                aria-haspopup="true"
                                aria-expanded="false">
                                <i class="far fa-file-alt"></i>
                                <span> Reports <i class="fas fa-angle-down"></i> </span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Daily Report</a>
                                <a class="dropdown-item" href="#">Weekly Report</a>
                                <a class="dropdown-item" href="#">Yearly Report</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="products.html">
                                <i class="fas fa-shopping-cart"></i> Products
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="accounts.html">
                                <i class="far fa-user"></i> Accounts
                            </a>
                        </li>
                        <li class="nav-item dropdown">
                            <a
                                class="nav-link dropdown-toggle"
                                href="#"
                                id="navbarDropdown"
                                role="button"
                                data-toggle="dropdown"
                                aria-haspopup="true"
                                aria-expanded="false">
                                <i class="fas fa-cog"></i>
                                <span> Settings <i class="fas fa-angle-down"></i> </span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Profile</a>
                                <a class="dropdown-item" href="#">Billing</a>
                                <a class="dropdown-item" href="#">Customize</a>
                            </div>
                        </li>
                    </ul>
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link d-block" href="logout">
                                Admin, <b>Logout</b>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container mt-5">
            <div class="row tm-content-row">
                <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block tm-block-products">
                        <div class="tm-product-table-container">
                            <div>
                                <form action="#" method="post">
                                    <select name="role">
                                        <option value="learner">Học viên</option>
                                        <option value="coursemanager">Giảng viên</option>
                                    </select>
                                    <select name="sort">
                                        <option value="IdAsc">Id tăng dần</option>
                                        <option value="IdDesc">Id giảm dần</option>

                                    </select>
                                    <input type="submit" value="Lọc"/>
                                </form>
                            </div>
                            <table class="table table-hover tm-table-small tm-product-table">
                                <thead>
                                    <tr>
                                        <th scope="col">&nbsp;</th>
                                        <th scope="col">Account name</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">Phone</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">&nbsp;</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${users}" var="u">
                                        <tr>
                                            <th scope="row"><input type="checkbox" /></th>
                                            <td class="tm-product-name"><a href="#">${u.username}</a></td>
                                            <td>${u.email}</td>
                                            <td>${u.phoneNumber}</td>
                                            <c:if test="${u.isAvailable == true}">
                                                <td>Available</td>
                                                <td><a href="setuserstatus?id=${u.id}&status=ban">Ban</a></td>
                                            </c:if>
                                            <c:if test="${u.isAvailable == false}">
                                                <td>Unavailable</td>
                                                <td><a href="setuserstatus?id=${u.id}&status=unban">Unban</a></td>
                                            </c:if>
                                        </tr>
                                    </c:forEach>

                                </tbody>
                            </table>
                        </div>
                        <!-- table container -->
                        <a
                            href="add-product.html"
                            class="btn btn-primary btn-block text-uppercase mb-3">Add new product</a>
                        <button class="btn btn-primary btn-block text-uppercase">
                            Delete selected products
                        </button>
                    </div>
                </div>
                <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block tm-block-product-categories">
                        <h2 class="tm-block-title">Product Categories</h2>
                        <div class="tm-product-table-container">
                            <table class="table tm-table-small tm-product-table">
                                <tbody>
                                    <tr>
                                        <td class="tm-product-name">Product Category 1</td>
                                        <td class="text-center">
                                            <a href="#" class="tm-product-delete-link">
                                                <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                            </a>
                                        </td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                        <!-- table container -->
                        <button class="btn btn-primary btn-block text-uppercase mb-3">
                            Add new category
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <footer class="tm-footer row tm-mt-small">
            <div class="col-12 font-weight-light">
                <p class="text-center text-white mb-0 px-4 small">



                </p>
            </div>
        </footer>

        <script src="js/jquery-3.3.1.min.js"></script>
        <!-- https://jquery.com/download/ -->
        <script src="js/bootstrap.min.js"></script>
        <!-- https://getbootstrap.com/ -->
        <script>
            $(function () {
                $(".tm-product-name").on("click", function () {
                    window.location.href = "edit-product.html";
                });
            });
        </script>
    </body>
</html>
