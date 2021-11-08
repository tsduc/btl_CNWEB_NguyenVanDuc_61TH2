<?php
include("lib_db.php");
session_start();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/logodmx.png">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/all.min.css">
    <link rel="stylesheet" href="css/fontawesome.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css" type="text/css">
    <link rel="stylesheet" href="css/login.css">

</head>

<body>
    <div class="login">
        <img src="images/Capturedmx.PNG" alt="">
        <h1>Đăng nhập</h1>
        <form action="check-login.php" method="post">
            <div class="use-pass">
                <label>Username: </label><input type="text" name="username" placeholder="Name ">
            </div>
            <div class="use-pass">
                <label>Password: </label><input type="password" name="password" placeholder="Pass ">
            </div>
            <div class="sub-registri">
                <button type="submit">Đăng nhập</button>
                <a href="./register.php">bạn chưa có tài khoản?</a>
            </div>
        </form>
    </div>



    <script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="js/owl.carousel.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/login.js"></script>
</body>

</html>