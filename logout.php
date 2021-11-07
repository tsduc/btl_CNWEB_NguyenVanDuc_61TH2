    <?php
    include("lib_db.php");
    $sql = "truncate table account_login;";
    $ret = exec_update($sql);
    echo "
                <script type='text/javascript'>
                    window.location.href='login.php';
                </script>

            ";
    ?>
