<%-- 
    Document   : register
    Created on : Sep 16, 2023, 3:05:27 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/loginStyle.css"/>
        <!--        <link rel="stylesheet" href="css/bootstrap.min.css"/>-->
    </head>
    <body>
        <div class="wrapper2">
            <div class="close"><a href="home.jsp">ｘ</a></div>
            <div class="form-box register">
                <h2 style="margin-top: 30px;">Đăng kí tài khoản</h2>
                <form class="two-column"action="register" method="post">

                    <div class="column">
                        <div class="input-box">
                            <input type="text" required name="username">
                            <label>Tên tài khoản</label>
                        </div>
                        <div class="input-box">
                            <input type="email" required name="email">
                            <label>Email</label>
                        </div>
                        <div class="input-box">
                            <input type="password" required name="password">
                            <label>Mật khẩu</label>
                        </div>
                        <div class="input-box">
                            <input type="password" required name="repassword">
                            <label>Nhập lại mật khẩu</label>
                        </div>
                    </div>
                    <div class="column">
                        <div class="input-box">
                            <input type="password" required name="password">
                            <label>Mật khẩu</label>
                        </div>
                        <div class="input-box">
                            <input type="password" required name="repassword">
                            <label>Nhập lại mật khẩu</label>
                        </div>
                        <div class="input-box">
                            <input type="password" required name="password">
                            <label>Mật khẩu</label>
                        </div>
                        <div class="input-box">
                            <input type="password" required name="repassword">
                            <label>Nhập lại mật khẩu</label>
                        </div>
                    </div>


                </form>

                <button type="submit" class="btn">Đăng kí</button>

                <div class="have_register">
                    <p>Đã có tài khoản? <a href="login.jsp" class="login-link">Login</a><br><p style="color: red">${requestScope.register_fail}</p></p>

                </div>

            </div>
        </div>


    </body>
</html>

