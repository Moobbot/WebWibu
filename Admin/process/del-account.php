<?php
if (isset($_POST['delId'])) {
    $id = $_POST['delId'];

    //?mở kết nối

    include 'C:\xampp\htdocs\WebWibu\config\constants.php';

    //? set câu lệnh truy vấn
    $sql = "DELETE FROM taikhoan WHERE mataikhoan='$id'";

    //? kiểm tra và thực thi câu lệnh
    if (mysqli_query($conn, $sql)) {
        echo "success";
    } else {
        echo "error";
    }
    //? đóng kết nối
    mysqli_close($conn);
}
