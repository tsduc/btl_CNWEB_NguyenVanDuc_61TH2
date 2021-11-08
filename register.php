<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <link rel="shortcut icon" href="images/logodmx.png"> -->
    <title>Đăng ký</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/all.min.css">
    <link rel="stylesheet" href="css/fontawesome.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css" type="text/css">
    <link rel="stylesheet" href="css/register.css">

</head>

<body>
    <div class="sing-up">
        <img src="images/Capturedmx.PNG" alt="">
        <h1>Đăng ký tài khoản</h1>
        <form action="process-register.php" method="post">
            <div class="use-pass">
                <label>Fullname: </label><input type="text" name="fullname" placeholder="Fullname ">
            </div>
            <div class="use-pass">
                <label>Email: </label><input type="email" name="email-user" placeholder="Email ">
            </div>
            <div class="use-pass">
                <label>Username: </label><input type="text" name="username" placeholder="Name ">
            </div>
            <div class="use-pass">
                <label>Password: </label><input type="password" name="password" placeholder="Pass ">
            </div>
            <div class="use-pass">
                <label>Phone: </label><input type="text" name="number-phone" placeholder="Phone ">
            </div>
            <div class="sub-registri">
                <button type="submit">Đăng ký</button>
                <a href="./login.php">bạn đã có tài khoản?</a>
            </div>
        </form>
    </div>



    <script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="js/owl.carousel.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/login.js"></script>
</body>

</html>