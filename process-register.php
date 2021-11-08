    <?php
    include("lib_db.php");

    $fullname = $_POST['fullname'];
    $email = $_POST['email-user'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $phone = $_POST['number-phone'];

    if (empty($_POST['fullname'])) {
        echo "
                <script type='text/javascript'>
                    window.alert('Bạn chưa nhập fullname');
                    window.location.href='./register.php';
                </script>

            ";
    } elseif (empty($_POST['email-user'])) {
        echo "
                <script type='text/javascript'>
                    window.alert('Bạn chưa nhập email');
                    window.location.href='./register.php';
                </script>

            ";
    } elseif (empty($_POST['username'])) {
        echo "
                <script type='text/javascript'>
                    window.alert('Bạn chưa nhập username');
                    window.location.href='./register.php';
                </script>

            ";
    } elseif (empty($_POST['password'])) {
        echo "
                <script type='text/javascript'>
                    window.alert('Bạn chưa nhập password');
                    window.location.href='./register.php';
                </script>

            ";
    } elseif (empty($_POST['number-phone'])) {
        echo "
                <script type='text/javascript'>
                    window.alert('Bạn chưa nhập phone');
                    window.location.href='./register.php';
                </script>

            ";;
    }

    $sql = "SELECT *
                    FROM grab_user
                    WHERE username = '" . $username . "'
            ";
    $result_user = select_list($sql);

    $dem = 0;
    foreach ($result_user as $item) {
        if ($item["username"] == $username) {
            $dem++;
        }
    }
    if ($dem != 0) {
        echo "
                <script type='text/javascript'>
                    window.alert('Tên đăng nhập tồn tại');
                    window.location.href='./register.php';
                </script>

            ";
    } else {
        $sql = "
                INSERT INTO `grab_user` (`fullname`, `email`, `username`, `password`, `phone`) 
                VALUES ('" . $fullname . "', '" . $email . "', '" . $username . "', '" . $password . "', '" . $phone . "')";
        $ret = exec_update($sql);
        echo "
                <script type='text/javascript'>
                    window.alert('Bạn đã đăng kí thành công');
                    window.location.href='./login.php';
                </script>

            ";
    }; ?>
