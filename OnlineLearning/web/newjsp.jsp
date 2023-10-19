<%-- 
    Document   : newjsp
    Created on : Sep 20, 2023, 8:21:39 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>

<html lang="en-US" class="static dir-ltr codecamp" dir="ltr">
<head>
    <meta charset="utf-8" />
    <meta name="description" content="The complete C++ Programing Course for Beginners, this course teaches you the fundamentals of a programing language. After completed, you will be able to move from the basics to more advanced course." />
    <meta name="author" content="CodeLearn" />
    <link rel="shortcut icon" href="/Themes/TheCodeCampPro/Resources/Images/content/codelearn-icon.png" />
    <link rel="apple-touch-icon" href="/Themes/TheCodeCampPro/Resources/Images/content/codelearn-icon.png" />
    <link rel="canonical" href="/learning/cpp-for-beginners" />
    <link rel="alternate" hreflang="vi" href="https://codelearn.io/learning/cpp-for-beginners" />
    <link rel="alternate" hreflang="en-US" href="https://codelearn.io/learning/cpp-for-beginners" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1,user-scalable=0" />

    <title>C++ for Beginners</title>

    <!-- META FOR FACEBOOK -->
    <meta property="og:title" content="C++ for Beginners" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="https://codelearn.io/learning/cpp-for-beginners" />
    <meta property="og:description" content="The complete C++ Programing Course for Beginners, this course teaches you the fundamentals of a programing language. After completed, you will be able to move from the basics to more advanced course." />
    <meta property="og:image" content="/CodeCamp/CodeCamp/Upload/Course/bf4dca390c5742bda4dbf6344e859eb9.jpg" />
    <meta property="fb:app_id" content="540883753774783" />
    <!-- END META FOR FACEBOOK -->
    <!-- Twitter Card -->
    <meta name="twitter:card" content="summary">
    <meta name="twitter:url" content="https://codelearn.io/learning/cpp-for-beginners">
    <meta name="twitter:title" content="C++ for Beginners">
    <meta name="twitter:description" content="The complete C++ Programing Course for Beginners, this course teaches you the fundamentals of a programing language. After completed, you will be able to move from the basics to more advanced course.">
    <meta name="twitter:image" content="/CodeCamp/CodeCamp/Upload/Course/bf4dca390c5742bda4dbf6344e859eb9.jpg" />
    <meta name="twitter:site" content="@Codelearn.io">
    <meta name="twitter:creator" content="@Codelearn.io">
    <!-- End Twitter Card -->

    <meta name="google-signin-client_id" content="16523143533-ovv9lj8c7i8sv36sv3lguom0msmdk8ah.apps.googleusercontent.com" />

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-141685371-1"></script>
    

    <script>
        var isGetNotification = true;
        var isNotCountComment = false;

        var s3Storage = '';
        var resourcePath = '/Themes/TheCodeCampPro/Resources';
        var strAuthen = '';
        var faceId = '540883753774783';
        var gitHubId = '7ffd47a5f8cf15f50fbf';
        var isLoadedFacebook = 'False';
        if (strAuthen == '') {
            var googleId = '16523143533-ovv9lj8c7i8sv36sv3lguom0msmdk8ah.apps.googleusercontent.com';
        }

        if (strAuthen == '') {
            var LOGIN_VALIDATOR, SIGNUP_VALIDATOR;
            function openModal(tab) {

                $('#loginModal a[data-target="#' + tab + '"]').tab('show');
                switch (tab) {
                    case 'login':
                        $(".btn--facebook").attr('title', 'Login with Facebook');
                        $(".btn--google").attr('title', 'Login with Google');
                        $("#loginModal .header-card").text('Login your account');
                        SIGNUP_VALIDATOR && SIGNUP_VALIDATOR.resetForm();
                        break;
                    case 'signup':
                        $(".btn--facebook").attr('title', 'Continue with Facebook');
                        $(".btn--google").attr('title', 'Continue with Google');
                        $("#loginModal .header-card").text('Register new account');
                        LOGIN_VALIDATOR && LOGIN_VALIDATOR.resetForm();
                        break;
                }
            }
        }

        if ('https://codelearn.io' == location.origin.toLocaleLowerCase()) {
            window.dataLayer = window.dataLayer || [];
            function gtag() { dataLayer.push(arguments); }

            gtag('js', new Date());
            gtag('config', 'UA-141685371-1');
            gtag('config', 'USER_MANAGEMENT');
            gtag('set', { 'user_id': 'CodeLearn-Anonymous' });

            // Measure Google Ads conversions
            gtag('event', 'conversion', {
                'send_to': 'USER_MANAGEMENT/CodeLearn-Anonymous',
            });

            window['GoogleAnalyticsObject'] = 'ga';
            window['ga'] = window['ga'] || function () {
                (window['ga'].q = window['ga'].q || []).push(arguments)
            };
            ga('set', 'userId', 'CodeLearn-Anonymous' );
        }

        window.fbAsyncInit = function () {
            FB.init({
                appId: faceId,
                xfbml: true,
                version: 'v11.0'
            });
            FB.AppEvents.logPageView();
            isLoadedFacebook = true;
        };

        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) { return; }
            js = d.createElement(s); js.id = id;
            js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));

    </script>

    <!-- Facebook Pixel Code -->
    <script>
        !function (f, b, e, v, n, t, s) {
            if (f.fbq) return; n = f.fbq = function () {
                n.callMethod ?
                    n.callMethod.apply(n, arguments) : n.queue.push(arguments)
            };
            if (!f._fbq) f._fbq = n; n.push = n; n.loaded = !0; n.version = '2.0';
            n.queue = []; t = b.createElement(e); t.async = !0;
            t.src = v; s = b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t, s)
        }(window, document, 'script',
            'https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '700313553710795');
        fbq('track', 'PageView');
    </script>
    <!-- End Facebook Pixel Code -->

    <script async src="https://chat.codelearn.io/lib/app.js"></script>

    <link href="/Themes/TheCodeCampPro/Resources/App/Styles/course/detail.min.css?fileHash=cdMPNf8YoBEz7eNZxrBeOQ%3d%3d" rel="stylesheet" type="text/css" />
<link href="/Themes/TheCodeCampPro/Resources/App/Styles/comment.min.css?fileHash=o37SIXEDzJ24L2%2fzs6ai3A%3d%3d" rel="stylesheet" type="text/css" />
<link href="/Themes/TheCodeCampPro/Resources/Lib/bootstrap-tour/bootstrap-tour.css?fileHash=XQWoQ%2fnn1D9zKIY2xgv0Aw%3d%3d" rel="stylesheet" type="text/css" />
<link href="/Themes/TheCodeCampPro/Resources/App/Styles/common/progress-bar-cicle.min.css?fileHash=Xh2FT%2fRaM8a1uDGZ39di6Q%3d%3d" rel="stylesheet" type="text/css" />
<link href="/Themes/TheCodeCampPro/Resources/Lib/bootstrap/bootstrap.min.css?fileHash=8rjGbW6Fb7jriolaJRgx6Q%3d%3d" rel="stylesheet" type="text/css" />
<link href="/Themes/TheCodeCampPro/Resources/Lib/font-codelearn/styles.min.css?fileHash=Fcy%2bP75Hy6R1tENpGsYhuA%3d%3d" rel="stylesheet" type="text/css" />
<link href="/Themes/TheCodeCampPro/Resources/App/Styles/common.min.css?fileHash=%2boM9XVmTIrYZTc4%2bdijLIg%3d%3d" rel="stylesheet" type="text/css" />
<link href="/Themes/TheCodeCampPro/Resources/App/Styles/Site.min.css?fileHash=t1ajJmBrxIovLzvHm3kztg%3d%3d" rel="stylesheet" type="text/css" />
<link href="/Themes/TheCodeCampPro/Resources/App/Styles/login-modal.min.css?fileHash=rlM3QaAQ1jcvU5Ba6GQ7%2bA%3d%3d" rel="stylesheet" type="text/css" />
<script src="/Themes/TheCodeCampPro/Resources/Lib/jquery/jquery.min.js?fileHash=ejlXWurjHXHGOnyj1CERxA%3d%3d" type="text/javascript"></script>
<script src="/Themes/TheCodeCampPro/Resources/Lib/bootstrap/bootstrap.min.js?fileHash=BMhIUumTexQqxzwoW4lbhQ%3d%3d" type="text/javascript"></script>
<script src="/Themes/TheCodeCampPro/Resources/Lib/jquery.ui/jquery-ui.min.js?fileHash=7GjoMRjpJr0czELNBpQ7NQ%3d%3d" type="text/javascript"></script>
<script src="/Themes/TheCodeCampPro/Resources/Lib/jquery.validation/1.16.0/jquery.validate.min.js?fileHash=SCipQ20WB6bjXDishBIK5Q%3d%3d" type="text/javascript"></script>
<script src="/Themes/TheCodeCampPro/Resources/Lib/jquery.validation/1.16.0/additional-methods.min.js?fileHash=2bqpIYgwDgMM8FILx3oCEw%3d%3d" type="text/javascript"></script>
<script src="/Themes/TheCodeCampPro/Resources/Lib/anchor.min.js?fileHash=2YFzz7PCZCETtkH%2fHWniRg%3d%3d" type="text/javascript"></script>
<script src="/Themes/TheCodeCampPro/Resources/Lib/moment/moment.min.js?fileHash=iZm4tdB%2bnGB3rFrGvJQpaA%3d%3d" type="text/javascript"></script>
<script src="/Themes/TheCodeCampPro/Resources/Lib/moment/moment-with-locales.min.js?fileHash=p5qHEKNRfkl4RqypF5%2bNgQ%3d%3d" type="text/javascript"></script>
<script src="https://www.google.com/recaptcha/api.js?render=6LcMTLMUAAAAAFLLyTIvjCj7k0bAG8ZqjnaTTrQE" type="text/javascript"></script>
<script src="/Themes/TheCodeCampPro/Resources/App/Scripts/login-form.min.js?fileHash=MycNr7QlVbV0hqn22cttug%3d%3d" type="text/javascript"></script>
<script async="" defer="" src="https://apis.google.com/js/platform.js?onload=googleSignIn" type="text/javascript"></script>
<script src="/Themes/TheCodeCampPro/Resources/App/Scripts/common.min.js?fileHash=MH%2bL8ZqFMUWQ1BAjSAFuZw%3d%3d" type="text/javascript"></script>

            <script type="text/javascript">
                var token = 'yS5gSMp7FFREnxHoo6h902DgAPmCJ9qxJ_QvHnjTu9pusAga3YJCgepPs1_Ey3ahlQbWUUa_JAPm_XcI1-5fUvkLJrZ1ZCE63e-yD-1S-Ug1';
                var courseId =522901;
                var isAuthen = 'False' == 'True';
                var permalink = 'cpp-for-beginners';
                var userReisted = 'False' == 'True';
                var coursePercent = 0;
                var isRequiredCode = 'False' == 'True' ;
            </script>


</head>
<body class="hold-transition site-body skin-sku-light layout-top-nav learning ">
    

<script>
        //<![CDATA[
        var LANG_CURRENT = "en";
        const CurrentUserId = 0;
        const NOTTIFY_USER_ACCESSKEY ='nottifyAccessKey';
        const ACCESSKEY ='AccessKey';
        const IS_ADMIN = false;
        
        PKLService.init({ strVersion: '918413560', strLangCode: 'en', IsHasLogin: false, url: location.origin });
        //]]>
</script>

        <div id="layout-navigation" class="group ">
            <div class="zone zone-navigation">
<article class="widget-navigation widget-menu-widget widget">
    
<header class="navbar site-header">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="wrap-site-logo">
        <a title="CodeLearn" href="/">
            <img alt="CodeLearn nền tảng dạy lập trình trực tuyến" class="site-logo" src="/Themes/TheCodeCampPro/Resources/Images/new-header/codelearn-logo.png">
            <img alt="CodeLearn lập trình mỗi ngày" class="site-logo-mobile" src="/Themes/TheCodeCampPro/Resources/Images/new-header/codelearn-mobile-logo.png">
        </a>
    </div>
    <div class="wrap-right-header">
        <input type="checkbox" id="mobile-menu-cb" name="mobile-menu-cb" />
        <label class="hamburger-button" for="mobile-menu-cb">
            <span class="hamburger-icon"></span>
        </label>
        <label class="hamburger-menu-mask" for="mobile-menu-cb"></label>
        <nav class="site-menu">
            <ul class="menu menu-main-menu">
                
                
                
<li class="current"><a href="/learning">Learning</a>
</li>
<li><a href="/training">Training</a>
</li>
<li><a href="/fights">Fights</a>
</li>
<li><a href="/challenge">Challenge</a>
</li>
<li><a href="/evaluating">Evaluating</a>
</li>
<li><a href="/discussion">Discussion</a>
</li>
<li><a href="/leaderboard">Leaders</a>
</li>
<li><a href="/sharing">Chia sẻ</a>
</li>
                
            </ul>
            <div class="dropdown dropdown-language">
                <a href="#" class="dropdown-toggle btn-dark btn--language " data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" title="English">
                    <img alt="English" class="button-language btn-img flag" src="/Themes/TheCodeCampPro/Resources/Images/en.png" />
                </a>
                <ul class="dropdown-menu">
                        <li>
                            <span class="change-lang" data-link="/language/setLanguageLocal?name=en&redirectUrl=">
                                <img alt="en" class="icon-language" src="/Themes/TheCodeCampPro/Resources/Images/en.png">
                                English
                            </span>
                        </li>
                        <li>
                            <span class="change-lang" data-link="/language/setLanguageLocal?name=vn&redirectUrl=">
                                <img alt="vn" class="icon-language" src="/Themes/TheCodeCampPro/Resources/Images/vn.png">
                                Tiếng Việt
                            </span>
                        </li>
                </ul>
            </div>
        </nav>
        <!-- User Menu -->
            <!-- Menu Toggle Button -->
    <ul class="site-user-menu">
                <li>
                    <button id="login-header" class="btn btn-login" data-toggle="modal" data-target="#loginModal" onclick="openModal('login')">Login</button>
                    <button class="btn" data-toggle="modal" data-target="#loginModal" onclick="openModal('signup')">Register</button>
                </li>

    </ul>

    </div>
</header>
</article>
<article class="widget-navigation widget-bread-cumps-widget widget">
    
    <nav aria-label="breadcrumb">
        <div class="container">
            <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Home</a></li>
                    <li class="breadcrumb-item"><a href="/learning/cpp-for-beginners">Learning</a></li>
            </ol>
        </div>
    </nav>
<!-- Your customer chat code -->
<div class="fb-customerchat"
     attribution=setup_tool
     page_id="2254662768188202"
     greeting_dialog_display="hide">
</div>
</article></div>
        </div>
    <main id="layout-main" class="group">
        <div id="layout-content" class="group">
                                        <div id="content" class="group">
                    <div class="zone zone-content">        <div class="course-head">
            <div class="overlay"></div>
            <div class="container">
                <div class="course-head-content">
                    <div class="head">
                        <h1 class="title">
                            C++ for Beginners
                        </h1>
                        <div class="actions">

                        </div>
                    </div>
                    <div class="main-content">
                        <div class="title-wrap">
                            <div class="title-wrap__rate-and-author">
                                <div class="author">
                                    <img src="/CodeCamp/CodeCamp/Upload/Avatar/a76638850ecc4722b76d255e9cdd462f.jpg" alt="TuanLQ7" />
                                    <a href="/profile/3488" title="TuanLQ7">TuanLQ7</a>
                                </div>
                                <div class="enroll-students">
                                    <i style="font-size: 13px" class="cl-icon-users-alt"></i>
141296                                    students                                </div>
                                <!--Rate-->
                                <div id="container-rate" class="rate view-only">
                                    <span class="star-rating">
                                        <span style="width:92.0%"></span>
                                        <span class="vote-rate">
                                                <span value="1" class="star"><i class="cl-icon-favorite-full"></i></span>
                                                <span value="2" class="star"><i class="cl-icon-favorite-full"></i></span>
                                                <span value="3" class="star"><i class="cl-icon-favorite-full"></i></span>
                                                <span value="4" class="star"><i class="cl-icon-favorite-full"></i></span>
                                                <span value="5" class="star"><i class="cl-icon-favorite-full"></i></span>

                                        </span>
                                    </span>
                                    <span class="text-rate">
                                        4.6 (1261  votes)
                                    </span>
                                </div>
                            </div>
                            <p class="title-wrap__desc" title="The complete C++ Programing Course for Beginners, this course teaches you the fundamentals of a programing language. After completed, you will be able to move from the basics to more advanced course.">The complete C++ Programing Course for Beginners, this course teaches you the fundamentals of a programing language. After completed, you will be able to move from the basics to more advanced course.</p>
                        </div>
                        <div class="infor-wrap">
                            <div class="infor-wrap__item">
                                <span class="left">
                                    <span class="icon-wrap"><i class="cl-icon-clock"></i></span>
                                    Time
                                </span>
                                <span class="right">
                                    20 hours
                                </span>
                            </div>
                            <div class="infor-wrap__item">
                                <span class="left">
                                    <span class="icon-wrap"><i class="cl-icon-layer-group"></i></span>
                                    Number of tasks
                                </span>
                                <span class="right">
                                    89
                                </span>
                            </div>
                            <div class="infor-wrap__item">
                                <span class="left">
                                    <span class="icon-wrap"><i class="cl-icon-graduation-cap"></i></span>
                                    Reward
                                </span>
                                <span class="right">
                                    Certificate
                                </span>
                            </div>
                        </div>
                        <div class="actions-wrap">
                                    <span class="text-price free">Free</span>
                                    <div class="register" id="button-register">
                                            <a href="javascript:void(0)" data-toggle="modal" data-target="#loginModal" onclick="openModal('login')" id="not-auth">Please login to continue</a>
                                    </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="course-detail" class="container">
            <div class="container">
                <div class="tmp">

                </div>


                <div id="exTab1" class="">
                    <ul class="nav nav-pills col-sm-12">

                        <li class="hide extab course-lesson">
                            <a href="#course-lesson" data-toggle="tab">Lecture/Video</a>
                        </li>

                        <li class="active extab">
                            <a href="#1a" data-toggle="tab">Tasks</a>
                        </li>

                        <li class="hide extab course-practice">
                            <a href="#course-practice" data-toggle="tab">Exam</a>
                        </li>

                            <li class="extab">
                                <a id="course-objective" href="#2a" data-toggle="tab">Objective</a>
                            </li>


                    </ul>
                    <a href="" class="create-class pull-right hidden">+ CREATE CLASS</a>
                    <div class="tab-content clearfix">

                        <div class="tab-pane hide list-task row" id="course-lesson">
                        </div>

                        <div class="tab-pane hide list-task row" id="course-practice">
                            
                        </div>

                        <div class="tab-pane active list-task row" id="1a">
                                <div class="group-detail-course-item col-md-6">
                                    <div class="course-name">
                                        <div class="lession">
                                            <img src="/Themes/TheCodeCampPro/Resources/Images/code-learn/bg-Lesson.png">
                                            <div class="title">
                                                <h3 class="active" title="First C++ Program">First C++ Program</h3>
                                            </div>
                                        </div>
                                        <div class="contain-task">
                                                    <a title="C&#224;i đặt m&#244;i trường lập tr&#236;nh C++ | Codelearn" href="/learning/cpp-for-beginners/581636" class="circle allow-active  ">1</a>
                                                    <a title="Viết chương tr&#236;nh Hello World đầu ti&#234;n trong C++ | Codelearn" href="/learning/cpp-for-beginners/521807" class="circle allow-active  ">2</a>
                                                    <a title="B&#224;i tập C++ cơ bản: c&#226;u lệnh cout | Codelearn" href="/learning/cpp-for-beginners/522251" class="circle allow-active  ">3</a>
                                                    <a title="B&#224;i tập C++ cơ bản: t&#237;nh tổng hai số | Codelearn" href="/learning/cpp-for-beginners/522103" class="circle allow-active  ">4</a>
                                                    <a title="B&#224;i tập C++ cơ bản: t&#237;nh tổng hai số (tiếp) | Codelearn" href="/learning/cpp-for-beginners/522294" class="circle allow-active  ">5</a>
                                                    <a title="Comment trong C++ | Codelearn" href="/learning/cpp-for-beginners/550690" class="circle allow-active  ">6</a>
                                                    <a title="B&#224;i tập về cộng hai số trong C++ | Codelearn" href="/learning/cpp-for-beginners/522520" class="circle allow-active  ">7</a>
                                                    <a title="B&#224;i tập C++ cơ bản: t&#237;nh hiệu 2 số | Codelearn" href="/learning/cpp-for-beginners/530589" class="circle allow-active  ">8</a>
                                                    <a title="B&#224;i tập C++ cơ bản: hiển thị th&#244;ng tin tr&#234;n nhiều d&#242;ng | Codelearn" href="/learning/cpp-for-beginners/522694" class="circle allow-active  ">9</a>
                                                    <a title="B&#224;i tập C++ cơ bản: t&#237;nh tổng, hiệu, t&#237;ch v&#224; thương 2 số | Codelearn" href="/learning/cpp-for-beginners/522743" class="circle allow-active  ">10</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="group-detail-course-item col-md-6">
                                    <div class="course-name">
                                        <div class="lession">
                                            <img src="/Themes/TheCodeCampPro/Resources/Images/code-learn/bg-Lesson.png">
                                            <div class="title">
                                                <h3 class="active" title="Variables and Data Types">Variables and Data Types</h3>
                                            </div>
                                        </div>
                                        <div class="contain-task">
                                                    <a title="Biến v&#224; c&#225;ch khai b&#225;o biến trong C++ | Codelearn" href="/learning/cpp-for-beginners/522879" class="circle allow-active  ">11</a>
                                                    <a title="B&#224;i tập C++ cơ bản: khai b&#225;o biến v&#224; t&#237;nh hiệu | Codelearn" href="/learning/cpp-for-beginners/524566" class="circle allow-active  ">12</a>
                                                    <a title="B&#224;i tập C++ cơ bản: khai b&#225;o biến v&#224; t&#237;nh tổng, hiệu, t&#237;ch, thương | Codelearn" href="/learning/cpp-for-beginners/522890" class="circle allow-active  ">13</a>
                                                    <a title="Kiểu dữ liệu chuỗi k&#253; tự (string) trong C++ | Codelearn" href="/learning/cpp-for-beginners/522921" class="circle allow-active  ">14</a>
                                                    <a title="B&#224;i tập C++ cơ bản: khai b&#225;o v&#224; hiển thị biến kiểu string v&#224; int | Codelearn" href="/learning/cpp-for-beginners/522926" class="circle allow-active  ">15</a>
                                                    <a title="Kiểu số thực (float v&#224; double) trong C++ | Codelearn" href="/learning/cpp-for-beginners/523544" class="circle allow-active  ">16</a>
                                                    <a title="B&#224;i tập C++ cơ bản: t&#237;nh diện t&#237;ch h&#236;nh chữ nhật | Codelearn" href="/learning/cpp-for-beginners/531190" class="circle allow-active  ">17</a>
                                                    <a title="Kiểu k&#253; tự (char) trong C++ | Codelearn" href="/learning/cpp-for-beginners/565429" class="circle allow-active  ">18</a>
                                                    <a title="B&#224;i tập C++ cơ bản: chuyển k&#253; tự th&#224;nh k&#253; tự tiếp theo trong bảng chữ c&#225;i | Codelearn" href="/learning/cpp-for-beginners/567354" class="circle allow-active  ">19</a>
                                                    <a title="C&#225;c kiểu dữ liệu số nguy&#234;n trong C++ | Codelearn" href="/learning/cpp-for-beginners/530673" class="circle allow-active  ">20</a>
                                                    <a title="Kiểu bool trong C++ | Codelearn" href="/learning/cpp-for-beginners/567651" class="circle allow-active  ">21</a>
                                                    <a title="C&#225;c kiểu dữ liệu trong C++ | Codelearn" href="/learning/cpp-for-beginners/645306" class="circle allow-active  ">22</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="group-detail-course-item col-md-6">
                                    <div class="course-name">
                                        <div class="lession">
                                            <img src="/Themes/TheCodeCampPro/Resources/Images/code-learn/bg-Lesson.png">
                                            <div class="title">
                                                <h3 class="active" title="Basic Operators &amp; Input">Basic Operators &amp; Input</h3>
                                            </div>
                                        </div>
                                        <div class="contain-task">
                                                    <a title="Nhập xuất dữ liệu cơ bản trong C++ | Codelearn" href="/learning/cpp-for-beginners/523600" class="circle allow-active  ">23</a>
                                                    <a title="B&#224;i tập C++ cơ bản: nhập t&#234;n v&#224; địa chỉ sau đ&#243; hiển thị th&#244;ng tin vừa nhập | Codelearn" href="/learning/cpp-for-beginners/531205" class="circle allow-active  ">24</a>
                                                    <a title="B&#224;i tập C++ cơ bản: t&#237;nh tổng 2 số được nhập v&#224;o từ b&#224;n ph&#237;m | Codelearn" href="/learning/cpp-for-beginners/524000" class="circle allow-active  ">25</a>
                                                    <a title="B&#224;i tập C++ cơ bản: t&#237;nh diện t&#237;ch h&#236;nh chữ nhật | Codelearn" href="/learning/cpp-for-beginners/526107" class="circle allow-active  ">26</a>
                                                    <a title="To&#225;n tử chia lấy phần dư trong C++ | Codelearn" href="/learning/cpp-for-beginners/550830" class="circle allow-active  ">27</a>
                                                    <a title="B&#224;i tập C++ cơ bản: T&#237;nh tổng, hiệu, t&#237;ch, thương của 2 số | Codelearn" href="/learning/cpp-for-beginners/524125" class="circle allow-active  ">28</a>
                                                    <a title="B&#224;i tập C++ cơ bản: hiển thị tuổi của một người sau 15 năm | Codelearn" href="/learning/cpp-for-beginners/526680" class="circle allow-active  ">29</a>
                                                    <a title="B&#224;i tập C++ cơ bản: ho&#225;n đổi gi&#225; trị 2 biến | Codelearn" href="/learning/cpp-for-beginners/528350" class="circle allow-active  ">30</a>
                                                    <a title="B&#224;i tập C++ cơ bản: t&#237;nh chu vi của một h&#236;nh tr&#242;n | Codelearn" href="/learning/cpp-for-beginners/559547" class="circle allow-active  ">31</a>
                                                    <a title="B&#224;i tập C++ cơ bản: hiển thị k&#253; tự tiếp theo trong bảng chữ c&#225;i | Codelearn" href="/learning/cpp-for-beginners/567743" class="circle allow-active  ">32</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="group-detail-course-item col-md-6">
                                    <div class="course-name">
                                        <div class="lession">
                                            <img src="/Themes/TheCodeCampPro/Resources/Images/code-learn/bg-Lesson.png">
                                            <div class="title">
                                                <h3 class="active" title="Selection statements">Selection statements</h3>
                                            </div>
                                        </div>
                                        <div class="contain-task">
                                                    <a title="Mệnh đề if else trong C++ | Codelearn" href="/learning/cpp-for-beginners/526802" class="circle allow-active  ">33</a>
                                                    <a title="B&#224;i tập C++ cơ bản: kiểm tra một số l&#224; số nguy&#234;n &#226;m hay nguy&#234;n dương | Codelearn" href="/learning/cpp-for-beginners/527003" class="circle allow-active  ">34</a>
                                                    <a title="B&#224;i tập C++ cơ bản: so s&#225;nh gi&#225; trị 2 số được nhập v&#224;o từ b&#224;n ph&#237;m | Codelearn" href="/learning/cpp-for-beginners/527075" class="circle allow-active  ">35</a>
                                                    <a title="B&#224;i tập C++ cơ bản: nhập v&#224; so s&#225;nh biến kiểu string | Codelearn" href="/learning/cpp-for-beginners/527269" class="circle allow-active  ">36</a>
                                                    <a title="Mệnh đề if-else v&#224; to&#225;n tử AND trong C++ | Codelearn" href="/learning/cpp-for-beginners/528674" class="circle allow-active  ">37</a>
                                                    <a title="B&#224;i tập C++ cơ bản: t&#236;m số lớn nhất trong 3 số | Codelearn" href="/learning/cpp-for-beginners/527174" class="circle allow-active  ">38</a>
                                                    <a title="B&#224;i tập C++ cơ bản: kiểm tra gi&#225; trị một số c&#243; nằm trong một đoạn cho trước | Codelearn" href="/learning/cpp-for-beginners/567972" class="circle allow-active  ">39</a>
                                                    <a title="B&#224;i tập C++ cơ bản: kiểm tra xem điểm nhập v&#224;o c&#243; hợp lệ hay kh&#244;ng | Codelearn" href="/learning/cpp-for-beginners/528711" class="circle allow-active  ">40</a>
                                                    <a title="B&#224;i tập C++ cơ bản: kiểm xem 3 số c&#243; tạo th&#224;nh d&#227;y tăng hoặc giảm hay kh&#244;ng | Codelearn" href="/learning/cpp-for-beginners/528772" class="circle allow-active  ">41</a>
                                                    <a title="C&#226;u lệnh switch case trong C++ | Codelearn" href="/learning/cpp-for-beginners/551442" class="circle allow-active  ">42</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="group-detail-course-item col-md-6">
                                    <div class="course-name">
                                        <div class="lession">
                                            <img src="/Themes/TheCodeCampPro/Resources/Images/code-learn/bg-Lesson.png">
                                            <div class="title">
                                                <h3 class="active" title="Loops: for">Loops: for</h3>
                                            </div>
                                        </div>
                                        <div class="contain-task">
                                                    <a title="V&#242;ng lặp for trong C++ | Codelearn" href="/learning/cpp-for-beginners/528806" class="circle allow-active  ">43</a>
                                                    <a title="B&#224;i tập C++ cơ bản: hiển thị ra m&#224;n h&#236;nh c&#225;c số từ a tới b | Codelearn" href="/learning/cpp-for-beginners/529267" class="circle allow-active  ">44</a>
                                                    <a title="B&#224;i tập về v&#242;ng lặp trong C++: t&#237;nh tổng c&#225;c số từ n về -5 | Codelearn" href="/learning/cpp-for-beginners/568373" class="circle allow-active  ">45</a>
                                                    <a title="B&#224;i tập về v&#242;ng lặp trong C++: t&#237;nh tổng c&#225;c số từ a tới b | Codelearn" href="/learning/cpp-for-beginners/529274" class="circle allow-active  ">46</a>
                                                    <a title="B&#224;i tập về v&#242;ng lặp trong C++: t&#237;nh tổng c&#225;c số lẻ từ 0 tới n | Codelearn" href="/learning/cpp-for-beginners/568409" class="circle allow-active  ">47</a>
                                                    <a title="B&#224;i tập về v&#242;ng lặp trong C++: hiển thị ra m&#224;n h&#236;nh c&#225;c số chia hết cho 3 từ a tới b | Codelearn" href="/learning/cpp-for-beginners/529286" class="circle allow-active  ">48</a>
                                                    <a title="B&#224;i tập về v&#242;ng lặp trong C++: t&#237;nh n giai thừa | Codelearn" href="/learning/cpp-for-beginners/529299" class="circle allow-active  ">49</a>
                                                    <a title="B&#224;i tập C++ cơ bản: hiển thị ra m&#224;n h&#236;nh c&#225;c ước của một số | Codelearn" href="/learning/cpp-for-beginners/568438" class="circle allow-active  ">50</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="group-detail-course-item col-md-6">
                                    <div class="course-name">
                                        <div class="lession">
                                            <img src="/Themes/TheCodeCampPro/Resources/Images/code-learn/bg-Lesson.png">
                                            <div class="title">
                                                <h3 class="active" title="Loops: while and do-while">Loops: while and do-while</h3>
                                            </div>
                                        </div>
                                        <div class="contain-task">
                                                    <a title="V&#242;ng lặp while trong C++ | Codelearn" href="/learning/cpp-for-beginners/568910" class="circle allow-active  ">51</a>
                                                    <a title="B&#224;i tập C++ cơ bản: đếm số ước của một số được nhập v&#224;o từ b&#224;n ph&#237;m | Codelearn" href="/learning/cpp-for-beginners/569091" class="circle allow-active  ">52</a>
                                                    <a title="B&#224;i tập về v&#242;ng lặp trong C++: t&#237;nh lũy thừa bậc b của a (a mũ b) | Codelearn" href="/learning/cpp-for-beginners/529819" class="circle allow-active  ">53</a>
                                                    <a title="B&#224;i tập C++ cơ bản: t&#237;nh tổng c&#225;c số chia hết cho 3 v&#224; 5 trong đoạn [a, b] | Codelearn" href="/learning/cpp-for-beginners/569184" class="circle allow-active  ">54</a>
                                                    <a title="B&#224;i tập C++ cơ bản về c&#226;u lệnh break | Codelearn" href="/learning/cpp-for-beginners/530429" class="circle allow-active  ">55</a>
                                                    <a title="B&#224;i tập về c&#226;u lệnh continue trong C++ | Codelearn" href="/learning/cpp-for-beginners/530482" class="circle allow-active  ">56</a>
                                                    <a title="V&#242;ng lặp do-while trong C++ | Codelearn" href="/learning/cpp-for-beginners/559782" class="circle allow-active  ">57</a>
                                                    <a title="B&#224;i tập về v&#242;ng lặp do-while trong C++ | Codelearn" href="/learning/cpp-for-beginners/569295" class="circle allow-active  ">58</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="group-detail-course-item col-md-6">
                                    <div class="course-name">
                                        <div class="lession">
                                            <img src="/Themes/TheCodeCampPro/Resources/Images/code-learn/bg-Lesson.png">
                                            <div class="title">
                                                <h3 class="active" title="Array">Array</h3>
                                            </div>
                                        </div>
                                        <div class="contain-task">
                                                    <a title="Mảng (array) trong C++ | Codelearn" href="/learning/cpp-for-beginners/531806" class="circle allow-active  ">59</a>
                                                    <a title="B&#224;i tập về mảng trong C++: t&#236;m phần tử lớn nhất trong mảng | Codelearn" href="/learning/cpp-for-beginners/531832" class="circle allow-active  ">60</a>
                                                    <a title="B&#224;i tập về mảng trong C++: t&#237;nh tổng của phần tử đầu ti&#234;n v&#224; cuối c&#249;ng trong mảng | Codelearn" href="/learning/cpp-for-beginners/534569" class="circle allow-active  ">61</a>
                                                    <a title="B&#224;i tập về mảng trong C++: hiển thị ra m&#224;n h&#236;nh c&#225;c số chẵn trong mảng | Codelearn" href="/learning/cpp-for-beginners/532113" class="circle allow-active  ">62</a>
                                                    <a title="B&#224;i tập C++ cơ bản: đếm số phần tử c&#243; gi&#225; trị bằng k trong mảng | Codelearn" href="/learning/cpp-for-beginners/532139" class="circle allow-active  ">63</a>
                                                    <a title="B&#224;i tập C++ cơ bản: t&#237;nh tổng c&#225;c phần tử c&#243; gi&#225; trị lớn hơn 0 trong mảng | Codelearn" href="/learning/cpp-for-beginners/533868" class="circle allow-active  ">64</a>
                                                    <a title="B&#224;i tập C++ cơ bản: hiển thị c&#225;c phần tử nằm trong đoạn [0, 10] trong mảng | Codelearn" href="/learning/cpp-for-beginners/569314" class="circle allow-active  ">65</a>
                                                    <a title="B&#224;i tập C++ cơ bản: sắp xếp mảng theo thứ tự tăng dần | Codelearn" href="/learning/cpp-for-beginners/532169" class="circle allow-active  ">66</a>
                                                    <a title="Mảng 2 chiều trong C++ | Codelearn" href="/learning/cpp-for-beginners/542172" class="circle allow-active  ">67</a>
                                                    <a title="B&#224;i tập về mảng 2 chiều trong C++ | Codelearn" href="/learning/cpp-for-beginners/569765" class="circle allow-active  ">68</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="group-detail-course-item col-md-6">
                                    <div class="course-name">
                                        <div class="lession">
                                            <img src="/Themes/TheCodeCampPro/Resources/Images/code-learn/bg-Lesson.png">
                                            <div class="title">
                                                <h3 class="active" title="String">String</h3>
                                            </div>
                                        </div>
                                        <div class="contain-task">
                                                    <a title="B&#224;i tập C++ cơ bản: hiển thị k&#253; tự thứ k trong string | Codelearn " href="/learning/cpp-for-beginners/532311" class="circle allow-active  ">69</a>
                                                    <a title="B&#224;i tập về x&#226;u trong C++: đếm số lần xuất hiện của một k&#253; tự trong một x&#226;u | Codelearn" href="/learning/cpp-for-beginners/532375" class="circle allow-active  ">70</a>
                                                    <a title="B&#224;i tập xử l&#253; chuỗi trong C++: t&#236;m vị tr&#237; xuất hiện của một k&#253; tự trong một x&#226;u | Codelearn" href="/learning/cpp-for-beginners/569346" class="circle allow-active  ">71</a>
                                                    <a title="B&#224;i tập về xử l&#253; x&#226;u trong C++: chuyển c&#225;c k&#253; tự in thường sang in hoa | Codelearn" href="/learning/cpp-for-beginners/532483" class="circle allow-active  ">72</a>
                                                    <a title="B&#224;i tập về xử l&#253; x&#226;u trong C++: chuyển c&#225;c k&#253; tự in hoa sang in thường | Codelearn" href="/learning/cpp-for-beginners/532501" class="circle allow-active  ">73</a>
                                                    <a title="B&#224;i tập C++ cơ bản: đếm số k&#253; tự in hoa trong một x&#226;u | Codelearn" href="/learning/cpp-for-beginners/569396" class="circle allow-active  ">74</a>
                                                    <a title="B&#224;i tập C++ cơ bản: thay đổi gi&#225; trị của c&#225;c k&#253; tự trong x&#226;u | Codelearn" href="/learning/cpp-for-beginners/533935" class="circle allow-active  ">75</a>
                                                    <a title="B&#224;i tập C++ cơ bản: hiển thị ra m&#224;n h&#236;nh c&#225;c k&#253; tự từ A tới Z" href="/learning/cpp-for-beginners/535666" class="circle allow-active  ">76</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="group-detail-course-item col-md-6">
                                    <div class="course-name">
                                        <div class="lession">
                                            <img src="/Themes/TheCodeCampPro/Resources/Images/code-learn/bg-Lesson.png">
                                            <div class="title">
                                                <h3 class="active" title="Function">Function</h3>
                                            </div>
                                        </div>
                                        <div class="contain-task">
                                                    <a title="T&#236;m hiểu về h&#224;m trong C++ | Codelearn" href="/learning/cpp-for-beginners/648481" class="circle allow-active  ">77</a>
                                                    <a title="B&#224;i tập về h&#224;m trong C++: viết h&#224;m hiển thị ra m&#224;n h&#236;nh c&#225;c số chia hết cho 3 v&#224; kh&#244;ng chia hết cho 5 | Codelearn" href="/learning/cpp-for-beginners/650959" class="circle allow-active  ">78</a>
                                                    <a title="H&#224;m c&#243; tham số trong C++ | Codelearn" href="/learning/cpp-for-beginners/652453" class="circle allow-active  ">79</a>
                                                    <a title="B&#224;i tập về h&#224;m trong C++: viết h&#224;m chuyển một x&#226;u từ in hoa sang in thường." href="/learning/cpp-for-beginners/532604" class="circle allow-active  ">80</a>
                                                    <a title="B&#224;i tập về h&#224;m trong C++: viết h&#224;m sắp xếp mảng cho trước." href="/learning/cpp-for-beginners/532839" class="circle allow-active  ">81</a>
                                                    <a title="H&#224;m c&#243; gi&#225; trị trả về v&#224; h&#224;m void trong C++ | Codelearn" href="/learning/cpp-for-beginners/570072" class="circle allow-active  ">82</a>
                                                    <a title="B&#224;i tập C++ cơ bản: viết h&#224;m trả về phần tử lớn nhất trong mảng." href="/learning/cpp-for-beginners/532817" class="circle allow-active  ">83</a>
                                                    <a title="B&#224;i tập C++ cơ bản: viết h&#224;m đếm số phần tử lẻ trong mảng." href="/learning/cpp-for-beginners/570175" class="circle allow-active  ">84</a>
                                                    <a title="B&#224;i tập về h&#224;m trong C++: viết h&#224;m hiển thị những x&#226;u c&#243; độ d&#224;i lớn hơn 3 trong mảng | Codelearn" href="/learning/cpp-for-beginners/570230" class="circle allow-active  ">85</a>
                                                    <a title="B&#224;i tập C++ cơ bản: viết h&#224;m trả về chu vi h&#236;nh tr&#242;n | Codelearn" href="/learning/cpp-for-beginners/570315" class="circle allow-active  ">86</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="group-detail-course-item col-md-6">
                                    <div class="course-name">
                                        <div class="lession">
                                            <img src="/Themes/TheCodeCampPro/Resources/Images/code-learn/bg-Lesson.png">
                                            <div class="title">
                                                <h3 class="active" title="Recursive Function">Recursive Function</h3>
                                            </div>
                                        </div>
                                        <div class="contain-task">
                                                    <a title="H&#224;m đệ quy trong C++ | Codelearn" href="/learning/cpp-for-beginners/534072" class="circle allow-active  ">87</a>
                                                    <a title="B&#224;i tập h&#224;m đệ quy C++: viết h&#224;m đệ quy trả về tổng c&#225;c số lẻ từ 1 tới n" href="/learning/cpp-for-beginners/646258" class="circle allow-active  ">88</a>
                                                    <a title="B&#224;i tập h&#224;m đệ quy C++: viết h&#224;m đệ quy trả về tổng c&#225;c phần tử trong mảng | Codelearn" href="/learning/cpp-for-beginners/534084" class="circle allow-active  ">89</a>
                                        </div>
                                    </div>
                                </div>
                            
                        </div>

                            <div class="tab-pane" id="2a">
                                <div id="objective">
                                    <p><h3>Overview of C++:</h3>
<ul>
<li>The C ++ language was developed by <strong>Bjarne Stroustrup</strong> in the late 1970s.</li>
<li>C++ is considered a middle-level language, combining the characteristics and features of high-level and low-level languages.</li>
<li>C++ can be used for embedded programming, system programming, or applications, games ...</li>
<li>C++ is a "omnidirectional" language. That is, it has a C-like structure and has an extremely important feature that is object-oriented.</li>
<li>C++ is one of the most popular programming languages in the world.</li>
</ul>
<hr />
<h3><strong>Application of C++ language:</strong></h3>
<p>Particularly important role of the two programming languages ​​C and C++ is for basic programming learning. Because this is a middle-level programming language. Most information technology training schools in Vietnam use these two languages ​​as their basic subjects.</p>
<h4><strong>Big companies all need C++.</strong></h4>
<p>To help you see the impact of the C++ programming language. Let's take a look at big tech companies using C++.</p>
<p><img width="619" height="581" alt="" src="/Media/Default/Users/TuanLQ7/HaiZuka/table.png" style="display: block; margin-left: auto; margin-right: auto;" /></p>
<p>As you can see, C++ is used by many large websites on the server side. Because C++ is an extremely good performance programming language. C++ provides much faster processing speed than many high-level programming languages.</p>
<h4><strong>Create games with C++.</strong></h4>
<p><strong> <img width="512" height="323" alt="" src="/Media/Default/Users/TuanLQ7/HaiZuka/cpp_Game.png" style="display: block; margin-left: auto; margin-right: auto;" /> </strong></p>
<p>C++ is a good choice for developing 3D gaming platforms. Allows optimizing the management of resources and smooth in multi-player platform on the same network - multi-player. C++ allows deep intervention into the CPU and hardware. That is also an important factor in the development of game engines.</p>
<h4><strong>Web browser.</strong></h4>
<p><strong> <img width="650" height="366" alt="" src="/Media/Default/Users/TuanLQ7/HaiZuka/cpp_web.jpg" style="display: block; margin-left: auto; margin-right: auto;" /> </strong></p>
<p>Speed ​​and reliability are a must for web browsers. C++ will then be the preferred language to use. A part of the Google chrome browser and some open source web browsers such as Moliza Firefox, the Mozilla Thunderbird email application has the contribution of the C++ language.</p>
<h4><strong>Calculation and graphics applications.</strong></h4>
<p><strong> <img width="584" height="330" alt="" src="/Media/Default/Users/TuanLQ7/HaiZuka/cpp_graph.png" style="display: block; margin-left: auto; margin-right: auto;" /> </strong></p>
<p>The C++ programming language allows deployment of applications that require real-time elements. Such as 3D simulation applications, high-performance image processing or sensor applications on mobile devices. Or applications processing, 3D simulation, effects and animation are built in C++.</p>
<h4><strong>Database management software</strong></h4>
<p>C and C++ are used for the MySQL database management system. This is one of the most popular database management systems. It is the backbone for many software of large enterprises such as Google, Yahoo, Youtube, Wikipedia, ...</p>
<h4><strong>Operating system</strong></h4>
<p>C++ is an integral part of many popular operating systems such as Apple OSX and MS Windows.</p>
<h4><strong>Business software</strong></h4>
<p>C++ is often used in large enterprise applications. Where performance and speed are always at the forefront.</p>
<h4><strong>The compiler</strong></h4>
<p>A variety of compilers including Apple C++, Bloodshed Dev-C++, Clang C++ and MINGW make all use the C++ programming language. Not only that, C and C++ are also the foundation languages ​​that support the construction of new programming languages ​​such as C #, Java, PHP, Verilog, ...</p>
<hr />
<h3><strong>What will students get in the course:</strong></h3>
<ul>
<li>Understand how to use the C++ language:
<ul>
<li>Know how to add libraries.</li>
<li>Know how to declare variables.</li>
<li>Know how to import and export data.</li>
</ul>
</li>
<li>Understand how iteration works (In C++ as well as other languages):
<ul>
<li>For loop.</li>
<li>While loop, do-while.</li>
</ul>
</li>
<li>Understand the basic structure of a programming language:
<ul>
<li>Array structure.</li>
<li>String structure.</li>
</ul>
</li>
<li>Familiarize yourself with some basic algorithms,
<ul>
<li>Know how to write functions.</li>
<li>Familiarize yourself with recursive algorithms.</li>
</ul>
</li>
</ul></p>
                                </div>
                            </div>

                        <div class="tab-pane" id="3a"></div>

                            <div class="tab-pane certification" id="4a"></div>

                    </div>
                </div>
            </div>
        </div>
        <a href="#" class="button btn-outline open-tour" title="Web Tour">Web Tour</a>
<!-- Modal support -->
<div class="modal fade" id="buy-now-support" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"></button>
                <h4 class="modal-title">Support Codelearn</h4>
            </div>

            <div class="modal-body">

                    <p>Please contact email: <a href="/cdn-cgi/l/email-protection#d7a4a2a7a7b8a5a397b4b8b3b2bbb2b6a5b9f9beb8"><span class="__cf_email__" data-cfemail="73000603031c010733101c17161f1612011d5d1a1c">[email&#160;protected]</span></a> for support.</p>


            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>


</div>
                </div>
                    </div>
    </main>
    <footer id="footer" class="group codecamp-footer">
        <div class="zone zone-footer">

<div class=" main-footer">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-md-6 introduction footer-column">
                <div class="logo-codelearn">
                    <img src="/Themes/TheCodeCampPro/Resources/Images/new-header/codelearn-logo.svg" alt="CodeLearn" />
                </div>
                <p>
                    CodeLearn is an online platform that helps users to learn, practice coding skills and join the online coding contests.
                </p>
                <a href="https://www.facebook.com/CodeLearnFanpage" title="Facebook" target="_blank" class="social-button">
                    <i class="cl-icon-facebook-f"></i>
                </a>
                <a href="https://www.youtube.com/channel/UCpt3dSDGk5fC7uU9OeFG5ig" title="Youtube" target="_blank" class="social-button">
                    <i class="cl-icon-youtube"></i>
                </a>
                <a href="https://twitter.com/codelearn_io" title="Twitter" target="_blank" class="social-button">
                    <i class="cl-icon-twitter-full"></i>
                </a>
                <a href="https://www.instagram.com/codelearn.io/" title="Instagram" target="_blank" class="social-button">
                    <i class="cl-icon-instagram"></i>
                </a>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-2 links footer-column">
                <h4>Links</h4>
                <p><a href="/learning" class="link-menu" title="Learning">Learning</a></p>
                <p><a href="/training" class="link-menu" title="Training">Training</a></p>
                <p><a href="/fights" class="link-menu" title="Fights">Fights</a></p>
                <p><a href="/game/index" class="link-menu" title="Game">Game</a></p>
            </div>

            <div class="col-xs-12 col-sm-4 col-md-2 about footer-column">
                <h4>Information</h4>
                <p><a href="/aboutus" title="About Us">About Us</a></p>
                <p><a href="/terms" title="Terms of Use">Terms of Use</a></p>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-2 help footer-column">
                <h4>Help</h4>
                <p><a href="/help" title="Help">Help</a></p>
                <p><a href="/discussion" title="Discussion">Discussion</a></p>
                <p><a href="/cdn-cgi/l/email-protection#6f1c1a1f1f001d1b2f0c000b0a030a0e1d01410600" title="Contact us">Contact us</a></p>
            </div>
        </div>
    </div>
</div>
<div class="col-xs-12 right-reserved">
    <span class="powerby">
        <img src="/Themes/TheCodeCampPro/Resources/Images/logo-fpt-footer.svg" alt="Fpt software" class="fpt-logo">
        Powered by <a href="/">CodeLearn</a>
    </span>
    <span class="copyright">&#169; 2023.</span>
    <span>All Rights Reserved. rev 8/12/2023 7:24:11 AM</span>
</div>

<!--<div class="user-display">
    <span class="user-actions"><a href="/Users/Account/LogOn?ReturnUrl=%2Flearning%2Fcpp-for-beginners" rel="nofollow">Sign In</a></span>
</div>--></div>
    </footer>

    <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="/Themes/TheCodeCampPro/Resources/Lib/bootstrap-tour/bootstrap-tour.js?fileHash=BrhF%2fcJ4S5sNQaYEXiTmHw%3d%3d" type="text/javascript"></script>
<script src="/Themes/TheCodeCampPro/Resources/App/Scripts/comment.min.js?fileHash=XvFL5LSb7fwSeOGcG0LhNg%3d%3d" type="text/javascript"></script>
<script src="/Themes/TheCodeCampPro/Resources/App/Scripts/course/rate.min.js?fileHash=YT71NRvmGLXqmLEY91oTPg%3d%3d" type="text/javascript"></script>
<script src="/Themes/TheCodeCampPro/Resources/App/Scripts/course/detail.min.js?fileHash=1V5Vv5ASogFXfC54n6lLnw%3d%3d" type="text/javascript"></script>
<script src="/Themes/TheCodeCampPro/Resources/App/Scripts/feedback/feedback.js?fileHash=tPOHDuvn6sM4snVzXGlNdg%3d%3d" type="text/javascript"></script>
            <script type="text/javascript">
        $(function () {

        var loadCommentsTrigger = {};
            $("#comments-tab").on("shown.bs.tab", function () {
            loadCommentsTrigger.loadComments();
        });
            $.UseCommentModule({
            containerSelector: "#3a",
                headerCountSelector: "#total-comments-count",
                contentId: courseId,
                loadCommentsUri: "/CodeCamp/Comment/GetComments",
                postCommentUri: "/CodeCamp/Comment/PostComment",
                toggleCommentUri: "/CodeCamp/Comment/ToggleCommentVisibility",
                postLikeCommentUri: "/Discussion/LikeCommentUri",
                trigger: loadCommentsTrigger
            });
    });
            </script>

    <script type="application/ld+json">
        {
        "@context": "http://schema.org/",
        "@type": "Product",
        "name": "C++ for Beginners" ,
        "image" : /CodeCamp/CodeCamp/Upload/Course/bf4dca390c5742bda4dbf6344e859eb9.jpg" ,
        "url" : "https://codelearn.io/learning/" ,
        "description" : "The complete C++ Programing Course for Beginners, this course teaches you the fundamentals of a programing language. After completed, you will be able to move from the basics to more advanced course.)" ,
        "aggregateRating" : {
        "@type" : "AggregateRating" ,
        "ratingValue" : "4.6" ,
        "reviewCount" : "1261" ,
        "worstRating" : 3,
        "bestRating" : 5
        },
        "offers" : {
        "@type" : "Offer" ,
        "priceCurrency" : "USD" ,
        "price" : "0" ,
        "seller" : {
        "@type" : "Organization" ,
        "name" : "Codelearn"
        },
        "url" : "https://codelearn.io/learning/cpp-for-beginners"
        }
        }
    </script>


    <!-- Load Facebook SDK for JavaScript -->
    <div id="fb-root"></div>
    <div id="chat-root"></div>
    <!-- popup login/signup -->
        <div class="modal fade modal-center" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModal">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-body login-modal">
                        <div>
                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs nav-fill" role="tablist">

                                    <li role="presentation" class="nav-item">
                                        <a class="nav-link" data-target="#login" aria-controls="login" role="tab" data-toggle="tab" onclick="openModal('login')">Login</a>
                                    </li>
                                        <li role="presentation" class="nav-item active">
                                            <a class="nav-link" data-target="#signup" aria-controls="signup" role="tab" data-toggle="tab" onclick="openModal('signup')">Register</a>
                                        </li>
                                </ul>
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <h4 class="header-card">with your social network</h4>
                                <div class="signin-options">
                                    <button class="btn btn-default btn-block btn--microsoft icon-left" onclick="window.location.replace('https://oauth.codelearn.io/Home/SignIn')" title="Login to FSoft account via Microsoft">
                                        <i class="cl-icon-windows" aria-hidden="true"></i>
                                        <span>Microsoft</span>
                                    </button>
                                    <button class="btn btn-default btn-block btn--facebook icon-left" onclick="facebookSignIn()" title="This feature is not available due to the new Facebook policy, please use forgot password function to log in with email account if you are already logged in through Facebook account!">
                                        <i class="cl-icon-facebook-f" aria-hidden="true"></i>
                                        <span>Facebook</span>
                                    </button>
                                    <button class="btn btn-default btn-block btn--google icon-left" id="googleSignIn">
                                        <i class="cl-icon-google-full" aria-hidden="true"></i>
                                        <span>Google</span>
                                    </button>
                                    <button class="btn btn-default btn-block btn--github icon-left" onclick="githubSignIn()">
                                        <i class="cl-icon-github-alt" aria-hidden="true"></i>
                                        <span>Github</span>
                                    </button>
                                </div>
                                <p class="label-or text-center">OR</p>

                                <div role="tabpanel" class="tab-pane " id="login">
                                    <form id="frmLogin">
                                        <div class="form-group">
                                            <input name="username" type="text" class="form-control" placeholder="User name" autocomplete='username' />
                                            <a href="/resend-email" title="Resend activation email" class="resend-email hidden">Resend activation email</a>
                                        </div>
                                        <div class="form-group" style="margin-bottom: 30px;">
                                            <input name="password" type="password" class="form-control" placeholder="Please enter password" autocomplete='current-password' />
                                        </div>
                                        <div class="form-button">
                                            <button type="submit" class="btn btn-default btn-block btn-blue btn-login">Login</button>
                                        </div>
                                        <div class="col-md-12 registered-forgot" role="tablist">
                                                <div class="col-md-6 text-left">
                                                        <a data-target="#signup" aria-controls="signup" role="tab" data-toggle="tab" onclick="openModal('login')">
                                                            Not a member? Register
                                                        </a>
                                                </div>
                                                <div class="col-md-6 text-right">
                                                    <a href="/forgot-password">I can't rememeber my password</a>
                                                </div>
                                        </div>
                                        <div class="col-md-12 terms-of-use">
                                            This site is protected by reCAPTCHA and <a href="/terms" target="_blank">Terms of Use</a> apply.
                                        </div>
                                    </form>
                                </div>
                                    <div role="tabpanel" class="tab-pane active" id="signup">
                                        <form id="frmSignup" method="POST" action="/">
                                            <div class="form-group">
                                                <input name="username" type="text" class="form-control" placeholder="User name" autocomplete='username' />
                                            </div>
                                            <div class="form-group">
                                                <input name="email" type="email" class="form-control" placeholder="Email" autocomplete='email' />
                                            </div>
                                            <div class="form-group">
                                                <input name="password" type="password" class="form-control" placeholder="Password" autocomplete='current-password' />
                                            </div>
                                            <div class="form-check">
                                                <div class="checkbox-area">
                                                    <input name="cbAgree" type="checkbox" value="1" class="form-check-input" id="cbAgree" data-error="#cbAgree-error" />
                                                    <label class="form-check-label" for="cbAgree">
                                                        I agree to the <a href="/terms" target="_blank">Terms and Conditions</a> of CodeLearn
                                                    </label>
                                                </div>
                                                <div id="cbAgree-error"></div>
                                            </div>
                                            <button type="submit" class="btn btn-default btn-block btn-blue btn-signup">Register</button>
                                            <div class="col-md-12 registered-forgot" style="margin-bottom: 0;">
                                                <div class="col-md-6 text-left">
                                                    <a data-target="#login" aria-controls="login" role="tab" data-toggle="tab" onclick="openModal('login')">
                                                        Already registered? Login
                                                    </a>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script>

        var siteKey = '6LcMTLMUAAAAAFLLyTIvjCj7k0bAG8ZqjnaTTrQE';
        </script>



    <!-- Facebook Pixel Code for Noscript-->
    <noscript>
        <img height="1" width="1" style="display:none" alt=""
             src="https://www.facebook.com/tr?id=700313553710795&ev=PageView&noscript=1" />
    </noscript>
</body>
</html>

