<%-- 
    Document   : login
    Created on : Sep 16, 2023, 3:04:59 PM
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
    </head>
    <body>
        <div class="wrapper">
            <div class="close"><a href="home.jsp">ｘ</a></div>
            <div class="form-box login">
                <h2>Fill your email</h2>
                <form action="forgot" method="post">
                    <div class="input-box">
                        <input type="email" name="email" required>
                        <label>Email</label>
                    </div>
                    <span>${error}</span>
                    <span>${success}</span>
                    <button type="submit" class="btn">Send</button>
                  
                </form>
            </div>
        </div>
    </body>
</html>

