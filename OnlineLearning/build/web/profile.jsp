<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>User Profile</title>
        <link rel="stylesheet" href="css/profile.css"/> 
        <script>
            function enableEditMode() {
                var inputs = document.getElementsByTagName("input");
                for (var i = 0; i < inputs.length; i++) {
                    inputs[i].disabled = false;
                }
                document.getElementById("save-button").style.display = "block";
                document.getElementById("edit-button").style.display = "none";
            }
        </script>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container">
            <h1>User Profile</h1>

            <h3>User Information</h3>
            <p><strong>Username:</strong>  ${sessionScope.user.username} </p>
            <p><strong>Email:</strong>  ${sessionScope.user.email}</p>
            <form action="change_password.jsp" method="post">
                <input type="submit" value="Change password">
            </form>

            <h3>Account Detail</h3>
            <div class="userinfo">
                <form action="userprofile" method="post">
                    <label for="name">First Name:</label>
                    <input type="text" id="first_name" name="first_name" value="${sessionScope.user.firstName}" disabled>
                    <br>
                    <label for="name">Last Name:</label>
                    <input type="text" id="last_name" name="last_name" value="${sessionScope.user.lastName}" disabled>
                    <br>
                    <label for="dob">Date of Birth:</label>
                    <input type="date" id="dob" name="dob" value="${sessionScope.user.dob}" disabled>
                    <br>
                    <label for="phone">Phone:</label>
                    <input type="text" id="phone" name="phone" value="${sessionScope.user.phoneNumber}" disabled>
                    <br>
                    <input type="submit" id="save-button" value="Save" style="display: none;">
                </form>
                <button class="edit-button" id="edit-button" onclick="enableEditMode()">Change information</button>
            </div>
        </div>
    </body>
</html>