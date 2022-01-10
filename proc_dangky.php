<?php
    if(isset($_POST['btn-dangky'])) {
        $username = $_POST["username"];
        $password = $_POST["password"];
        $hoten = $_POST["hoten"];
        $diachi = $_POST["diachi"];
        $email = $_POST["email"];
        $sodienthoai = $_POST["sodienthoai"];
        // kết nối csdl
        include 'config/constants.php';
        $sql = "SELECT * FROM taikhoan WHERE Tentaikhoan = '$username'";
        $result = mysqli_query($conn, $sql);
        if(mysqli_num_rows($result) > 0){
            // tai khoản đã tồn tại
        }else{
            $sql = "SELECT * FROM khachhang WHERE Dienthoai = '$sodienthoai'";
            $result = mysqli_query($conn, $sql);
            if(mysqli_num_rows($result) > 0){
            // số điện thoại đã tồn tại
            }
        }else{
            $sql = "SELECT * FROM khachhang WHERE Email = '$email'";
            $result = mysqli_query($conn, $sql);
            if(mysqli_num_rows($result) > 0){
            // email đã tồn tại
            }
        }else{
            // insert tài khoản
            $sql1 = "INSERT INTO `taikhoan`(`Tentaikhoan`, `Matkhau`, `Capdo`, `Trangthai`) 
            VALUES ('$username','$password','3','1',)";
            $result1 = mysqli_query($conn, $sql1);
            if(mysqli_num_rows($result1) > 0){
                // lấy mã tài khoản
                $sql2 = "SELECT FROM taikhoan WHERE Tentaikhoan = $username";
                $result2 = mysqli_query($conn, $sql1);
                if(mysqli_num_rows($result2) > 0){
                    $row = mysqli_fetch_assoc($result2);
                    // inset thông tin với mã tk
                    $sql3 = "INSERT INTO `khachhang`(`Hoten`, `Diachi`, `Email`, `Dienthoai`, `Mataikhoan`) 
                    VALUES ('$hoten','$diachi','$email','$sodienthoai','$row['Mataikhoan']')"
                    $result3 = mysqli_query($conn, $sql3);
                    if(mysqli_num_rows($result3) > 0){
                        // Thêm thành công
                    }
                }
            }
        }
    }
?>