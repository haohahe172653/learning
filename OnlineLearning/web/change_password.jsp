<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Password</title>
    <link rel="stylesheet" href="css/loginStyle.css">
 
</head>
<body>
     <div class="wrapper">
            <div class="close"><a href="home_user.jsp">x</a></div>
            <div class="form-box login">
                <h2>Đổi mật khẩu</h2>
        <form method="post" action="change">
            <div class="input-box">
                        <input type="currentPassword" required>
                        <label>Mật khẩu hiện tại</label>
                    </div>
            <div class="input-box">
                        <input type="newPassword" required>
                        <label>Mật khẩu mới</label>
                    </div>
            <div class="input-box">
                        <input type="confirmPassword" required>
                        <label>Nhập lại mật khẩu mới</label>
                    </div>
            
            
            <button type="submit" class="btn">Đổi mật khẩu</button>
        </form>
</body>
</html>
