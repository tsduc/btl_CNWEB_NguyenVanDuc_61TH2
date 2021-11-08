    <?php
    include("lib_db.php");
    session_start();
    session_unset();
    $sql = "truncate table account_login;";
    $ret = exec_update($sql);
    echo "
                <script type='text/javascript'>
                    window.location.href='./login.php';
                </script>

            ";
    ?>
