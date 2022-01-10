<?php
    if(isset($_POST['btn-dangnhap'])) {
        $username = $_POST["username"];
        $password = $_POST["password"];
        // kết nối csdl
        include 'config/constants.php';
        $sql = "SELECT * FROM taikhoan WHERE Tentaikhoan = '$username'";
        $result = mysqli_query($conn, $sql);
        if(mysqli_num_rows($result) > 0){
            $row = mysqli_fetch_assoc($result);
            if($password == $row['Matkhau']){
                session_start();
                $_SESSION['LoginOK'] = true;
                $_SESSION['Level'] = $row['Capdo'];
                header("Location:Admin/index.php");
            }else{
                // sai mật khẩu
                ?>
                <script>
                    alert("Sai mật khẩu, quay lại trang chủ.");
                        window.location = "index.php";
                </script>
                <?php
            }
        }else{
            // sau tài khoản
            ?>
                <script>
                    alert("Sai tài khoản, quay lại trang chủ.");
                        window.location = "index.php";
                </script>
                <?php
        }
    }
?>