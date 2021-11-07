<?php
function clearLoggedUser()
{
    unset($_SESSION['username']);
}
function getLoggedUser()
{
    $user = isset($_SESSION['username']) ? $_SESSION['username'] : 0;
    return $user;
}
function setLoggedUser($user)
{
    $_SESSION['username'] = $user;
}

// function checkLoggedUser()
// {
//     $user = getLoggedUser();
//     if (!$user) {
//         echo "Ban phai dang nhap <a href=\"login.php\">Login</a>";
//         exit();
//     }
//     return $user;
// }

function checkLoggedUser($x)
{
    if (!isset($x)) {
        echo "Ban phai dang nhap <a href=\"login.php\">Login</a>";
        exit();
    }
    return $x;
}
