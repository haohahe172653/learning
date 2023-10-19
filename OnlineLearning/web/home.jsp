<%-- 
    Document   : home
    Created on : Sep 12, 2023, 5:37:10 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>DoCode</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicon -->
        <link href="img/icon_07_06.png" rel="icon">
        <link rel="web icon" type="png" href="img/mu.png"/>

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">


        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/homeStyle.css" rel="stylesheet">

    </head>

    <body>


        <!-- Navbar Start -->
        <jsp:include page="header.jsp"></jsp:include>
            <!-- Navbar End -->


            <!-- Carousel Start -->
            <div class="container-fluid p-0 mb-5">
                <div class="owl-carousel header-carousel position-relative">
                    <div class="owl-carousel-item position-relative">
                        <img class="img-fluid" src="img/silver_grey1.jpg" alt="">
                        <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(24, 29, 56, .7);">
                            <div class="container">
                                <div class="row justify-content-start">
                                    <div class="col-sm-10 col-lg-8">
                                        <h5 class="text-primary text-uppercase mb-3 animated slideInDown"></h5>
                                        <h1 class="display-3 text-white animated slideInDown">Nơi phù hợp để bạn bắt đầu học lập trình</h1>
                                        <p class="fs-5 text-white mb-4 pb-2">Code, code nữa, code mãi</p>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>   
                </div>
            </div>
            <!-- Carousel End -->


            <!-- Service Start -->

            <div class="container-xxl py-5">
                <h4>Các khoá học gợi ý</h4>
                <div class="container"><br>         
                    <div class="row g-4">            
                        <div class="col-lg-3 col-sm-6 wow fadeInUp">                
                            <div class="service-item text-center pt-3">
                                <div class="p-4" style="cursor: pointer">
                                    <a href="detail?cId=3">
                                        <i class="text-primary mb-4"><img src="img/C++.jpg"/></i>
                                        <h5 class="mb-3">Lập trình hướng đối tượng với C++</h5>
                                        <p>Khóa học lập trình C++ cơ bản cho người mới bắt đầu. Khóa học này sẽ cung cấp những kiến...</p>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6 wow fadeInUp">
                            <div class="service-item text-center pt-3">
                                <div class="p-4" style="cursor: pointer">
                                    <a href="detail?cId=1">
                                        <i class="text-primary mb-4"><img src="img/C.jpg"/></i>
                                        <h5 class="mb-3">C cơ bản</h5><br>
                                        <p>Khóa học lập trình C cho người mới bắt đầu. Khóa học này sẽ cung cấp những kiến thức cơ bản...</p>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6 wow fadeInUp">

                            <div class="service-item text-center pt-3">
                                <div class="p-4" style="cursor: pointer">
                                    <a href="detail?cId=4">
                                        <i class="text-primary mb-4"><img src="img/javaoop.jpg"/></i>
                                        <h5 class="mb-3">Java cơ bản</h5><br>
                                        <p>Khóa học lập trình Java cơ bản cho người mới bắt đầu, khóa học này sẽ là nền tảng...</p>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6 wow fadeInUp">
                            <div class="service-item text-center pt-3">
                                <div class="p-4" style="cursor: pointer">
                                    <a href="listAll">
                                        <i class="fa fa-3x fa-plus text-primary mb-4"></i>
                                        <h5 class="mb-3">See more</h5>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Service End -->


            <!-- About Start -->
            <div class="container-xxl py-5">
                <div class="container">
                    <div class="row g-5">
                        <div class="col-lg-6 wow fadeInUp" style="min-height: 400px;">
                            <div class="position-relative h-100">
                                <img class="img-fluid position-absolute w-100 h-100" src="img/about.jpg" alt="" style="object-fit: cover;">
                            </div>
                        </div>
                        <div class="col-lg-6 wow fadeInUp" >
                            <h6 class="section-title bg-white text-start text-primary pe-3">About Us</h6>
                            <h1 class="mb-4">Welcome to bLEARNING</h1>
                            <p class="mb-4">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>
                            <p class="mb-4">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo magna dolore erat amet</p>
                            <div class="row gy-2 gx-4 mb-4">
                                <div class="col-sm-6">
                                    <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Skilled Instructors</p>
                                </div>
                                <div class="col-sm-6">
                                    <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Online Classes</p>
                                </div>
                                <div class="col-sm-6">
                                    <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>International Certificate</p>
                                </div>
                                <div class="col-sm-6">
                                    <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Skilled Instructors</p>
                                </div>
                                <div class="col-sm-6">
                                    <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Online Classes</p>
                                </div>
                                <div class="col-sm-6">
                                    <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>International Certificate</p>
                                </div>
                            </div>
                            <a class="btn btn-primary py-3 px-5 mt-2" href="about.jsp">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- About End -->


            <!-- Categories Start -->
            <div class="container-xxl py-5 category">
                <div class="container">
                    <div class="text-center wow fadeInUp" >
                        <h6 class="section-title bg-white text-center text-primary px-3">Categories</h6>
                        <h1 class="mb-5">Courses Categories</h1>
                    </div>
                    <div class="row g-3">
                        <div class="col-lg-7 col-md-6">
                            <div class="row g-3">
                                <div class="col-lg-12 col-md-12 wow zoomIn" >
                                    <a class="position-relative d-block overflow-hidden" href="">
                                        <img class="img-fluid" src="img/cat-1.jpg" alt="">
                                        <div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style="margin: 1px;">
                                            <h5 class="m-0">Web Design</h5>
                                            <small class="text-primary">49 Courses</small>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-6 col-md-12 wow zoomIn" >
                                    <a class="position-relative d-block overflow-hidden" href="">
                                        <img class="img-fluid" src="img/cat-2.jpg" alt="">
                                        <div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style="margin: 1px;">
                                            <h5 class="m-0">Graphic Design</h5>
                                            <small class="text-primary">49 Courses</small>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-lg-6 col-md-12 wow zoomIn" >
                                    <a class="position-relative d-block overflow-hidden" href="">
                                        <img class="img-fluid" src="img/cat-3.jpg" alt="">
                                        <div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style="margin: 1px;">
                                            <h5 class="m-0">Video Editing</h5>
                                            <small class="text-primary">49 Courses</small>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-6 wow zoomIn" style="min-height: 350px;">
                            <a class="position-relative d-block h-100 overflow-hidden" href="">
                                <img class="img-fluid position-absolute w-100 h-100" src="img/cat-4.jpg" alt="" style="object-fit: cover;">
                                <div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style="margin:  1px;">
                                    <h5 class="m-0">Online Marketing</h5>
                                    <small class="text-primary">49 Courses</small>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Categories Start -->


            <!-- Courses Start -->
            <div class="container-xxl py-5">
                <div class="container">
                    <div class="text-center wow fadeInUp">
                        <h6 class="section-title bg-white text-center text-primary px-3">Courses</h6>
                        <h1 class="mb-5">Popular Courses</h1>
                    </div>
                    <div class="row g-4 justify-content-center">
                        <div class="col-lg-4 col-md-6 wow fadeInUp">
                            <div class="course-item bg-light">
                                <div class="position-relative overflow-hidden">
                                    <img class="img-fluid" src="img/course-1.jpg" alt="">
                                    <div class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4">
                                        <a href="#" class="flex-shrink-0 btn btn-sm btn-primary px-3 border-end" style="border-radius: 30px 0 0 30px;">Read More</a>
                                        <a href="#" class="flex-shrink-0 btn btn-sm btn-primary px-3" style="border-radius: 0 30px 30px 0;">Join Now</a>
                                    </div>
                                </div>
                                <div class="text-center p-4 pb-0">
                                    <h3 class="mb-0">Miễn phí</h3>
                                    <div class="mb-3">
                                        <small class="fa fa-star text-primary"></small>
                                        <small class="fa fa-star text-primary"></small>
                                        <small class="fa fa-star text-primary"></small>
                                        <small class="fa fa-star text-primary"></small>
                                        <small class="fa fa-star text-primary"></small>
                                        <small>(123)</small>
                                    </div>
                                    <h5 class="mb-4">Web Design & Development Course for Beginners</h5>
                                </div>
                                <div class="d-flex border-top">
                                    <small class="flex-fill text-center border-end py-2"><i class="fa fa-user-tie text-primary me-2"></i>John Doe</small>
                                    <small class="flex-fill text-center border-end py-2"><i class="fa fa-clock text-primary me-2"></i>1.49 Hrs</small>
                                    <small class="flex-fill text-center py-2"><i class="fa fa-user text-primary me-2"></i>30 Students</small>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 wow fadeInUp">
                            <div class="course-item bg-light">
                                <div class="position-relative overflow-hidden">
                                    <img class="img-fluid" src="img/course-2.jpg" alt="">
                                    <div class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4">
                                        <a href="#" class="flex-shrink-0 btn btn-sm btn-primary px-3 border-end" style="border-radius: 30px 0 0 30px;">Read More</a>
                                        <a href="#" class="flex-shrink-0 btn btn-sm btn-primary px-3" style="border-radius: 0 30px 30px 0;">Join Now</a>
                                    </div>
                                </div>
                                <div class="text-center p-4 pb-0">
                                    <h3 class="mb-0">Miễn phí</h3>
                                    <div class="mb-3">
                                        <small class="fa fa-star text-primary"></small>
                                        <small class="fa fa-star text-primary"></small>
                                        <small class="fa fa-star text-primary"></small>
                                        <small class="fa fa-star text-primary"></small>
                                        <small class="fa fa-star text-primary"></small>
                                        <small>(123)</small>
                                    </div>
                                    <h5 class="mb-4">Web Design & Development Course for Beginners</h5>
                                </div>
                                <div class="d-flex border-top">
                                    <small class="flex-fill text-center border-end py-2"><i class="fa fa-user-tie text-primary me-2"></i>John Doe</small>
                                    <small class="flex-fill text-center border-end py-2"><i class="fa fa-clock text-primary me-2"></i>1.49 Hrs</small>
                                    <small class="flex-fill text-center py-2"><i class="fa fa-user text-primary me-2"></i>30 Students</small>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 wow fadeInUp">
                            <div class="course-item bg-light">
                                <div class="position-relative overflow-hidden">
                                    <img class="img-fluid" src="img/course-3.jpg" alt="">
                                    <div class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4">
                                        <a href="#" class="flex-shrink-0 btn btn-sm btn-primary px-3 border-end" style="border-radius: 30px 0 0 30px;">Read More</a>
                                        <a href="#" class="flex-shrink-0 btn btn-sm btn-primary px-3" style="border-radius: 0 30px 30px 0;">Join Now</a>
                                    </div>
                                </div>
                                <div class="text-center p-4 pb-0">
                                    <h3 class="mb-0">Miễn phí</h3>
                                    <div class="mb-3">
                                        <small class="fa fa-star text-primary"></small>
                                        <small class="fa fa-star text-primary"></small>
                                        <small class="fa fa-star text-primary"></small>
                                        <small class="fa fa-star text-primary"></small>
                                        <small class="fa fa-star text-primary"></small>
                                        <small>(123)</small>
                                    </div>
                                    <h5 class="mb-4">Web Design & Development Course for Beginners</h5>
                                </div>
                                <div class="d-flex border-top">
                                    <small class="flex-fill text-center border-end py-2"><i class="fa fa-user-tie text-primary me-2"></i>John Doe</small>
                                    <small class="flex-fill text-center border-end py-2"><i class="fa fa-clock text-primary me-2"></i>1.49 Hrs</small>
                                    <small class="flex-fill text-center py-2"><i class="fa fa-user text-primary me-2"></i>30 Students</small>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Courses End -->


            <!-- Team Start -->
            <!--            <div class="container-xxl py-5">
                            <div class="container">
                                <div class="text-center wow fadeInUp">
                                    <h6 class="section-title bg-white text-center text-primary px-3">Instructors</h6>
                                    <h1 class="mb-5">Expert Instructors</h1>
                                </div>
                                <div class="row g-4">
                                    <div class="col-lg-3 col-md-6 wow fadeInUp">
                                        <div class="team-item bg-light">
                                            <div class="overflow-hidden">
                                                <img class="img-fluid" src="img/team-1.jpg" alt="">
                                            </div>
                                            <div class="position-relative d-flex justify-content-center" style="margin-top: -23px;">
                                                <div class="bg-light d-flex justify-content-center pt-2 px-1">
                                                    <a class="btn btn-sm-square btn-primary mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                                    <a class="btn btn-sm-square btn-primary mx-1" href=""><i class="fab fa-twitter"></i></a>
                                                    <a class="btn btn-sm-square btn-primary mx-1" href=""><i class="fab fa-instagram"></i></a>
                                                </div>
                                            </div>
                                            <div class="text-center p-4">
                                                <h5 class="mb-0">Instructor Name</h5>
                                                <small>Designation</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 wow fadeInUp">
                                        <div class="team-item bg-light">
                                            <div class="overflow-hidden">
                                                <img class="img-fluid" src="img/team-2.jpg" alt="">
                                            </div>
                                            <div class="position-relative d-flex justify-content-center" style="margin-top: -23px;">
                                                <div class="bg-light d-flex justify-content-center pt-2 px-1">
                                                    <a class="btn btn-sm-square btn-primary mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                                    <a class="btn btn-sm-square btn-primary mx-1" href=""><i class="fab fa-twitter"></i></a>
                                                    <a class="btn btn-sm-square btn-primary mx-1" href=""><i class="fab fa-instagram"></i></a>
                                                </div>
                                            </div>
                                            <div class="text-center p-4">
                                                <h5 class="mb-0">Instructor Name</h5>
                                                <small>Designation</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 wow fadeInUp">
                                        <div class="team-item bg-light">
                                            <div class="overflow-hidden">
                                                <img class="img-fluid" src="img/team-3.jpg" alt="">
                                            </div>
                                            <div class="position-relative d-flex justify-content-center" style="margin-top: -23px;">
                                                <div class="bg-light d-flex justify-content-center pt-2 px-1">
                                                    <a class="btn btn-sm-square btn-primary mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                                    <a class="btn btn-sm-square btn-primary mx-1" href=""><i class="fab fa-twitter"></i></a>
                                                    <a class="btn btn-sm-square btn-primary mx-1" href=""><i class="fab fa-instagram"></i></a>
                                                </div>
                                            </div>
                                            <div class="text-center p-4">
                                                <h5 class="mb-0">Instructor Name</h5>
                                                <small>Designation</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6 wow fadeInUp">
                                        <div class="team-item bg-light">
                                            <div class="overflow-hidden">
                                                <img class="img-fluid" src="img/team-4.jpg" alt="">
                                            </div>
                                            <div class="position-relative d-flex justify-content-center" style="margin-top: -23px;">
                                                <div class="bg-light d-flex justify-content-center pt-2 px-1">
                                                    <a class="btn btn-sm-square btn-primary mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                                    <a class="btn btn-sm-square btn-primary mx-1" href=""><i class="fab fa-twitter"></i></a>
                                                    <a class="btn btn-sm-square btn-primary mx-1" href=""><i class="fab fa-instagram"></i></a>
                                                </div>
                                            </div>
                                            <div class="text-center p-4">
                                                <h5 class="mb-0">Instructor Name</h5>
                                                <small>Designation</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                         Team End -->


            <!-- Testimonial Start -->
            <div class="container-xxl py-5 wow fadeInUp">
                <div class="container">
                    <div class="text-center">
                        <h6 class="section-title bg-white text-center text-primary px-3">Testimonial</h6>
                        <h1 class="mb-5">Our Students Say!</h1>
                    </div>
                    <div class="owl-carousel testimonial-carousel position-relative">
                        <div class="testimonial-item text-center">
                            <img class="border rounded-circle p-2 mx-auto mb-3" src="img/testimonial-1.jpg" style="width: 80px; height: 80px;">
                            <h5 class="mb-0">Client Name</h5>
                            <p>Profession</p>
                            <div class="testimonial-text bg-light text-center p-4">
                                <p class="mb-0">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>
                            </div>
                        </div>
                        <div class="testimonial-item text-center">
                            <img class="border rounded-circle p-2 mx-auto mb-3" src="img/testimonial-2.jpg" style="width: 80px; height: 80px;">
                            <h5 class="mb-0">Client Name</h5>
                            <p>Profession</p>
                            <div class="testimonial-text bg-light text-center p-4">
                                <p class="mb-0">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>
                            </div>
                        </div>
                        <div class="testimonial-item text-center">
                            <img class="border rounded-circle p-2 mx-auto mb-3" src="img/testimonial-3.jpg" style="width: 80px; height: 80px;">
                            <h5 class="mb-0">Client Name</h5>
                            <p>Profession</p>
                            <div class="testimonial-text bg-light text-center p-4">
                                <p class="mb-0">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>
                            </div>
                        </div>
                        <div class="testimonial-item text-center">
                            <img class="border rounded-circle p-2 mx-auto mb-3" src="img/testimonial-4.jpg" style="width: 80px; height: 80px;">
                            <h5 class="mb-0">Client Name</h5>
                            <p>Profession</p>
                            <div class="testimonial-text bg-light text-center p-4">
                                <p class="mb-0">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Testimonial End -->


            <!-- Footer Start -->
        <jsp:include page="footer.jsp" />
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
        <script src="js/script.js"></script>
    </body>

</html>