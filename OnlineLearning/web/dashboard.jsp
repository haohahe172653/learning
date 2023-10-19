<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Product Admin - Dashboard HTML Template</title>
        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
        <!-- https://fonts.google.com/specimen/Roboto -->
        <link rel="stylesheet" href="css/fontawesome.min.css">
        <!-- https://fontawesome.com/ -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- https://getbootstrap.com/ -->
        <link rel="stylesheet" href="css/templatemo-style.css">
        <!--
            Product Admin CSS Template
            https://templatemo.com/tm-524-product-admin
        -->
    </head>

    <body id="reportsPage">
        <div class="" id="home">
            <nav class="navbar navbar-expand-xl">
                <div class="container h-100">
                    <a class="navbar-brand" href="index.html">
                        <h1 class="tm-site-title mb-0">Product Admin</h1>
                    </a>
                    <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                            aria-label="Toggle navigation">
                        <i class="fas fa-bars tm-nav-icon"></i>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mx-auto h-100">
                            <li class="nav-item">
                                <a class="nav-link active" href="#">
                                    <i class="fas fa-tachometer-alt"></i>
                                    Dashboard
                                    <span class="sr-only">(current)</span>
                                </a>
                            </li>
                            <li class="nav-item dropdown">

                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="far fa-file-alt"></i>
                                    <span>
                                        Reports <i class="fas fa-angle-down"></i>
                                    </span>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="#">Daily Report</a>
                                    <a class="dropdown-item" href="#">Weekly Report</a>
                                    <a class="dropdown-item" href="#">Yearly Report</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="products.html">
                                    <i class="fas fa-shopping-cart"></i>
                                    Products
                                </a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="accounts.html">
                                    <i class="far fa-user"></i>
                                    Accounts
                                </a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-cog"></i>
                                    <span>
                                        Settings <i class="fas fa-angle-down"></i>
                                    </span>
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
                                <a class="nav-link d-block" href="login.html">
                                    Admin, <b>Logout</b>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>

            </nav>
            <div class="container">
                <div class="row">
                    <div class="col">
                        <p class="text-white mt-5 mb-5">Welcome back, <b>Admin</b></p>
                    </div>
                </div>
                <!-- row -->
                <div class="tm-bg-primary-dark tm-block-col rounded mt-2">
                    <div class=" px-3 mt-3 d-flex flex-row justify-content-between">
                        <h2 class="tm-block-title" style="padding-top: 20px;">Activity</h2>
                        <div class="d-flex align-items-center ">
                            <a style="color: #0022fe" href="dashboard">All
                                Time</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <a style="color: #0022fe" href="dashboard">This
                                Year</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <a style="color: #0022fe" href="dashboardmonth">This
                                Month</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <a style="color: #0022fe" href="dashboardweek">This
                                Week</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </div>
                    </div>
                    <br>

                    <div class="row px-5 mb-3">
                        <div class="col-md-4 mt-1">
                            <div class="d-flex flex-row">
                                <div class="ml-2">
                                    <span class="tm-block-title font-weight-bold">${item1}</span>
                                    <h2 class="tm-block-title">Total Courses</h2>
                                </div>
                            </div>
                        </div>


                        <div class="col-md-4 mt-1">
                            <div class="d-flex flex-row">
                                <div class="ml-2">
                                    <span class="tm-block-title font-weight-bold"></span>
                                    <h2 class="tm-block-title">Total Blogs</h2>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 mt-1">
                            <div class="d-flex flex-row">
                                <div class="ml-2">
                                    <span class="tm-block-title font-weight-bold">${item4}</span>
                                    <h2 class="tm-block-title">Number people studying</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row tm-content-row">
                    <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                        <div class="tm-bg-primary-dark tm-block">
                            <h2 class="tm-block-title">Most Study Courses</h2>
                            <canvas id="barChart"></canvas>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                        <div class="tm-bg-primary-dark tm-block">
                            <h2 class="tm-block-title">Less Study Courses</h2>
                            <canvas id="barChart"></canvas>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                        <div class="tm-bg-primary-dark tm-block tm-block-taller">
                            <h2 class="tm-block-title">Top 3 Courses's Studying</h2>
                            <div id="pieChartContainer">
                                <canvas id="pieChart" class="chartjs-render-monitor" width="200" height="200"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                        <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-overflow">
                            <h2 class="tm-block-title">History registation</h2>
                            <div class="tm-notification-items">
                                <div class="media tm-notification-item">
                                    <div class="tm-gray-circle"><img src="img/notification-01.jpg" alt="Avatar Image"
                                                                     class="rounded-circle"></div>
                                    <div class="media-body">
                                        <p class="mb-2"><b>Jessica</b> and <b>6 others</b> sent you new <a href="#"
                                                                                                           class="tm-notification-link">product updates</a>. Check new orders.</p>
                                        <span class="tm-small tm-text-color-secondary">6h ago.</span>
                                    </div>
                                </div>
                                <div class="media tm-notification-item">
                                    <div class="tm-gray-circle"><img src="img/notification-02.jpg" alt="Avatar Image"
                                                                     class="rounded-circle"></div>
                                    <div class="media-body">
                                        <p class="mb-2"><b>Oliver Too</b> and <b>6 others</b> sent you existing <a href="#"
                                                                                                                   class="tm-notification-link">product updates</a>. Read more reports.</p>
                                        <span class="tm-small tm-text-color-secondary">6h ago.</span>
                                    </div>
                                </div>
                                <div class="media tm-notification-item">
                                    <div class="tm-gray-circle"><img src="img/notification-03.jpg" alt="Avatar Image"
                                                                     class="rounded-circle"></div>
                                    <div class="media-body">
                                        <p class="mb-2"><b>Victoria</b> and <b>6 others</b> sent you <a href="#"
                                                                                                        class="tm-notification-link">order updates</a>. Read order information.</p>
                                        <span class="tm-small tm-text-color-secondary">6h ago.</span>
                                    </div>
                                </div>
                                <div class="media tm-notification-item">
                                    <div class="tm-gray-circle"><img src="img/notification-01.jpg" alt="Avatar Image"
                                                                     class="rounded-circle"></div>
                                    <div class="media-body">
                                        <p class="mb-2"><b>Laura Cute</b> and <b>6 others</b> sent you <a href="#"
                                                                                                          class="tm-notification-link">product records</a>.</p>
                                        <span class="tm-small tm-text-color-secondary">6h ago.</span>
                                    </div>
                                </div>
                                <div class="media tm-notification-item">
                                    <div class="tm-gray-circle"><img src="img/notification-02.jpg" alt="Avatar Image"
                                                                     class="rounded-circle"></div>
                                    <div class="media-body">
                                        <p class="mb-2"><b>Samantha</b> and <b>6 others</b> sent you <a href="#"
                                                                                                        class="tm-notification-link">order stuffs</a>.</p>
                                        <span class="tm-small tm-text-color-secondary">6h ago.</span>
                                    </div>
                                </div>
                                <div class="media tm-notification-item">
                                    <div class="tm-gray-circle"><img src="img/notification-03.jpg" alt="Avatar Image"
                                                                     class="rounded-circle"></div>
                                    <div class="media-body">
                                        <p class="mb-2"><b>Sophie</b> and <b>6 others</b> sent you <a href="#"
                                                                                                      class="tm-notification-link">product updates</a>.</p>
                                        <span class="tm-small tm-text-color-secondary">6h ago.</span>
                                    </div>
                                </div>
                                <div class="media tm-notification-item">
                                    <div class="tm-gray-circle"><img src="img/notification-01.jpg" alt="Avatar Image"
                                                                     class="rounded-circle"></div>
                                    <div class="media-body">
                                        <p class="mb-2"><b>Lily A</b> and <b>6 others</b> sent you <a href="#"
                                                                                                      class="tm-notification-link">product updates</a>.</p>
                                        <span class="tm-small tm-text-color-secondary">6h ago.</span>
                                    </div>
                                </div>
                                <div class="media tm-notification-item">
                                    <div class="tm-gray-circle"><img src="img/notification-02.jpg" alt="Avatar Image"
                                                                     class="rounded-circle"></div>
                                    <div class="media-body">
                                        <p class="mb-2"><b>Amara</b> and <b>6 others</b> sent you <a href="#"
                                                                                                     class="tm-notification-link">product updates</a>.</p>
                                        <span class="tm-small tm-text-color-secondary">6h ago.</span>
                                    </div>
                                </div>
                                <div class="media tm-notification-item">
                                    <div class="tm-gray-circle"><img src="img/notification-03.jpg" alt="Avatar Image"
                                                                     class="rounded-circle"></div>
                                    <div class="media-body">
                                        <p class="mb-2"><b>Cinthela</b> and <b>6 others</b> sent you <a href="#"
                                                                                                        class="tm-notification-link">product updates</a>.</p>
                                        <span class="tm-small tm-text-color-secondary">6h ago.</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <script src="js/jquery-3.3.1.min.js"></script>
                <!-- https://jquery.com/download/ -->
                <script src="js/moment.min.js"></script>
                <!-- https://momentjs.com/ -->
                <script src="js/Chart.min.js"></script>
                <!-- http://www.chartjs.org/docs/latest/ -->
                <script src="js/bootstrap.min.js"></script>
                <!-- https://getbootstrap.com/ -->
                <script src="js/tooplate-scripts.js"></script>
                <script>
                    Chart.defaults.global.defaultFontColor = 'white';
                    let ctxLine,
                            ctxBar,
                            ctxPie,
                            optionsLine,
                            optionsBar,
                            optionsPie,
                            configLine,
                            configBar,
                            configPie,
                            lineChart;
                    barChart, pieChart;
                    // DOM is ready
                    $(function () {
                        drawLineChart(); // Line Chart
                        drawBarChart(); // Bar Chart
                        drawPieChart(); // Pie Chart

                        $(window).resize(function () {
                            updateLineChart();
                            updateBarChart();
                        });
                    })
                </script>
                </body>

                </html>