<%-- 
    Document   : login
    Created on : Sep 16, 2023, 3:04:59 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
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
    </head>
    <body>
        <div class="wrapper">
            <div class="close"><a href="home.jsp">ｘ</a></div>
            <div class="form-box login">
                <h2>Đăng nhập</h2>
                <c:if test="${requestScope.LoginError != null}">
                    <h5 style="color: red">${requestScope.LoginError}</h5>
                </c:if>
                <form action="login" method="post">
                    <div class="input-box">
                        <input type="text" name="username">
                        <label>Tên tài khoản</label>
                    </div>
                    <div class="input-box">
                        <input type="password" name="password">
                        <label>Mật khẩu</label>
                    </div>
                    <div class="remember-forgot">
                        <label><input type="checkbox" name="remember_me">Nhớ mật khẩu</label>
                        <a href="forgot">Quên mật khẩu</a>
                    </div>
                    <button type="submit" class="btn">Đăng nhập</button>
                    <div class="have_register">
                        <p>Bạn chưa có tài khoản? <a href="register.jsp" class="register-link">Đăng kí</a></p>
                        <p>${requestScope.error}</p>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>

