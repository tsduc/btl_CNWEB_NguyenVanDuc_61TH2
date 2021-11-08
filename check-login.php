    <?php
    include("lib_db.php");
    session_start();
    $name = $_POST['username'];
    $pass = $_POST['password'];

    $sql = "SELECT * FROM grab_admin WHERE username='" . $name . "' AND password = '" . $pass . "' ";
    $result_admin = select_one($sql);
    $sql  = "SELECT * FROM grab_user WHERE username='" . $name . "' AND password = '" . $pass . "' ";
    $result_user = select_one($sql);

    if (!empty($result_admin['username'])) {
        $acc = "insert into account_login (username, password) values('" . $name . "', '" . $pass . "')";
        $ret = exec_update($acc);
        $_SESSION["username"] = "$name";
        echo "
                <script type='text/javascript'>
                    window.alert('Xin chào admin!');
                    window.location.href='./admin.php';
                </script>
            ";
    } elseif (!empty($result_user['username'])) {
        $acc = "insert into account_login (username, password) values('" . $name . "', '" . $pass . "')";
        $ret = exec_update($acc);
        $_SESSION["username"] = "$name";
        echo "
                <script type='text/javascript'>
                    window.alert('Chào mừng bạn đến với điện máy xanh!');
                    window.location.href='./index.php';
                </script>

            ";
    } else {
        echo "
                <script type='text/javascript'>
                    window.alert('Bạn đã sai tên đăng nhập hoặc mật khẩu');
                    window.location.href='./login.php';
                </script>
            ";
    }; ?>